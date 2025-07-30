## [Unreleased]

## [0.1.0] - 2025-07-30

### Added
- Initial release of mcp-on-rails gem
- Pre-configured MCP settings for Rails development
- Specialized prompts for 8 Rails component areas:
  - Architect (overall coordination)
  - Models (ActiveRecord, migrations, database)
  - Controllers (HTTP handling, routing, APIs)
  - Views (templates, layouts, frontend)
  - Stimulus (JavaScript, Turbo integration)
  - Jobs (background processing)
  - Tests (testing strategies, coverage)
  - DevOps (deployment, infrastructure)
- Template system with ERB for project customization
- Command-line interface with `mcp-on-rails` executable
- Compatible with Claude, GitHub Copilot, VS Code, and other MCP clients
- Automatic project setup with `.mcp-on-rails/` directory structure
- Comprehensive documentation and usage examples

### Credits
- Inspired by and adapted from [claude-on-rails](https://github.com/obie/claude-on-rails) by Obie Fernandez
