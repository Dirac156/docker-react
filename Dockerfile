FROM node:16-alpine as builder

WORKDIR '/app'

COPY package.json .
RUN npm install
COPY . .

RUN npm run build 

# path to build is /app/build

FROM nginx
# this is telling us to use port 80
EXPOSE 80
# copy from a different phase
# what we want to copy
# where we want to copy it
COPY --from=builder /app/build /usr/share/nginx/html
