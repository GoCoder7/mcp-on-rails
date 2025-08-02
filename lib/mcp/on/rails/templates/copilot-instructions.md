# GitHub Copilot Instructions for MCP on Rails

You are working with a Rails project that has been configured with MCP on Rails, providing specialized AI assistance for Rails development. This project follows the principles of claude-on-rails but is adapted for GitHub Copilot usage.

## Project Context

This Rails project uses **MCP on Rails** configuration located in `.mcp-on-rails/` directory. Always reference the specialized prompts and context when helping with development tasks.

### Key Directories and Their Purpose:

- **`.mcp-on-rails/prompts/`** - Contains specialized prompts for different Rails components
- **`.mcp-on-rails/context.md`** - Project-specific context and information
- **`.mcp-on-rails/mcp-config.yml`** - MCP server configuration
- **`.mcp-on-rails/specs/`** - Feature specifications and task management

## Pre-Development Workflow

### 📋 **MANDATORY: Specification Creation**

**Before starting ANY development task**, you MUST create a comprehensive specification in `.mcp-on-rails/specs/` directory:

1. **Create Project Subdirectory**:

   ```
   .mcp-on-rails/specs/[feature-name]/
   ```

2. **Required Documentation Files**:

   - **`requirement.md`** - Detailed requirements and acceptance criteria
   - **`design.md`** - Technical design, architecture decisions, and implementation approach
     - **MANDATORY**: Must query `rails-mcp-server` for latest Rails documentation(and `context7` for relevant context) before writing
     - **MANDATORY**: Include version-specific Rails patterns and best practices
     - **MANDATORY**: Reference current Rails guides for security, performance, and conventions
   - **`tasks.md`** - Step-by-step task breakdown with progress tracking

3. **Task Management Process**:
   - Assign appropriate specialist prompts to each task
   - Update `tasks.md` after completing each step
   - Mark completed tasks with ✅ and timestamp
   - Document any design changes or decisions

### 🔍 **Rails Documentation Integration**

**Always leverage `rails-mcp-server` for up-to-date Rails guidance**:

1. **During design.md Creation** (MANDATORY):

   - Query latest Rails documentation for current version patterns
   - Verify API methods and their parameters
   - Check for deprecated methods and modern alternatives
   - Reference security best practices and performance guidelines
   - Ensure design follows current Rails conventions

2. **Before Implementation**: Query latest Rails documentation for:

   - Version-specific syntax and best practices
   - New features and deprecated methods
   - Security considerations and performance optimizations

3. **Stay Current**: Use MCP server to:
   - Verify Rails conventions for current version
   - Check for latest gem compatibility
   - Reference official Rails guides and API documentation
   - Ensure security best practices compliance

**Example Specification Structure**:

```
.mcp-on-rails/specs/user-authentication/
├── requirement.md    # What needs to be built
├── design.md        # How it will be built
└── tasks.md         # Step-by-step implementation plan
```

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
- **MANDATORY**: Playwright MCP testing for view validation and iterative refinement

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

1. **📋 Specification** (MANDATORY): Create comprehensive specs in `.mcp-on-rails/specs/[feature-name]/`
   - Write `requirement.md` with detailed requirements and acceptance criteria
   - Create `design.md` with technical approach and architecture decisions
   - Draft `tasks.md` with step-by-step implementation plan
2. **🔍 Research** (Rails MCP): Query latest Rails documentation for version-specific best practices
3. **🏗️ Plan** (Architect): Understand requirements and design approach
4. **🗄️ Model** (Models): Design data structure and relationships
5. **🎮 Route & Control** (Controllers): Implement HTTP endpoints
6. **🎨 Present** (Views): Create user interface
   - **MANDATORY**: Use `playwright` MCP for view testing and validation
   - Test UI rendering and interactions iteratively until properly displayed
   - Verify responsive design and cross-browser compatibility
   - Fix visual and functional issues identified through Playwright testing
7. **⚡ Enhance** (Stimulus): Add interactive behavior
8. **🔧 Process** (Jobs): Handle background tasks if needed
9. **🧪 Test** (Tests): Ensure comprehensive coverage
10. **🚀 Deploy** (DevOps): Configure for production
11. **📝 Update**: Mark tasks complete in `tasks.md` with ✅ and timestamp

### For Bug Fixes:

1. **📋 Document** (MANDATORY): Create spec directory for the fix with problem analysis
2. **🔍 Research**: Use Rails MCP server for latest debugging techniques and solutions
3. **🧩 Diagnose**: Identify the problem area
4. **📚 Reference**: Check relevant specialist prompt
5. **🔧 Fix**: Implement solution following best practices
6. **🧪 Test**: Verify fix with appropriate tests
7. **📝 Document**: Update specs and relevant documentation

### For Refactoring:

1. **📋 Plan** (MANDATORY): Create refactoring spec with current state analysis
2. **🔍 Research**: Query Rails MCP for modern patterns and best practices
3. **🧐 Analyze**: Understand current implementation
4. **🎯 Design**: Plan improved approach with clear goals
5. **🔄 Refactor**: Implement changes systematically
6. **🧪 Test**: Ensure no regression
7. **⚡ Optimize**: Improve performance where applicable
8. **📝 Complete**: Update specs with final implementation details

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
- **MANDATORY for Views**: Use `playwright` MCP for comprehensive view testing
  - Test UI components and interactions until properly rendered
  - Verify responsive design across different viewports
  - Validate accessibility and user experience
  - Iterate testing and fixes until all visual elements work correctly

## Quick Reference Commands

When asked to help with Rails development:

1. **📋 CREATE SPECS FIRST** (MANDATORY): Always start with `.mcp-on-rails/specs/[feature-name]/` directory creation
2. **🔍 Query Rails MCP**: Use `rails-mcp-server` to get latest Rails documentation and best practices
3. **🎯 Identify the area** of work (models, controllers, views, etc.)
4. **📚 Reference the appropriate prompt**: "Let me check .mcp-on-rails/prompts/[area].md for best practices"
5. **🔧 Apply specialist knowledge** for that area with current Rails version considerations
6. **🔗 Consider dependencies** and coordination with other areas
7. **🧪 Ensure comprehensive testing** and documentation
8. **📝 Update progress**: Mark completed tasks in `tasks.md` throughout development

### Mandatory Pre-Development Checklist:

- [ ] Created `.mcp-on-rails/specs/[feature-name]/` directory
- [ ] Written comprehensive `requirement.md`
- [ ] **MANDATORY**: Queried `rails-mcp-server` for latest Rails documentation and patterns
- [ ] **MANDATORY**: Incorporated current Rails version best practices into `design.md`
- [ ] Designed technical approach in `design.md` with up-to-date Rails guidance
- [ ] Planned step-by-step tasks in `tasks.md`
- [ ] Assigned appropriate specialist prompts to each task
- [ ] **For View Components**: Prepared to use `playwright` MCP for iterative testing and refinement

Remember: You are part of a coordinated development team with a structured specification-driven approach. Always create comprehensive documentation before coding, leverage the Rails MCP server for up-to-date guidance, and use Playwright MCP for thorough view testing. Maintain consistency with Rails conventions and project standards.
