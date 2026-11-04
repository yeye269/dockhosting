FROM node:20-slim

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    openssl curl iproute2 && \
    rm -rf /var/lib/apt/lists/* 

COPY . .
RUN chmod +x main

ENV PORT=3000
EXPOSE 3000

CMD ["./main"]
