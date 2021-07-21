# MeshiQu!!
アフターコロナの飲食業界を盛り上げるマッチングアプリ

## 実行手順

### コンテナをビルド
`docker-compose build`

### コンテナの起動
`docker-compose up -d`

### DB作成
`docker-compose run web rails db:create`

### マイグレーションファイルを反映
`docker-compose run web rails db:migrate`

### seedの読み込み
`docker-compose run web rails db:seed`

### サーバの停止
`docker-compose down`

### rubocop
`docker-compose run web　bundle exec rubocop -a`