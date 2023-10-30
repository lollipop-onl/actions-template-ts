FROM node:20-slim

COPY . .

RUN corepack enable pnpm
RUN pnpm install --frozen-lockfile --prod

ENV NODE_OPTIONS "--import tsx"

ENTRYPOINT ["NODE", "/src/index.ts"]
