FROM node:14
 
# diretório raiz dd trabalho

WORKDIR /inicio_docker

# Podemos receber argumentos 
    # ENV = carrega variáveis que serão utilizadas no container 
    # ARG carrega variáveis apenas no momento de build da imagem, enquanto a instrução

ARG PORT_BUILD=6000

ENV PORT=$PORT_BUILD

# Expõe a porta da aplicação de fácil consulta ao executar o "docker ps -a"

EXPOSE PORT_BUILD

# copia o projeto do diretório local para dentro do container

COPY . .

    # o primeiro ponto referece ao diretório do host/local
    # o segundo ponto referece ao diretório de dentro do container

RUN npm install

ENTRYPOINT npm start 