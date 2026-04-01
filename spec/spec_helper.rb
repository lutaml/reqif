# frozen_string_literal: true

require "reqif"
require "nokogiri"
require "canon/rspec_matchers"

# Configure Canon to ignore XML comments (lutaml-model doesn't preserve them)
# and structural whitespace (input/output formatting may differ)
Canon::Config.configure do |config|
  config.xml.match.options = {
    comments: :ignore,
    structural_whitespace: :ignore,
    attribute_order: :ignore,
  }
end

# Monkey-patch FormatPreservationRule to handle namespaces without prefix_default.
# When a namespace URI is declared with a prefix in the input (e.g., xmlns:reqif="..."),
# the preserved_input_format becomes :prefix. But if the Namespace class doesn't
# define prefix_default, we fall back to :default format to avoid an error.
module Lutaml
  module Xml
    module Decisions
      module Rules
        class FormatPreservationRule
          alias_method :original_decide, :decide
          def decide(context)
            input_format = context.preserved_input_format

            if input_format == :default
              Decision.default(
                namespace_class: context.namespace_class,
                reason: "Priority 1: Input used default format - preserve it",
              )
            elsif context.namespace_class.prefix_default.nil?
              # input_format is :prefix but prefix_default might be nil
              # Fall back to default format to avoid ArgumentError
              Decision.default(
                namespace_class: context.namespace_class,
                reason: "Priority 1: No prefix_default - use default format",
              )
            else
              Decision.prefix(
                prefix: context.namespace_class.prefix_default,
                namespace_class: context.namespace_class,
                reason: "Priority 1: Input used prefix format - preserve it",
              )
            end
          end
        end
      end
    end
  end
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

Lutaml::Model::Config.configure do |config|
  config.xml_adapter_type = :nokogiri
end
