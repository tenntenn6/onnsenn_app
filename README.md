# アプリケーション名

ファッションタトゥーとお風呂（仮）

# アプリケーション概要

ファッションタトゥがあっても入れる、温泉施設検索アプリ

# URL

[](https://onnsenn-app.onrender.com/)

# テスト用アカウント

* Basic認証パスワード : admin
* Basic認証ID : 2222 
* メールアドレス 
* パスワード

# 利用方法  

1\. トップページ（一覧ページ）のフッダーから、事業者が新規登録を行う
2\. 事業者専用のマイページにある投稿フォームに温泉施設の基本情報を入力し、投稿ボタンを押して投稿する
3\. トップページに温泉施設一覧が表示される
4\. ユーザーはトップページにある検索フォームを使って、最寄・目当ての温泉施設を検索する

# アプリケーションを作成した背景 

このアプリを作る狙いについては「インバウンドと温泉施設のマッチング」です。私は大の温泉好きなのですが、身内の中にも小さなファッションタトゥがあることで入浴できなくて寂しい思いをしている人がいます。外国人観光客の方にもタトゥがあることで、日本の素晴らしい温泉で楽しむ機会を失っているかもしれません。アメリカ人は３人に１人がタトゥを入れているという統計もあり、決して少なくない数であると考えました。  

そこで考案したのが、今回のアプリです。
インバウンド客や日本のタトゥを入れている方のニーズを掘り起こし、集客を増やしたい温泉施設とマッチングさせることが目的です。
時代の流れもあり、今後は需要が伸びてくることを見込んでいます。

# 実装した機能についての画像やGIF、およびその説明

# 実装予定の機能  

* 外国語の切り替え表示  
* 地図アプリの導入

# データベース設計  

# 画面遷移図  

##companiesテーブル
| Column                | Type   | Options                  |
| --------------------- | ------ | -------------------------|
| company_name          | string | null: false              |
| company_name_kana     | string | null: false|
| post_code             | string | null: false              |
| address               | string | null: false              |
| user_name             | string | null: false              |
| user_name_kana        | string | null: false              |
| telephone             | string | null: false              |
| email                 | string | null: false, unique: true|
| encrypted_password    | string | null: false              |


### Association
- has_many :spas

  


##spasテーブル
| Column             | Type      | Options                       |
| ------------------ | ----------| ------------------------------|
| name               | string    | null: false                   |
| detail             | text      | null: false                   |
| facility           | text      | null: false                   |
| business_hours     | text      | null: false                   |
| access             | text      | null: false                   |
| user               | references| null: false, foreign_key: true|


### Association
- belongs_to :company
- has_one_attached :image

# 開発環境

# ローカルでの動作方法

* 以下のコマンドを順に実行。  
* git clone  
* bundle install  
* yarn install

# 工夫したポイント

# 改善点

# 制作時間

#

#

#

#