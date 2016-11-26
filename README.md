Firmware Extraction
===================

This repo contains a docker container designed to allow any machine capable of running Docker to be used to extract firware files.
It contains useful tools like binwalk and so on

Usage
=====

On the host machine run the following command:

    docker-compose run fw

Once this has finished building the container you will be presented with a bash prompt. From there you can use the extraction tools to open up any firmware files in the `firmwares` folder
