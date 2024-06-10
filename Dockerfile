FROM  imbios/bun-node:canary-20.12.2-slim

WORKDIR /app

COPY package*.json ./
COPY . .
RUN ls
RUN bun i
RUN bun run build
ENV HOST 0.0.0.0
EXPOSE 3000


CMD [ "bun", "run", "start" ]