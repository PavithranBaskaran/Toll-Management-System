FROM node:latest
WORKDIR /
COPY . .
RUN npm install
EXPOSE 8000
CMD ["npm", "run" , "start]


