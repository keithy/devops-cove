# CRUSH.md

## Build Commands
- `mise install` - Install tools from config.toml
- `mise run <task>` - Run mise tasks (e.g. `mise run make-sh-exec`)
- Local watchman: `mise run linus-local` (run from a keg pipeline dir)

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
- In documentation the keywords listed in ./polperro/docs/ideas.md should be italicized. Use: *kegs*, *flagons*, *sacks*.
- In github actions put an empty line between steps.

## Project Structure
- '/harbour-master' - Git submodule (defines shared workflows) (repo: the-github-taverns)
- `/polperro` - Git submodule (kegs/containers metaphor)
- `/mise` - Tool configuration
- Uses devops-cove as umbrella for multiple submodules

## Git Submodules
- `git submodule update --init --recursive` - Initialize submodules
- `git submodule update --remote` - Update submodule references
- `mise run status-all` - Status for root and submodules
- `MSG="<msg>" mise run commit-and-push-all` - Commit & push across repos
- `mise run push-all` - Push root and submodules

## Code/Workflow Sharing

The `developer-cove` project serves as a management hub for working on improvements to the eco-system.

Harbour projects like `polerro` `fowey` `mevagissy` `looe` define build pipelines in a four level heirarchy;
however here they should remain as fairly empty templates that enterprise user would clone/fork for different 
contexts/use-cases/departments. Their users (The Navy) would populate their pipelines folders and github
workflows will spot the changes and spawn build tasks. 

However, the workflows are not required to be in these empty templates either. Instead they are managed in
the `harbour-master` project. Where there are 'pubs' full of available workflow-actors. The Navy,
configuring the local installation of a harbour will select the workflow-actors from the pub. 
Specifically a 'watchman', 'builders' and 'inspectors'.

### Hook Order
Builder: 10-pre-build → 20-post-build
Harbour-Master: 30-verify → 40-pre-publish → 50-publish → 60-post-publish → 70-report

## TODO
- Add post-build hooks and prepare payload to remaining builders (Windows, if any)
- Create harbour-master/the-coopers-inn/harbour-master.hm.yml bench item and wire routing to inspectors in harbour repos; copy from bench into harbour workflows when adopting
- Standardize env_json usage across workflows
- Add bash-spec runner to scripts menu and/or post-build hooks
- Add PHP Composer builder with Beethoven
- Add Go builder (go build/test)
- Name the pub (decide canonical bench directory name)

## Not-To-Do (for now)
- Watchman pre/post hooks. If needed later, create specialized watchmen with pre.watchman-*/post.watchman-* hooks.

