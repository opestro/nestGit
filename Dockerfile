FROM  imbios/bun-node:canary-20.11-alpine 

WORKDIR /app

COPY package*.json ./
COPY . .
RUN bun  install
RUN bun run build
ENV HOST 0.0.0.0
EXPOSE 3000


CMD [ "bun", "run", "start" ]