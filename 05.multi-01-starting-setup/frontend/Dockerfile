FROM node:14

WORKDIR /app

COPY ./package.json /app/

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]

#docker run --name multi-app-frontend -p 4000:3000 -v "C:\development\udemy\docker\docker-kubernetes-2022\05.multi-01-starting-setup\frontend:/app" -v /app/node_modules --network multi-application --rm -it multi-app:frontend