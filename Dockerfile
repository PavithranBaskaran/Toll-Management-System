FROM node:12.2.0-alpine
WORKDIR /src
COPY . .
RUN npm install
EXPOSE 8000
CMD ["npm", "run" , "start]
