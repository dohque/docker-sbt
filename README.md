docker-sbt
==========

Docker container for building sbt based projects.

[Docker SBT on DockerHub](https://registry.hub.docker.com/u/dohque/docker-sbt/)

[Docker SBT on GitHub](https://github.com/dohque/docker-sbt)

Container is based on [Netflix OSS Oracle Java 8](https://registry.hub.docker.com/u/netflixoss/java/)
which is based on [Ubuntu 14.04](https://registry.hub.docker.com/_/ubuntu/).

Some ideas and code were stolen from [An other Docker SBT](https://registry.hub.docker.com/u/nightscape/docker-sbt/).
It is based on BusyBox and leaking some libraries I was planning to use in my project.

Usage
-----

Using with Docker:

```
docker pull dohque/docker-sbt
```

Using with wercker build server. Just add box to `wercker.yml`

```YAML
box: dohque/docker-sbt
```
