# V8 Docker buildscript for Android platform

## Building V8

1. [Install docker](https://www.docker.com/community-edition) for your platform.
1. Run `docker_build.sh` command in couple of hours you will get v8.zip in the same directory

## Scripts description

1. clear_docker.sh      - will remove ALL docker images you have on your machine. If you are using docker for some other purpose don't run it it will bust your cache.
1. docker_build.sh      - Builds V8 for ARM64, ARM and X86. As part of the build process it re-creates v8docker alias which is used by other scripts.
1. docker_explore.sh    - Useful debug tool. Opens the shell session with v8_docker container. In order to use this script `docker_build.sh` should succeed. If it fails by some reason - comment the failing lines and run build script again.
1. full_clean_build.sh  - callds `clear_docker.sh` and then `docker_build.sh`. You could try it if you are desperate or have a couple hours to spare.

## Docker Basics

1. Every script command result is cached to the small sub-container.
1. If you add/modify any command - the caches of all commands below will be invalidated.
1. There is a magic `CACHE_BUST=1` in the script. You might want to modify the value to reset the container to thee state before checking out the branch.

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
