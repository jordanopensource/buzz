FROM node:16-alpine3.14 AS builder


# copy build context and install dependencies
WORKDIR /app
COPY . .
ENV PORT 4000
RUN yarn install
RUN yarn build
# run for production
CMD [ "yarn", "start"]
