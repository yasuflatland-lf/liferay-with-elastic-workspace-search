# Elastic Workplace Search
Elastic Workspace Search integrate multiple services at once place. By using this feature, enable multiple repository search on Liferay 7.3

# Tested Environment
- macOS Big Sur (11.4) or higher
- Docker 3.5.1 or higher
- MacBook Pro (16-inch, 2019) Memory 32GB

# Quick Start
1. Copy `.env.example` to `.env`
1. Generate secret key as below.
    ```
    openssl rand -hex 32
    ```
1. Configure the generated number `ENCRYPTION_KEYS` value in `.env`.
1. Run
    ```
    docker-compose --env-file ./.env up --build
    ```
