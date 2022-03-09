# Docker-WebAPI
Exemplo de imagem Docker para AspNet WebAPI

# Dependências

- SDK .NET 6.0
- Docker
- IDE de preferência (nesse caso utilizei VS Code)

# Desenvolvimento

Feito o clone somente executar na raíz do projeto o seguinte:

- Executando o comando abaixo será gerada a imagem chamada webapi

    ```
    docker build -t webapi .
    ```

- O próximo passo será executar o container com o comando:

    ```
    docker run -d -p 5005:80 webapi
    ```

    O docker subirá a aplicação na porta 80 interna do container e deixará exposta na porta 5005 do host. Comando -d é passado para não deixar o terminal travado com a execução.

- Agora é só verificar o endpoint para observar a aplicação executando, pode ser utilizado alguma aplicação como Postman ou mesmo via navegador.

    ```
    http://localhost:5005/WeatherForecast
    ```
