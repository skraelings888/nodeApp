FROM node:carbon

# Criar diretorio da apliação
WORKDIR /usr/src/app

# Instalar as dependências da aplicação
# O wildcard '*' é assegurado para garantir que amobs os  package.json e package-lock.json sejam copiados.
COPY package*.json ./

RUN npm install
# Se voce for buildar seu codigo em Produção
# RUN npm install --only=production

# Copie sua aplicação para dentro da imagem
COPY . .

# Expondo as portas
EXPOSE 8080

# Iniciando aplicação com node server.js
CMD [ "npm", "start" ]
