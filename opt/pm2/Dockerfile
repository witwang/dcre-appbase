ARG PM2_VERSION
FROM keymetrics/pm2:${PM2_VERSION}

# Bundle APP files
COPY package.json /app/package.json
WORKDIR /app

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production

# Show current folder structure in logs
RUN ls /app

CMD [ "pm2-runtime", "start", "/app/pm2.json", "--delay=15" ]