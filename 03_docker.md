# Docker and microservices

## Prerequirements
As a prerequirement for the third day, the students will need to install
`docker` and `docker-compose`.

### Linux installation

1. Install docker via [these instructions](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository) (debian/ubuntu).
2. Go through the Linux Postinstall first 2 sections:
  * [Manage Docker as a non-root user](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user). Be aware that this has **security issues** and it is completely optional (for convenience).
  * [Configure Docker to start on boot](https://docs.docker.com/engine/install/linux-postinstall/#configure-docker-to-start-on-boot). Also convenient and also optional. It may slow down startup and consume some extra resources in the background so I usually start it manually. If you are not familiar with `systemd`, just do it.

If you do not use a Debian-based distribution, there are more installation instructions for different distros in the same docker documentation. If you do not use systemd, you probably know what to do.

### Mac Installation

Installing it with brew should be fine:

```bash
brew install docker docker-compose 
```

Try it:

```bash
sudo docker run hello-world
```

If that does not work, there are two options:

* [Docker for Mac](https://adamtheautomator.com/docker-for-mac/), installation guide by John Case.
* Install [Docker Desktop](https://docs.docker.com/desktop/install/mac-install/). It is more than what we need but it is the official docker way.

### Windows through WSL2

1. Follow [this installation guide](https://docs.docker.com/desktop/windows/wsl/#enabling-docker-support-in-wsl-2-distros) until the **Enabling Docker support in WSL 2 distros** section if you already have WSL2.
2. Read through the [Enabling Docker support in WSL 2 distros](https://docs.docker.com/desktop/windows/wsl/#enabling-docker-support-in-wsl-2-distros). The important part is to go to Docker Desktop > Settings > Resources > WSL integration and check that you have it set to your WSL distro.

## Further reading and reference material

* [Red Hat's documentation about Linux Containers](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux_atomic_host/7/html/overview_of_containers_in_red_hat_systems/introduction_to_linux_containers); for an overview about how containers work.
* [Docker's documentation](https://docs.docker.com/) contains installation instructions, manuals, guides and references.
* ["The Tragedy of systemd"](https://www.youtube.com/watch?v=o_AIw9bGogo), by Benno Rice (youtube, 47:18). It is a nice talk that explains systemd and why people do not like it.
* ["Challenge to scientist: does your ten-year-old code still run"](https://www.nature.com/articles/d41586-020-02462-7), Jeffrey M. Perkel, Technology Feature on Nature
* ["Software simplified"](https://www.nature.com/articles/546173a), Andrew Silver, Toolbox article on Nature.
