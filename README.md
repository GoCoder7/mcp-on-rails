# MCP on Rails

MCP on Rails provides pre-configured Model Context Protocol (MCP) settings, specialized prompts, and templates for Rails development with AI assistants like Claude, GitHub Copilot, and other MCP-compatible tools.

> 🙏 **Acknowledgments**: This project is inspired by and adapted from [claude-on-rails](https://github.com/obie/claude-on-rails) by Obie Fernandez. The original prompts and swarm configuration have been restructured for broader MCP compatibility.

## Features

- 🧠 **Specialized AI Prompts** - Context-aware prompts for different Rails components (models, controllers, views, etc.)
- ⚙️ **MCP Configuration** - Ready-to-use MCP server configuration for Rails projects  
- 🚀 **Quick Setup** - One command to set up AI assistance for your Rails project
- 🔧 **Customizable** - Templates that adapt to your project structure
- 📚 **Best Practices** - Built-in Rails conventions and best practices

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mcp-on-rails'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install mcp-on-rails
```

## Usage

### Quick Setup

In your Rails project directory, run:

```bash
$ mcp-on-rails
```

This will create:
- `.mcp-on-rails/` directory with configuration and prompts
- `bin/mcp-setup` executable for project-specific setup
- MCP configuration file optimized for Rails development

### Manual Setup

You can also set up programmatically:

```ruby
require 'mcp/on/rails'

Mcp::On::Rails.setup(
  project_name: "MyRailsApp",
  project_path: "/path/to/rails/project"
)
```

### What Gets Created

```
your-rails-project/
├── .mcp-on-rails/
│   ├── mcp-config.yml      # MCP server configuration
│   ├── context.md          # Project context for AI
│   └── prompts/            # Specialized prompts for each area
│       ├── architect.md    # Overall architecture guidance
│       ├── models.md       # ActiveRecord and database
│       ├── controllers.md  # HTTP handling and routing
│       ├── views.md        # Templates and frontend
│       ├── stimulus.md     # JavaScript and Turbo
│       ├── jobs.md         # Background processing
│       ├── tests.md        # Testing strategies
│       └── devops.md       # Deployment and infrastructure
└── bin/
    └── mcp-setup          # Project setup script
```

## MCP Client Configuration

### VS Code with GitHub Copilot

1. Install the MCP extension for VS Code
2. Configure your workspace settings:

```json
{
  "mcp.configPath": ".mcp-on-rails/mcp-config.yml"
}
```

### Claude Desktop

Add to your Claude Desktop configuration:

```json
{
  "mcpServers": {
    "rails": {
      "command": "rails-mcp-server",
      "env": {
        "RAILS_ENV": "development"
      }
    }
  }
}
```

### Other MCP Clients

The generated `mcp-config.yml` is compatible with most MCP clients. Refer to your client's documentation for specific configuration steps.

## Context Areas

MCP on Rails organizes your Rails project into specialized context areas:

- **Architect** - Overall project coordination and architecture decisions
- **Models** - ActiveRecord models, migrations, database design
- **Controllers** - HTTP handling, routing, authentication, APIs
- **Views** - Templates, layouts, partials, frontend components
- **Stimulus** - JavaScript behavior, Turbo integration
- **Jobs** - Background processing, queues, scheduled tasks  
- **Tests** - Testing strategies, factories, test coverage
- **DevOps** - Deployment, infrastructure, environment configuration

Each area includes specialized prompts that help AI assistants understand the context and provide more relevant suggestions.

## Customization

After running the setup, you can customize:

1. **Project-specific prompts** - Edit files in `.mcp-on-rails/prompts/`
2. **MCP configuration** - Modify `.mcp-on-rails/mcp-config.yml`
3. **Context information** - Update `.mcp-on-rails/context.md`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/GoCoder7/mcp-on-rails.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
