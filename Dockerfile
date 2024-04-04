FROM i386/debian:stable-slim

RUN apt-get update -y && apt-get install build-essential gdb nasm vim -y

RUN groupadd -g 999 llp && useradd -r -u 999 -g llp llp

USER llp

RUN chmod +x /usr/src/build.sh