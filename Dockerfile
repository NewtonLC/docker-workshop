#Use node version 18
#Have the working directory as "/app"
#Expose port 3000
#Use caching techniques for npm install

# builds image from node version 18
FROM node:18

# creates app directory where source code will go
WORKDIR /app

# exposes 3000 port needed for app
EXPOSE 3000

# ---- CACHING TECHNIQUES FOR NPM INSTALL ----
# copy package.json & package-lock.json files to the image working directory
COPY package*.json ./

# installs dependencies from package files using npm
RUN npm install

# copies source code to inside docker image
COPY . .
# --------------------------------------------
