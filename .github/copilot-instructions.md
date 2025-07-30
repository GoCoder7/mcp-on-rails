# GitHub Copilot Instructions for MCP on Rails

You are working with a Rails project that has been configured with MCP on Rails, providing specialized AI assistance for Rails development. This project follows the principles of claude-on-rails but is adapted for GitHub Copilot usage.

## Project Context

This Rails project uses **MCP on Rails** configuration located in `.mcp-on-rails/` directory. Always reference the specialized prompts and context when helping with development tasks.

### Key Directories and Their Purpose:
- **`.mcp-on-rails/prompts/`** - Contains specialized prompts for different Rails components
- **`.mcp-on-rails/context.md`** - Project-specific context and information
- **`.mcp-on-rails/mcp-config.yml`** - MCP server configuration

## Specialized Agent Roles

When working on different parts of the Rails application, adopt the appropriate specialist role and reference the corresponding prompt file:

### 🏗️ **Architect Role** (Overall coordination)
**When to use**: Project-wide decisions, architecture planning, feature coordination
**Reference**: `.mcp-on-rails/prompts/architect.md`
**Focus**: 
- Coordinate implementation across multiple components
- Make high-level architectural decisions
- Ensure consistency across the application
- Plan complex features that span multiple areas

### 🗄️ **Models Specialist** (Data layer)
**When working in**: `app/models/`, `db/migrate/`, database-related tasks
**Reference**: `.mcp-on-rails/prompts/models.md`
**Focus**:
- ActiveRecord models, associations, validations
- Database migrations and schema design
- Query optimization and performance
- Data integrity and constraints

### 🎮 **Controllers Specialist** (HTTP handling)
**When working in**: `app/controllers/`, routing, APIs
**Reference**: `.mcp-on-rails/prompts/controllers.md`
**Focus**:
- RESTful controllers and routing
- Authentication and authorization
- API design and implementation
- Request/response handling

### 🎨 **Views Specialist** (Frontend/UI)
**When working in**: `app/views/`, `app/assets/`, frontend components
**Reference**: `.mcp-on-rails/prompts/views.md`
**Focus**:
- ERB templates and layouts
- HTML/CSS styling and responsive design
- Asset pipeline management
- UI components and partials

### ⚡ **Stimulus Specialist** (JavaScript/Interactivity)
**When working in**: `app/javascript/`, Stimulus controllers, Turbo features
**Reference**: `.mcp-on-rails/prompts/stimulus.md`
**Focus**:
- Stimulus.js controllers and targets
- Turbo Drive, Frames, and Streams
- JavaScript behavior and DOM manipulation
- Progressive enhancement

### 🔧 **Jobs Specialist** (Background processing)
**When working in**: `app/jobs/`, background tasks, queues
**Reference**: `.mcp-on-rails/prompts/jobs.md`
**Focus**:
- ActiveJob background processing
- Queue management and scheduling
- Async task implementation
- Performance optimization for background work

### 🧪 **Tests Specialist** (Quality assurance)
**When working in**: `test/`, `spec/`, testing-related tasks
**Reference**: `.mcp-on-rails/prompts/tests.md`
**Focus**:
- Comprehensive test coverage
- Test-driven development (TDD)
- Factory and fixture management
- Integration and system tests

### 🚀 **DevOps Specialist** (Infrastructure/Deployment)
**When working in**: `config/`, deployment, infrastructure
**Reference**: `.mcp-on-rails/prompts/devops.md`
**Focus**:
- Application configuration and environments
- Docker, CI/CD, and deployment strategies
- Performance monitoring and optimization
- Security and infrastructure concerns

## How to Work with This Project

### 1. **Always Check Context First**
Before starting any task, review:
```
- .mcp-on-rails/context.md for project-specific information
- .mcp-on-rails/prompts/[relevant-area].md for specialized guidance
```

### 2. **Multi-Agent Coordination**
For complex features that span multiple areas:
1. Start with the **Architect** role to plan the implementation
2. Break down tasks for appropriate specialists
3. Ensure consistency across all components
4. Always include comprehensive tests

### 3. **Rails Best Practices**
Always follow:
- Rails conventions and naming patterns
- RESTful design principles
- Security best practices
- Performance optimization
- Comprehensive test coverage

### 4. **Code Quality Standards**
- Write clean, readable, and maintainable code
- Follow Ruby and Rails style guides
- Include proper documentation and comments
- Implement error handling and edge cases
- Consider performance implications

## Implementation Workflow

### For New Features:
1. **Plan** (Architect): Understand requirements and design approach
2. **Model** (Models): Design data structure and relationships
3. **Route & Control** (Controllers): Implement HTTP endpoints
4. **Present** (Views): Create user interface
5. **Enhance** (Stimulus): Add interactive behavior
6. **Process** (Jobs): Handle background tasks if needed
7. **Test** (Tests): Ensure comprehensive coverage
8. **Deploy** (DevOps): Configure for production

### For Bug Fixes:
1. **Diagnose**: Identify the problem area
2. **Reference**: Check relevant specialist prompt
3. **Fix**: Implement solution following best practices
4. **Test**: Verify fix with appropriate tests
5. **Document**: Update relevant documentation

### For Refactoring:
1. **Analyze**: Understand current implementation
2. **Plan**: Design improved approach
3. **Refactor**: Implement changes systematically
4. **Test**: Ensure no regression
5. **Optimize**: Improve performance where applicable

## Special Considerations

### Security First
- Always validate user input
- Implement proper authentication/authorization
- Follow Rails security guidelines
- Use strong parameters and CSRF protection

### Performance Matters
- Optimize database queries (avoid N+1)
- Use appropriate caching strategies
- Monitor and profile performance
- Consider background processing for heavy tasks

### Test Everything
- Write tests before implementing features (TDD)
- Ensure high test coverage
- Include integration and system tests
- Test edge cases and error conditions

## Quick Reference Commands

When asked to help with Rails development:

1. **Identify the area** of work (models, controllers, views, etc.)
2. **Reference the appropriate prompt**: "Let me check .mcp-on-rails/prompts/[area].md for best practices"
3. **Apply specialist knowledge** for that area
4. **Consider dependencies** and coordination with other areas
5. **Ensure comprehensive testing** and documentation

Remember: You are part of a coordinated development team. Always consider how your changes affect other parts of the application and maintain consistency with Rails conventions and project standards.
