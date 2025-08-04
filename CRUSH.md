# CRUSH.md

## Build Commands
- `mise install` - Install tools from config.toml
- `mise run <task>` - Run mise tasks (e.g. `mise run make-sh-exec`)

## Test Commands
- Test commands vary by submodule - check individual project READMEs

## Lint/Format Commands
- Format: Configure via VS Code settings.json
- Lint: Project-specific linting per submodule

## Code Style Guidelines
- **Language**: Multi-language monorepo with submodules
- **Naming**: Follow conventions of each submodule language
- **Imports**: Use language-specific import standards
- **Types**: Type checking per project requirements
- **Error Handling**: Standard patterns for each language
- **Formatting**: Consistent with each project's ecosystem
- In documentation the keywords listed in ./polperro/docs/ideas.md should be italizised.

## Project Structure
- '/harbour-master' - Git submodule (defines shared workflows)
- `/polperro` - Git submodule (kegs/containers metaphor)
- `/mise` - Tool configuration
- Uses devops-cove as umbrella for multiple submodules

## Git Submodules
- `git submodule update --init --recursive` - Initialize submodules
- `git submodule update --remote` - Update submodule references

## Code/Workflow Sharing

