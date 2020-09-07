# 開発環境
下記コマンドで構築
```bash
cp docker-compose-sample.yml docker-compose.yml
docker-compose run --rm app sh -c 'composer install && npm i'
docker-compose up -d
```