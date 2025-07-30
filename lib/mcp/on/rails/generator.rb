# frozen_string_literal: true

require "erb"
require "fileutils"

module Mcp
  module On
    module Rails
      class Generator
        attr_reader :project_name, :project_path

        def initialize(project_name: nil, project_path: ".")
          @project_name = project_name || File.basename(File.expand_path(project_path))
          @project_path = File.expand_path(project_path)
        end

        def generate
          create_mcp_directory
          copy_prompts
          generate_config_file
          copy_context_file
          create_executable
          puts "✅ MCP on Rails setup completed for '#{project_name}'"
          puts "📁 Files created in: #{File.join(project_path, '.mcp-on-rails')}"
          puts "🚀 Run: ./bin/mcp-setup to configure your project"
        end

        private

        def create_mcp_directory
          mcp_dir = File.join(project_path, ".mcp-on-rails")
          FileUtils.mkdir_p(mcp_dir)
        end

        def copy_prompts
          source_prompts = File.join(templates_path, "prompts")
          target_prompts = File.join(project_path, ".mcp-on-rails", "prompts")
          FileUtils.cp_r(source_prompts, target_prompts)
        end

        def generate_config_file
          template_file = File.join(templates_path, "mcp-config.yml.erb")
          target_file = File.join(project_path, ".mcp-on-rails", "mcp-config.yml")
          
          template = ERB.new(File.read(template_file))
          content = template.result(binding)
          
          File.write(target_file, content)
        end

        def copy_context_file
          source_file = File.join(templates_path, "context.md")
          target_file = File.join(project_path, ".mcp-on-rails", "context.md")
          FileUtils.cp(source_file, target_file)
        end

        def create_executable
          bin_dir = File.join(project_path, "bin")
          FileUtils.mkdir_p(bin_dir)
          
          executable_content = <<~SCRIPT
            #!/usr/bin/env ruby
            # frozen_string_literal: true
            
            puts "🔧 Setting up MCP on Rails for #{project_name}"
            puts "📋 Configuration files are ready in .mcp-on-rails/"
            puts ""
            puts "Next steps:"
            puts "1. Configure your MCP client to use .mcp-on-rails/mcp-config.yml"
            puts "2. Use the prompts in .mcp-on-rails/prompts/ for context-aware AI assistance"
            puts "3. Customize the configuration as needed for your project"
          SCRIPT
          
          executable_path = File.join(bin_dir, "mcp-setup")
          File.write(executable_path, executable_content)
          FileUtils.chmod(0o755, executable_path)
        end

        def templates_path
          File.join(__dir__, "templates")
        end
      end
    end
  end
end
