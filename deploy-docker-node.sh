#!/bin/bash

#-----------------------|DOCUMENTATION|-----------------------#
# @descr: Script de instalação do Docker na maquina 
# @fonts: https://docs.docker.com/install/linux/docker-ce/ubuntu/
#         https://docs.docker.com/install/linux/linux-postinstall/
#         https://medium.com/@Grigorkh/how-to-install-docker-on-ubuntu-19-04-7ccfeda5935
#         https://www.fernandoike.com/2017/04/03/instalando-docker-ce-no-debian/
#         https://www.tauceti.blog/post/kubernetes-the-not-so-hard-way-with-ansible-worker/
#         https://github.com/githubixx/ansible-role-docker/blob/master/defaults/main.yml
#         https://github.com/githubixx/ansible-role-docker/blob/master/tasks/main.yml
#         https://linux4one.com/how-to-install-and-use-docker-on-ubuntu-18-04/?fbclid=IwAR3mG1VSUkLXiLGeN-cslh3V1cne0m5DrPGVtl8jhBIBygZeolzEtVz1lgM
#         https://www.linode.com/docs/security/authentication/gpg-key-for-ssh-authentication/
#         https://medium.com/@TheEdenCrazy/ssh-gpg-there-is-a-better-way-6f11365627a
#         https://medium.com/@mattdark/backup-restore-github-gpg-ssh-keys-a335db22b953
#         https://www.digitalocean.com/community/tutorials/como-instalar-e-usar-o-docker-no-ubuntu-18-04-pt
#         https://ajinkya007.in/2016/05/
#         https://cursos.alura.com.br/forum/topico-executar-o-docker-sem-precisar-de-sudo-50764
#         https://techoverflow.net/2018/12/15/how-to-fix-docker-got-permission-denied-while-trying-to-connect-to-the-docker-daemon-socket/
#         https://www.digitalocean.com/community/tutorials/como-instalar-o-node-js-no-ubuntu-16-04-pt
#         https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart

#@example:
#       bash install.sh
#-------------------------------------------------------------#

readonly LOCAL_DIR="$PWD";

function StartScript {

  # PARTE 01 = Instala docker

  # Install packages to allow apt to use a repository over HTTPS:
  apt-get install -y curl \
                     gnupg-agent \
                     ca-certificates \
                     apt-transport-https \
                     software-properties-common;

  # Install Docker CE:
  curl -fsSL https://get.docker.com | bash;

  # Create the docker group:
  #groupadd docker;

  # Add your user to the docker group:
  #usermod -a -G docker $USER;

  # Creating the docker configuration directory.
  mkdir -p $HOME/.docker;

  # Add permission for the configurations:
  #chmod -R g+rwx $HOME/.docker;
  #chown -v -R $USER:$USER $HOME/.docker;

  # checking the installation of the docker version.
  docker version;

  # PARTE 02 = Instala nodejs
  apt-get install nodejs;
  apt-get install npm;

  npm install -g pm2@latest;
  # PARTE 04 = Criar workspace
  mkdir workspace;
  cd workspace;
  
} 

#  Faz chamada da Função StartScript passando os argumentos como Strings '$@'
#  Para cada linha de comando executada dentro da função será gerado um log. 
#
#
StartScript "$@" | tee -a "./install.log";

exit 0;
