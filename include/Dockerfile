FROM ubuntu:22.04

RUN apt update && apt install -y python3

# This is where all the commands will be run
WORKDIR /usr/src/app

# Copy all files in current local directory to the working directory
COPY . ./

# There can only be 1 CMD command per DOCKERFILE.
# CMD tells the container how to run the program.
CMD ["python3", "references.py"]

