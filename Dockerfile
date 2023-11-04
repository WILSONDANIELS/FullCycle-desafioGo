FROM golang:1.19
WORKDIR /app
COPY *.go ./
RUN go build helloWorld.go 
CMD [ "/app/helloWorld" ]
# executa a app mas a imagem tem um tamanho final de 1.06GB
