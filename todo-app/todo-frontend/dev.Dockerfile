FROM node:16

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:3000

# Change npm ci to npm install since we are going to be in development mode
RUN npm install

EXPOSE 5001

# npm start is the command to start the application in development mode
CMD ["npm", "run", "start"]