FROM node:23

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]


# build image
# docker build -t reserver:0.1 .

# run container
# docker run -p 5000:8080 reserver:0.1
