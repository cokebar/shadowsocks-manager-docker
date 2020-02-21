FROM node:12-alpine

VOLUME /root/.ssmgr

RUN apk --no-cache add tzdata iproute2 && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    npm i -g shadowsocks-manager@0.34.30 --unsafe-perm

EXPOSE 80

CMD exec ssmgr
