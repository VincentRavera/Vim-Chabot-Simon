# Vim-Chabot-Simon

I DO NOT OWN THIS PROJECT !

My friend gave it to me and since i can't find his project I have decided to fork it here.


## Intallation

### Copy this project

Run:
```shell
git clone https://github.com/VincentRavera/Vim-Chabot-Simon /home/YOUR_NAME_HERE/.vim
```

### Install Vundle

Run:

```shell
git clone https://github.com/VundleVim/Vundle.vim.git /home/YOUR_NAME_HERE/.vim/bundle/Vundle.vim
```

### Install Plugins

Launch vim

Run:
```vim
:VundleUpdate
```
## Test in Docker

### Dockerfile

To test in a docker container copy the code bellow into a file named DockerFile

```Docker
FROM debian:stretch

LABEL maintainer Vincent RAVERA <ravera.vincent@gmail.com>

RUN apt-get update

WORKDIR /root/

RUN apt-get install -y curl wget git

RUN apt-get install -y vim

# Install of vim
RUN git clone https://github.com/VincentRavera/Vim-Chabot-Simon ~/.vim
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

CMD /bin/bash
```

Run:
```shell
docker build . -t vim
docker run -it vim
vim
```
You will then be inside vim without pluggins, run the VundleUpdate command and restart your vim.


