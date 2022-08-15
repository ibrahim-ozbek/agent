FROM node:13-alpine
RUN mkdir -p /home/appp
COPY ./* /home/appp/
WORKDIR /home/appp
RUN npm install
CMD ["node", "server.js"]