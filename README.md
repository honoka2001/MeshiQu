# MeshiQu!!
アフターコロナの飲食業界を盛り上げるマッチングアプリ

## 実行手順

### コンテナをビルド
`docker-compose build`

### コンテナの起動
`docker-compose up`

### DB作成
`docker-compose run web rails db:create`

### マイグレーションファイルを反映
`docker-compose run web rails db:migrate`

### サーバの停止
`docker-compose down`