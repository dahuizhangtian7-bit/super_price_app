# アプリケーション名
super_price_app

# アプリケーション概要
スーパーに売られている商品の情報を登録することで、商品価格を一覧で比較できる。

# 利用方法

### 新規登録
1、商品とスーパーの情報を登録する  
2、1で登録した情報を元に価格を登録する

# アプリケーションを作成した背景
自分がいつものスーパーで買い物をしているときに、他のスーパーでは商品がどれくらいの価格で売られているのかが気になった。このことをきっかけに、買い物を予定している人へ向けて、スーパーごとに一覧で価格を表示・比較できることで、計画を立てるサポートができるアプリケーションを開発しようと思った。


# 実装した機能についての画像およびその説明
[![Image from Gyazo](https://i.gyazo.com/af45100a9e283d223b67b9d15e3a1730.png)](https://gyazo.com/af45100a9e283d223b67b9d15e3a1730)
最安値を緑色、最高値を赤色で表示しています

# 実装予定の機能
現在、ビューの改善中。  
複数の商品を選択した時にスーパーごとの合計金額を出せる機能を実装予定。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/47cd626521c5cc286a0e37230d4e1548.png)](https://gyazo.com/47cd626521c5cc286a0e37230d4e1548)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/4998f66a0d14a9de365a762315442e87.png)](https://gyazo.com/4998f66a0d14a9de365a762315442e87)

# 開発環境
・Ruby  
・Ruby on Rails  
・Github

# ローカルでの動作方法
以下を順に実行する。  
% git clone https://github.com/dahuizhangtian7-bit/super_price_app.git  
% cd super_price_app  
% bundle install  
% rails db:create  
% rails db:migrate

# 工夫したポイント
商品価格一覧で、最安値と最高値にそれぞれ色がつくようにして、価格情報が分かりやすくなるようにした。また、最安値と最高値が同じときは色がつかないようにした。情報がないセルは、最安値と最高値の判断にいれないようにした。