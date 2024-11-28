# Usar a imagem base oficial do Kong
FROM kong/kong:latest

# Definir variáveis de ambiente para o banco de dados
ENV KONG_DATABASE=postgres
ENV KONG_PG_HOST=kong-postgres
ENV KONG_PG_DATABASE=kong
ENV KONG_PG_USER=kong
ENV KONG_PG_PASSWORD=kong

# Expor as portas do Kong
EXPOSE 8000 8443 8001 8444

# Inicialização do Kong (garantindo que as migrações sejam executadas)
CMD kong reload || kong migrations bootstrap && kong reload

