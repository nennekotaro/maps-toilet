# README

# アプリケーション名
トイレにいっといれアプリ

# アプリケーション概要
現在位置から近くにあるトイレをマップ上に表示するwebアプリ

新しいトイレを登録できたり、男女共用や別、幼児設備の有無など確認できる機能が付いている

# URL
https://maps-toilet.onrender.com

# テスト用アカウント
Basic認証パスワード：2222

Basic認証ID：admin

メールアドレス： ggg@ggg

パスワード ggg111

# 利用方法

## トイレの情報を登録する
---
1.トップページのヘッダーからユーザー新規登録を行う

2.「自慢のトイレを登録しよう」ボタンから、トイレ情報の必須項目(住所、タイトル、説明文)と

任意項目(洋式和式、ウォシュレット、暖房便座、幼児設備、男女共用別、多機能トイレ、パウダールーム、 除菌クリーナー、トイレットペーパー、スリッパ)を入力し、投稿する

3.入力された住所をもとに、緯度経度を算出。トップページのGoogleマップにその住所にトイレマーカーが表示される

### トイレを探す
---
1.トップページのGoogleマップには、現在位置とその位置にマーカーが表示される

2.Googleマップには、登録されたトイレマーカーが表示され、近くのトイレはどこにあるのか確認できる

3.トイレマーカーをクリックすると、下部に登録されたトイレ情報が表示され、幼児設備等が存在しているのか確認ができる

# アプリケーションを作成した背景
前職の営業時代、外回りの最中にトイレで悩まされることが多かった。
近年、コンビニで利用できるトイレも減ってしまい、公衆トイレは未だに和式のトイレであることも多くなかなか綺麗で使いやすいトイレを見つけられなかった。
友人等にヒアリングしてみると、旅行先でトイレで悩むことがあったり、幼児を連れているとベビーチェア等が存在しているのか確認することに手間を感じている人が多いと分かった。
近くのトイレを探し出せて、設備の情報が確認できるアプリがあればと考え、トイレにいっといれアプリを開発することにした。

# 洗い出した要件
要件定義をまとめたスプレッドシートのリンク
https://docs.google.com/spreadsheets/d/1yCXOJZwOA0XiDjhwHnYCtvjv8ed2rR3Xor5gt8B2rfU/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明

1.トップページのヘッダーからユーザー新規登録を行う
[![Image from Gyazo](https://i.gyazo.com/568face54fa91c5238b931b4fea6a6b1.gif)](https://gyazo.com/568face54fa91c5238b931b4fea6a6b1)


2.「自慢のトイレを登録しよう」ボタンから、トイレ情報の必須項目(住所、タイトル、説明文)と任意項目(洋式和式、ウォシュレット、暖房便座、幼児設備、男女共用別、多機能トイレ、パウダールーム、 除菌クリーナー、トイレットペーパー、スリッパ)を入力し、投稿する

入力された住所をもとに、緯度経度を算出。トップページのGoogleマップにその住所にトイレマーカーが表示される
[![Image from Gyazo](https://i.gyazo.com/a92bbca61e2e5c232db2a26000d9f48e.gif)](https://gyazo.com/a92bbca61e2e5c232db2a26000d9f48e)


1.トップページのGoogleマップには、現在位置とその位置にマーカーが表示される。
Googleマップには、登録されたトイレマーカーが表示され、近くのトイレはどこにあるのか確認できる
  [![Image from Gyazo](https://i.gyazo.com/60b7944309612c4bb45acae47192f996.gif)](https://gyazo.com/60b7944309612c4bb45acae47192f996)



# 実装予定の機能
1.  トイレマーカーをクリックすると、トイレの情報を確認できる機能を開発中
その後は、編集機能や削除機能、コメント機能を実装予定

2.  長期的な実装予定機能

    1.TOTO様と連携して、より詳細なトイレ情報を公開できればと考えています。

    2.知人のヒアリングの結果、海外旅行でトイレに悩まされることが多いと分かったので、海外でも利用できるようなトイレマップアプリにしていきたい

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/82a2c48f69b7d18e8aad24b2ff2cea61.png)](https://gyazo.com/82a2c48f69b7d18e8aad24b2ff2cea61)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/d0bf933bb7e67f543dc59ab3a162d8d7.png)](https://gyazo.com/d0bf933bb7e67f543dc59ab3a162d8d7)

# 開発環境
・フロントエンド：HTML/CSS, JavaScript

・バックエンド：Ruby, Ruby on Rails, Geocoding

・インフラ：render

・テスト：RSpec, FactoryBot, Faker

・タスク管理：gitHub

# ローカルでの動作方法
以下のコマンドを順に実行。

% git clone https://github.com/nennekotaro/maps-toilet

% cd maps-toilet

% bundle install

% yarn install

# 工夫したポイント
1.  ユーザーが実際にアプリを利用することを考えて作りました

    ・トップページのGoogleマップが現在位置から始まるのは、このアプリを使用するタイミングが一番トイレに行きたいと考えたからです。
    現在位置から一番近いトイレを探し出し、向かるように工夫いたしました。

2.  利用するユーザーは、旅行中や休日の若年層を対象にしました。

    1.最近の若年層は清潔好きな人が増えているため、除菌クリーナー有無をトイレ情報に登録できるようにしました。

    2.子供連れの親のために、ベビーチェアとおむつ交換台の有無、又男性トイレにもあるかどうか確認できるようにしました。

    3.アプリ名やGoogleマップのマーカーは若年層が親しみやすいデザインにしました。
