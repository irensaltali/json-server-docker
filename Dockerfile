FROM node:10-alpine
LABEL maintainer="İren SALTALI <iren@saltali.com>"

WORKDIR /json-server
RUN npm install -g json-server

EXPOSE 3000
# COPY json-data/db.json db.json
CMD json-server --host "0.0.0.0" --watch db.json
