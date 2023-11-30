FROM alpine

RUN apk add curl

RUN curl https://raw.githubusercontent.com/Psiphon-Labs/psiphon-tunnel-core-binaries/master/psiphond/psiphond -o /bin/psiphond
RUN chmod +x /bin/psiphond

RUN mkdir -p /config

WORKDIR /config

ENTRYPOINT [ "psiphond" ]