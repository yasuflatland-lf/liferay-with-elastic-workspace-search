# Elastic Workplace Search
Elastic Workspace Search integrate multiple services at once place. By using this feature, enable multiple repository search on Liferay 7.3

# Tested Environment
- macOS Big Sur (11.4) or higher
- Docker 3.5.1 or higher
- MacBook Pro (16-inch, 2019) Memory 32GB
# Precondition 
Before running images, please configure Docker as follows.
1. Go to `Preference -> Resources`.
1. Allot resources as follows.
   | Item | Value |
   |:-- |:-- |
   |CPU | More than half of the max. If it's 12 cpus, allot 6 cpus |
   |Memory | More than half of the max. If 32GB memory, more than 16GB, ideally 20GB |
   |Swap | 2GB |
   |Disk Image | 60GB |
# Quick Start
1. Copy `.env.example` to `.env`
1. Generate secret key as below.
    ```
    openssl rand -hex 32
    ```
1. Configure the generated number `ENCRYPTION_KEYS` value in `.env` and `kibana/kibana.yml`.
1. Place reqired files
   - For DXP, please place a Liferay DXP license file at `./liferay/deploy`. 
1. Run Liferay
    ```
    docker-compose --env-file ./.env up --build
    ```
    Or
    ```
    make run
    ```
# Access Servers
## Elasticsearch Workspace Search
Access to `http://localhost:3002/` and login with `enterprise_search` and `password2222`

## Liferay DXP
Access to `http://localhost:8080` and login with `test@liferay.com` and `test`


# Trouble shootings
## Confirm services & fixes
1. Access to `http://localhost:9200/` and the basic authentication should be required. Login with `elastic` and `password1111`.
1. Access to kibana service `http://localhost:5601/`, Login with `elastic` and `password1111`
1. Access to `http://localhost:3002/` and login with `enterprise_search` and `password2222`
1. Connect to mysql and confirm table `lrportal` is created.
1. Access to `http://localhost:8080` and login with `test@liferay.com` and `test`

     **Can't connect to elastic search server Fixes:** Tel-net to liferay container and ping `http://elasticsearch:9200`

     **DB related error Fixes:** Connect to mysql server and recreate table `lrportal`