# deploy-scripts

Scripts Bash para configuração de ambiente em produção em maquinas vituais como digitalocean e similares para maquinas linux.

```
                      .___      __    _____.__.__
                    __| _/_____/  |__/ ____\__|  |   ____   ______
                   / __ |/  _ \   __\   __\|  |  | _/ __ \ /  ___/
                  / /_/ (  <_> )  |  |  |  |  |  |_\  ___/ \___ \
                  \____ |\____/|__|  |__|  |__|____/\___  >____  >
                       \/                               \/     \/

             Este repositório contém dotfiles pessoais de Tiago santos.
```

**Install-bot-imoveis.sh** provisiona os seguintes recursos:

- Instala o **Anaconda**
- Instala o **Docker**
- Instala o **Docker Compose**
- Instala o **NodeJS**
- Instala o **npm**
- Instala o **pm2**
- Clona e Instala o **BOT-IMOVEIS/RASA**
- Clona e Instala o **Jarvis/Botkit**
- Executa o **BOT-IMOVEIS/RASA**
- Executa o **Jarvis/Botkit**


**install-docker-node.sh** provisiona os seguintes recursos:

- Instala o **Docker**
- Instala o **Docker Compose**
- Instala o **NodeJS**
- Instala o **npm**

**install-api-saude.sh** provisiona os seguintes recursos:

- Instala o **Docker**
- Instala o **Docker Compose**
- Instala o **NodeJS**
- Instala o **npm**
- Clona o projeto [Api Saude NodeJS](https://github.com/quixote15/nodejs-api-saude.git)

## Aplicações

Lista de script.

<table>
    <thead>
        <tr>
            <td>Ambiente</td>
            <td>Script</td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Install-bot-imoveis.sh</td>
            <td>
<pre>
curl https://raw.githubusercontent.com/quixote15/deploy-scripts/master/install-bot-imoveis.sh | sh
</pre>
            </td>
        </tr>
        <tr>
            <td>deploy-docker-node.sh</td>
            <td>
<pre>
curl https://raw.githubusercontent.com/quixote15/deploy-scripts/master/deploy-docker-node.sh | sh
</pre>
            </td>
        </tr>
        <tr>
            <td>Api Saude</td>
            <td>
<pre>
curl https://raw.githubusercontent.com/quixote15/deploy-scripts/master/install-api-saude.sh | sh
</pre>
            </td>
        </tr>
    </tbody>
</table>

## Licença

[<img width="190" src="https://raw.githubusercontent.com/alisonbuss/my-licenses/master/files/logo-open-source-550x200px.png">](https://opensource.org/licenses)
[<img width="166" src="https://raw.githubusercontent.com/alisonbuss/my-licenses/master/files/icon-license-mit-500px.png">](https://github.com/alisonbuss/garden-of-eden/blob/master/LICENSE)
