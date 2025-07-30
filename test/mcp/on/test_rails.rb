# frozen_string_literal: true

require "test_helper"

module Mcp
  module On
    class TestRails < Minitest::Test
      def test_that_it_has_a_version_number
        refute_nil ::Mcp::On::Rails::VERSION
      end

      def test_setup_method_exists
        assert_respond_to ::Mcp::On::Rails, :setup
      end

      def test_generator_class_exists
        assert defined?(::Mcp::On::Rails::Generator)
      end
    end
  end
end
