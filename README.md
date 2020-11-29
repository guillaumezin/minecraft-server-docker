# nukkit-docker
Files to create a docker for Nukkit Minecraft server

For instance for [Nukkit](https://github.com/CloudburstMC/Nukkit) or [PowerNukkit](https://github.com/PowerNukkit/PowerNukkit)

I use it for a personnal Minecraft server, but it could work for many Java web app.

Put the application .jar file in app subfolder and link it to nukkit.jar, for instance:

```ln -s powernukkit-1.4.0.0-PN-ALPHA.1-shaded.jar nukkit.jar```

Data will be writable in data subfolder

To build:

```docker build nukkit .```

To execute:

```docker-compose up -d```

To stop

```docker-compose down```

To control server:

```docker attach nukkit-docker_nukkit_1```

Then CTRL+P CTRL+Q to detach
