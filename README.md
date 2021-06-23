# RICE-862989
# アプリケーション名
  rice-862989	
# アプリケーション概要
・料理した食べ物を投稿できる
・投稿者の投稿詳細画面でコメントができる
・名前を押すと、その名前のユーザーの詳細が見れる
・

URL	デプロイ済みのURLを記述。デプロイが済んでいない場合は、デプロイが完了次第記述すること。
テスト用アカウント	ログイン機能等を実装した場合は、ログインに必要な情報を記述。またBasic認証等を設けている場合は、そのID/Passも記述すること。
利用方法	このアプリケーションの利用方法を記述。
目指した課題解決	このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記述。
洗い出した要件	スプレッドシートにまとめた要件定義を記述。
実装した機能についての画像やGIFおよびその説明	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。画像はGyazoで、GIFはGyazoGIFで撮影すること。
実装予定の機能	洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記述。
データベース設計	ER図等を添付。
ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。


# テーブル設計

##usersテーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | NOT: NULL   |
| password   | string | NOT: NULL   |
| name       | string | NOT: NULL   |
| profile    | text   | NOT: NULL   |

##foodテーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| title      | string     | NOT: NULL   |
| catch_copy | text       | NOT: NULL   |
| menu       | text       | NOT: NULL   |
| user       | references |             |


##commentsテーブル
| Column     | Type       | Options     |
| ---------- | ---------- | ------------|
| text       | text       | NOT: NULL   |
| user       | references |             |
| food       | references |             |