# minecraft-server-docker
Files to create a docker for Minecraft server.

For instance for [Nukkit](https://cloudburstmc.org), [PowerNukkit](https://powernukkit.org) or [PaperMC](https://papermc.io) with [GeyserMC](https://geysermc.org).

I use it for a personnal Minecraft server on Raspberry PI 3 with 32bits Raspbian OS, but it could work for many Java web app, edit the Dockerfile if you have a 64bits OS or another architecture.

Put the application .jar file in app subfolder and link it to minecraft-server.jar, for instance:

```ln -s powernukkit-1.4.0.0-PN-ALPHA.1-shaded.jar minecraft-server.jar```

Data will be writable in data subfolder.

To build:

```docker build minecraft-server .```

To execute:

```docker-compose up -d```

To stop:

```docker-compose down```

To control server:

```docker attach minecraft-server-docker_minecraft-server_1```

Then <kbd>CTRL</kbd>+<kbd>P</kbd> <kbd>CTRL</kbd>+<kbd>Q</kbd> to detach.
