# Introduction to Docker

Docker is a tool for packaging applications into containers and for shipping and running these
applications.

Docker containers are kind of like virtual machines, except they share the same operating system
kernel (the OS kernel handles the underlying hardware). For example, let's say that your computer is
running Ubuntu with Docker installed. Docker can run any version of Linux, since all Linux OSs
(such as Ubuntu) share the same OS kernel.

There is less processing power overhead, less memory overhead, and shorter boot times with
containers, compared to virtual machines.

Images are kind of like templates for containers. Containers are instances of that image.

[Source](https://www.youtube.com/watch?v=fqMOX6JJhGo)

In other words, Docker containers are kind of like
[baby computers](https://www.youtube.com/watch?v=DgT1b50R6JY).


## Useful Docker Commands

- `sudo docker ps -a`: Show all stopped and running containers.
- `sudo docker rm <container_name>`: Remove container permanently.
- `sudo docker images`: Show all images.
- `sudo docker rmi <image_name>`: Remove image permanently.
  - [Source](https://www.youtube.com/watch?v=fqMOX6JJhGo) for the previous 4 commands.
- [`sudo docker build -t <image_name> <path_to_Dockerfile>`](https://www.youtube.com/watch?v=Gjnup-PuquQ): Build
  an image from Dockerfile. The `-t` option tags the image with `<image_name>`.
- [`sudo docker run <image_name>`](https://www.youtube.com/watch?v=Gjnup-PuquQ): Run image in container.

