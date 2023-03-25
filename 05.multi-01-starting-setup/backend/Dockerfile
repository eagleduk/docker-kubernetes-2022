FROM node

WORKDIR /app

COPY ./package.json /app/

RUN npm install

COPY . .

EXPOSE 80

ENV MONGO_INITDB_ROOT_USERNAME=root
ENV MONGO_INITDB_ROOT_PASSWORD=root

CMD [ "npm", "start" ]

#docker run --name multi-app-backend --network multi-application -v "C:\development\udemy\docker\docker-kubernetes-2022\05.multi-01-starting-setup\backend:/app" -v /app/node_modules --rm -p 3000:80 multi-app:backend
#docker run --name multi-app-backend --network multi-application -v "C:\development\udemy\docker\docker-kubernetes-2022\05.multi-01-starting-setup\backend:/app" -v logs:/app/logs -v /app/node_modules --rm --env-file .env -p 3000:80 multi-app:backend