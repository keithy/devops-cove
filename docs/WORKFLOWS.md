
## Steps

- the-github-taverns/the-admiralty-inn/harbour-master.hm.yml
  - `Import env_json`
  - `Verify hooks (${{ inputs.tech }})`
  - `Pre-publish hooks (${{ inputs.tech }})`
  - `Publish hooks (${{ inputs.tech }})`
  - `Post-publish hooks (${{ inputs.tech }})`
  - `Report hooks (${{ inputs.tech }})`

- the-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml
  - `Set env name tech`
  - `Pre-build hooks`
  - `buildah bud`
  - `Post-build hooks`
  - `Prepare payload`
  - `Harbour Master Dispatch`

- the-github-taverns/the-coopers-inn/linux/builder-compose.hm.yml
  - `Set env name tech` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Pre-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `docker compose build`
  - `Post-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Prepare payload` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Harbour Master Dispatch` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m

- the-github-taverns/the-coopers-inn/linux/builder-configure-make.hm.yml
  - `Set env name tech` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Pre-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `configure && make`
  - `Post-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Prepare payload` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Harbour Master Dispatch` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m

- the-github-taverns/the-coopers-inn/linux/builder-docker.hm.yml
  - `Set env name tech` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Pre-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Build image`
  - `Post-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Prepare payload` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Harbour Master Dispatch` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m

- the-github-taverns/the-coopers-inn/linux/builder-dotnet.hm.yml
  - `Set env name tech` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Pre-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `dotnet restore`
  - `dotnet build`
  - `dotnet test`
  - `Post-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Prepare payload` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Harbour Master Dispatch` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m

- the-github-taverns/the-coopers-inn/linux/builder-go.hm.yml
  - `Set env name tech` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Setup Go`
  - `Pre-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `go build`
  - `go test`
  - `Post-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Prepare payload` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Harbour Master Dispatch` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m

- the-github-taverns/the-coopers-inn/linux/builder-gradle.hm.yml
  - `Set env name tech` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Pre-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Gradle assemble`
  - `Gradle test`
  - `Post-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Prepare payload` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Harbour Master Dispatch` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m

- the-github-taverns/the-coopers-inn/linux/builder-maven.hm.yml
  - `Set env name tech` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Pre-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `mvn validate`
  - `mvn package`
  - `mvn test`
  - `Post-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Prepare payload` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Harbour Master Dispatch` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m

- the-github-taverns/the-coopers-inn/linux/builder-mise.hm.yml
  - `Set env name tech` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Pre-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `mise run`
  - `Post-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Prepare payload` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Harbour Master Dispatch` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m

- the-github-taverns/the-coopers-inn/linux/builder-node.hm.yml
  - `Set env name tech` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `npm ci`
  - `Pre-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `npm build`
  - `npm test`
  - `Post-build hooks` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Prepare payload` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Harbour Master Dispatch` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m

- the-github-taverns/the-lighthouse-inn/watchman-linus.hm.yml
  - `Folders changed 4 levels deep`
  - `checkout`
  - `initialize`
  - `Prepare payload` shared: [2mthe-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml[0m
  - `Metadata-driven dispatch`

## Workflows Summary
- the-github-taverns/the-admiralty-inn/harbour-master.hm.yml: steps=6 unique=6 shared=0
- the-github-taverns/the-coopers-inn/linux/builder-buildah.hm.yml: steps=6 unique=1 shared=0
- the-github-taverns/the-coopers-inn/linux/builder-compose.hm.yml: steps=6 unique=1 shared=5
- the-github-taverns/the-coopers-inn/linux/builder-configure-make.hm.yml: steps=6 unique=1 shared=5
- the-github-taverns/the-coopers-inn/linux/builder-docker.hm.yml: steps=6 unique=1 shared=5
- the-github-taverns/the-coopers-inn/linux/builder-dotnet.hm.yml: steps=8 unique=3 shared=5
- the-github-taverns/the-coopers-inn/linux/builder-go.hm.yml: steps=8 unique=3 shared=5
- the-github-taverns/the-coopers-inn/linux/builder-gradle.hm.yml: steps=7 unique=2 shared=5
- the-github-taverns/the-coopers-inn/linux/builder-maven.hm.yml: steps=8 unique=3 shared=5
- the-github-taverns/the-coopers-inn/linux/builder-mise.hm.yml: steps=6 unique=1 shared=5
- the-github-taverns/the-coopers-inn/linux/builder-node.hm.yml: steps=8 unique=3 shared=5
- the-github-taverns/the-lighthouse-inn/watchman-linus.hm.yml: steps=5 unique=4 shared=1
