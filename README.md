# MeshiQu!!
アフターコロナの飲食業界を盛り上げるマッチングアプリ

アプリ内で発行される飲食店のクーポンを利用し、学生が食事会を募集できるWebアプリケーションです。
### クーポン一覧
![MeshiQu!!-クーポン画面](https://user-images.githubusercontent.com/80940288/204327086-c41e7ca6-6929-4ead-84c2-b86567ed29a7.png)

### イベント一覧
![MeshiQu!!-イベント画面](https://user-images.githubusercontent.com/80940288/204327472-972c33e5-a393-4242-baca-1e284d0727ec.png)

### イベント参加

![MeshiQu!!-イベント参加画面](https://user-images.githubusercontent.com/80940288/204327025-7b79abc5-3b97-4f9d-b120-9a13df641bd5.png)

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
