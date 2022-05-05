# Introduction to Docker

Information in this file, unless otherwise stated, is taken from
[here](https://www.youtube.com/watch?v=fqMOX6JJhGo).

## Useful Docker Commands

- `sudo docker ps -a`: Show all stopped and running containers.
- `sudo docker rm <container_name>`: Remove container permanently.
- `sudo docker images`: Show all images.
- `sudo docker rmi <image_name>`: Remove image permanently.
- [`sudo docker build -t <image_name> <path_to_Dockerfile>`](https://www.youtube.com/watch?v=Gjnup-PuquQ): Build an image from Dockerfile. The `-t` option tags the image with `<image_name>`.
- [`sudo docker run <image_name>`](https://www.youtube.com/watch?v=Gjnup-PuquQ): Run image in container.

