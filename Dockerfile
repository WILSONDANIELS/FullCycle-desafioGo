FROM golang:1.19 AS build-stage
WORKDIR /app
COPY *.go ./
RUN go build helloWorld.go 
FROM scratch
WORKDIR /app
COPY --from=build-stage /app .
CMD [ "/app/helloWorld" ]
# Tamanho final do arquivo: 1.82MB
