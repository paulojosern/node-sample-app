FROM node:carbon
# Diretorio de exec. da apliacação
WORKDIR /usr/src/app
# COPIANDO DEPENDENCIAS
COPY package.json ./
# INSTALANDO DEPENDENCIAS
RUN npm install
#copiar tudo que esta no doretorio corrente para o WORKDIR
copy . $WORKDIR
# porta onde a aplicação recebe conexões
EXPOSE 8080
# execução da aplicção usando cmd ( comando a ser executado pelo container)
CMD [ "npm", "start" ]