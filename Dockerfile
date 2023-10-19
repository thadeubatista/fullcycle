FROM alpine:latest AS passo1

WORKDIR /app
COPY hellogo.go .

#Instala o go
RUN apk add --no-cache go

#Gera o executável do go
RUN go build hellogo.go

#Cria uma imagem mais leve
FROM scratch AS passo2 
WORKDIR /app
#Copia o arquivo executável gerado no passo 1 para a nova imagem
COPY --from=passo1 /app .
#Executa o arquivo gerado 
CMD ["./hellogo"]