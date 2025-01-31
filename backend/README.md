# Goroにゃーん Backend

コンテナ起動
```shell
docker compose up --build
```

コンテナ終了
```shell
docker compose down
```

デプロイ
```shell
docker build -t goronyan .

gcloud run deploy ai-agent-hackathon \
  --source . \
  --region asia-northeast1 \
  --allow-unauthenticated
```
