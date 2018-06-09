FROM node:9.3.0-alpine as builder
RUN mkdir -p /usr/local/src/builder
WORKDIR /usr/local/src/builder
COPY . ${WORKDIR}
RUN npm set progress=false \
    && yarn install \
    && yarn build

FROM nginx:stable-alpine-perl

ENV PROJECT_NAME angularCarApp

EXPOSE 80

RUN mkdir -p /srv/apps/${PROJECT_NAME}
WORKDIR /srv/apps/${PROJECT_NAME}
COPY --from=builder /usr/local/src/builder/dist /etc/nginx/html/
COPY --from=builder /usr/local/src/builder/dist /usr/share/nginx/html
COPY --from=builder /usr/local/src/builder/dist /var/www/html
