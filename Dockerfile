FROM node:18.16.1-alpine

RUN mkdir /wesley.show

WORKDIR /wesley.show

COPY ./package.json /wesley.show

COPY ./package-lock.json /wesley.show

RUN npm config set registry https://registry.npmmirror.com

RUN npm install

COPY . /wesley.show

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
