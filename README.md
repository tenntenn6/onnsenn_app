# アプリケーション名

 HOT  TATOO  

## アプリケーション概要

ファッションタトゥーがあっても入れる、温泉施設検索アプリ

## URL
https://onnsenn-app.onrender.com/

## テスト用アカウント

* Basic認証パスワード : admin
* Basic認証ID : 2222 
* メールアドレス : nnaa@ezweb.ne.jp
* パスワード :zzz111



## 利用方法  

1\. トップページ（一覧ページ）のフッダーから、事業者が新規登録を行う  
2\. フッターから、マイページに入る  
3\. マイページから温泉施設登録フォームに入る  
4\. フォームに温泉施設の基本情報を入力し、登録ボタンを押して登録する  
5\. トップページに温泉施設一覧が表示される  
6\. 施設情報はマイページから編集・削除が可能  
7\. ユーザーはトップページにある検索フォームを使って、最寄・目当ての温泉施設を検索する

## アプリケーションを作成した背景 

このアプリを作る狙いについては「インバウンドと温泉施設のマッチング」です。
  

作ろうと思ったきっかけは、小さなファッションタトゥがあることで温泉施設での入浴を断られ、寂しい思いをしている身内を見たことがきっかけでした。


外国人観光客の方にもタトゥがあることで、日本の素晴らしい温泉を楽しむ機会を失っているかもしれません。アメリカ人は３人に１人がタトゥを入れているという統計もあり、決して少なくない数であると考えました。  

そこで考案したのが、今回のアプリです。
インバウンド客や日本のタトゥを入れている方のニーズを掘り起こし、集客を増やしたい温泉施設とマッチングさせることが目的です。


時代の流れもあり、今後は需要が伸びてくることを見込んでいます。
  

## 実装した機能についての画像やGIF、およびその説明

* 温泉施設の一覧表示機能  
![Image from Gyazo](https://i.gyazo.com/0e07051ddf17e7b70a262c80f891fb7b.jpg)

* 詳細ページ  
![Image from Gyazo](https://i.gyazo.com/f9f59f380e1b08485c7575eb637eaca9.gif)

* 事業者の会員登録  
![Image from Gyazo](https://i.gyazo.com/394a1e67bcf02e9408afcdd1d0a6a77c.gif)

* ログイン機能  
![Image from Gyazo](https://i.gyazo.com/0a00c20482bd4b2a397c43f1bc623dcf.gif)

* ログアウト機能  
![Image from Gyazo](https://i.gyazo.com/74547da71bdd72f9956a87f1fd5f7055.gif)

* マイページ  
![Image from Gyazo](https://i.gyazo.com/0a8a55ae020371e03ec2ff301f1b5203.gif)

* 温泉施設の新規登録機能  
![Image from Gyazo](https://i.gyazo.com/21e551131092a4202c065b940a52dc49.gif)

* 検索機能  
![Image from Gyazo](https://i.gyazo.com/d1d8b0284e46575af0ef0e7771fc37d4.gif)


## データベース設計 

[![Image from Gyazo](https://i.gyazo.com/c7dda5bb01eacfe7e3a486570f9f6c64.png)](https://gyazo.com/c7dda5bb01eacfe7e3a486570f9f6c64)

## 画面遷移図  　

[![Image from Gyazo](https://i.gyazo.com/419a917f0dac471f682e748f36246832.png)](https://gyazo.com/419a917f0dac471f682e748f36246832)

## 開発環境

* フロントエンド
* バックエンド
* インフラ
* テスト
* テキストエディタ


## ローカルでの動作方法

以下のコマンドを順に実行。  
% git clone https://github.com/tenntenn6/onnsenn_app  
% cd onnsenn_app  
% bundle install  
% rails db:create  
% rails db:migrate  
% rails s  
% yarn install

## 工夫したポイント

* メインの温泉施設の情報が際立つよう、ブラウザは落ち着いた雰囲気で作成
* 直感的な操作ができるようなブラウザ 


## 改善点・追加実装

* 外国人にも使えるよう、さまざまな外国語表記の切り替えができるようにする
* 地図アプリとの連動
* 施設情報にボリュームを持たせる

## 制作時間

* 約10日間







