FROM node:latest
RUN mkdir -p /nodetest2/
WORKDIR /nodetest2/
COPY package.json /nodetest2/
RUN npm install
COPY . /nodetest2/
EXPOSE 3000
CMD [ “npm”, “start” ]