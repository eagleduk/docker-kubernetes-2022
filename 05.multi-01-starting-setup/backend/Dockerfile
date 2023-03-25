FROM node

WORKDIR /app

COPY ./package.json /app/

RUN npm install

COPY . .

EXPOSE 80

CMD [ "npm", "start" ]

#docker run --name multi-app-backend --network multi-application -v "C:\development\udemy\docker\docker-kubernetes-2022\05.multi-01-starting-setup\backend:/app" -v /app/node_modules --rm -p 3000:80 multi-app:backend