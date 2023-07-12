FROM node:16

RUN mkdir /wesley.show

WORKDIR /wesley.show

COPY ./package.json /wesley.show

RUN npm install

COPY . /wesley.show

RUN npm run build

CMD ["npm", "start"]
