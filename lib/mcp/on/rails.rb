# frozen_string_literal: true

require_relative "rails/version"
require_relative "rails/generator"

module Mcp
  module On
    # Main module for MCP on Rails gem
    # Provides setup functionality for Rails projects with MCP configuration
    module Rails
      class Error < StandardError; end

      def self.setup(project_name: nil, project_path: ".")
        Generator.new(project_name: project_name, project_path: project_path).generate
      end
    end
  end
end
