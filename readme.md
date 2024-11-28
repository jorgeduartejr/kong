# Projeto Kong

## Introdução
Este é o projeto Kong, um servidor de API Gateway. Este README irá guiá-lo sobre como iniciar o projeto, subir o localhost e descrever todas as features disponíveis.

## Pré-requisitos
- Docker
- Docker Compose

## Como iniciar

### 1. Clone o repositório
```bash
git clone https://github.com/seu-usuario/kong.git
cd kong
```

### 2. Configure as variáveis de ambiente
Crie um arquivo `.env` na raiz do projeto e adicione as variáveis necessárias:
```
DATABASE_URL=postgres://user:password@localhost:5432/kong
```
### 2.1. Subir com PostgreSQL
Para subir o Kong com PostgreSQL, certifique-se de que o serviço do PostgreSQL está rodando e configurado corretamente. Em seguida, inicie os containers com o comando:
```bash
docker-compose -f docker-compose.yml up -d
```

### 2.2. Subir em modo DB-less
Para subir o Kong em modo DB-less, utilize o arquivo de configuração específico para este modo. Inicie os containers com o comando:
```bash
docker-compose -f docker-compose2.yaml up -d
```
### 3. Inicie os containers
```bash
docker-compose up -d
```

### 4. Acesse o localhost
O Kong estará disponível em `http://localhost:1337`.

## Features

### 1. Roteamento de Requisições
Kong permite rotear requisições para diferentes serviços backend.

### 2. Autenticação
Suporte a múltiplos métodos de autenticação, incluindo API keys e OAuth2.

### 3. Limitação de Taxa
Controle de taxa de requisições para evitar sobrecarga no backend.

### 4. Monitoramento e Logging
Integração com ferramentas de monitoramento e logging para análise de tráfego.

### 5. Plugins
Suporte a diversos plugins para estender as funcionalidades do Kong.

## Contribuição
Contribuições são bem-vindas! Por favor, abra uma issue ou envie um pull request.

## Licença
Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.
