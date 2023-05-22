FROM mcr.microsoft.com/playwright:v1.34.0-jammy
 
WORKDIR /app
 
COPY . /app/

EXPOSE 9323

RUN npm install
