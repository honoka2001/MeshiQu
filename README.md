# MeshiQu!!
アフターコロナの飲食業界を盛り上げるマッチングアプリ
アプリ内で発行される飲食店のクーポンを利用し、学生が食事会を募集できるWebアプリケーションです。

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
