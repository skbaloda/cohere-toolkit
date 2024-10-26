FROM node:20-alpine AS base

WORKDIR /app

# Install dependencies based on the preferred package manager
COPY src/interfaces/assistants_web/package.json src/interfaces/assistants_web/package-lock.json ./
COPY src/interfaces/assistants_web/patches ./patches
RUN npm ci

COPY src/interfaces/assistants_web/src ./src
#older version below consecutive lines are without src/interfaces/assistants_web
COPY src/interfaces/assistants_web/public ./public
COPY src/interfaces/assistants_web/next.config.mjs .
COPY src/interfaces/assistants_web/tsconfig.json .
COPY src/interfaces/assistants_web/tailwind.config.js .
COPY src/interfaces/assistants_web/postcss.config.js .

COPY .en[v] .env

# Next.js collects completely anonymous telemetry data about general usage. Learn more here: https://nextjs.org/telemetry
# Uncomment the following line to disable telemetry at run time
# ENV NEXT_TELEMETRY_DISABLED 1

# Note: Don't expose ports here, Compose will handle that for us

# Start Next.js in development mode based on the preferred package manager
FROM base as dev
CMD npm run dev


# Production specifc tareget
# FROM base AS prod
# RUN npm run build
# CMD npm run start