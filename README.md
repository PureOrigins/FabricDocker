# FabricDocker
Fabric minecraft server docker image.

## Usage
You can pull the image using
`docker pull ghcr.io/pureorigins/fabric:MINECRAFT_VERSION`

Currently the supported Minecraft versions are:
    - 1.17

To run the container then do
`docker run -d --name minecraft -p 25565:25565 -v VOLUME_ON_HOST:/minecraft ghcr.io/pureorigins/fabric:MINECRAFT_VERSION`