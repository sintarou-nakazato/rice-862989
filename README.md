# RICE-862989
# アプリケーション名
  rice-862989	
# アプリケーション概要
<p>・料理した食べ物を投稿できる</p>
<p>・投稿者の投稿詳細画面でコメントができる</p>
<p>・名前を押すと、その名前のユーザーの詳細が見れる</p>

# URL
https://rice-862989.herokuapp.com/


# テスト用アカウントの情報
<h4>ヘッダーから新規登録</h4>
<p>・メールアドレス</p>
<P>・パスワード</p>
<p>・ユーザー名</p>
<p>・プロフィール</p>
<p>を記載し保存</p>
<h4>Basic認証</h4>
<p>ID名 = nakazato</p>
<p>Pass = 8629</p>

# 利用方法

<h4>ユーザー登録</h4>
<p>・メールアドレスが一意性であり、@を含む必要がある</p>
<p>・パスワードは６字以上の半角英数字混合で設定</p>
<p>・メールアドレス、パスワード、ユーザー名、プロフィールが必須</p>
<h4>ユーザー投稿</h4>
<p>・作った料理の画像を貼り付け、料理名、などを記入し、投稿する</p>
<p>・自分や他のユーザーの投稿した見る事ができる</p>
<p>・投稿した画像を選択する事で、投稿した料理の詳細でコメントができる</p>
<p>・自分が投稿した内容を編集、削除ができる</p>
<p>・ユーザー名を選択する事でそのユーザーの情報、過去に投稿した料理を見る事ができる</p>


# 目指した課題解決
<h3>・不健康な食事を解決する為に作成</h3>
<h4>ペルソナ</h4>
<p>・自分が作った料理をみんなに見てもらいたい</p>
<p>・料理に関して興味がある人コミュニケーションを取りたい人</p>
<h4>ペルソナの課題</h4>
<p>・閲覧者に見やすくる必要がある</p>
<p>・投稿した料理ログインしている人がコメントできる要する必要がある</p>


# 洗い出した要件
<h3>ペルソナの課題を基に洗い出したユーザーストーリーと具体的な機能</h3>
<h4>ユーザーストーリー</h4>
<p>1.ユーザ一人一人を管理する必要がある</p>
<p>2.ユーザーは作った料理を投稿する必要がある</p>
<p>3.一人のユーザーに対し多くのユーザーがコメントできる必要がある</p>
<h3>機能</h3>
<p>1.ユーザー管理機能</p>
<p>2.投稿機能</p>
<p>3.コメント機能</p>

# 実装済みの機能
<h3>ユーザ管理機能</h3>
<h4>概要</h4>
<p>・ユーザーを一人一人の情報を管理する機能</p>
<h4>詳細</h4>
<p>・ユーザーの情報、メールアドレス、パスワード、ユーザー名、プロフィールを管理することができる</p>
<p>・メールアドレス、パスワード、ユーザー名、プロフィールが存在していない場合や、メールアドレスが既に存在する場合は、エラーが表示される</p>
<h4>現状の問題点</h4>
<p>・架空のメールアドレスでも登録することができる</p>

![](https://i.gyazo.com/e5d4fbc1fcd81c9f521fa3cabfc2d16d.png)

![](https://i.gyazo.com/106d655f805ef01d7a4663e8411d2987.png)



<h3>投稿機能</h3>
<h4>概要</h4>
<p>・ユーザーの料理を投稿する機能</p>
<h4>詳細</h4>
<p>・料理名、キャッチコピー、レシピ、画像を管理することができる</p>
<p>・料理名、キャッチコピー、レシピ、画像がなければエラーが表示される</p>
<p>・投稿したらトップページの更新順で表示される</p>
<p>・投稿したら、トップページに料理名、キャッチコピー、レシピ、画像、投稿した時刻を表示される</p>
<p>投稿者の名前を選択すると、そのユーザの詳細を見ることができる</p>
<h4>現状の問題</h4>
<p>・複数まいの画像を投稿できない</p>

![](https://i.gyazo.com/648edea2f17e394c4976430a456a6518.png)

![](https://i.gyazo.com/3fa996605a7a2832f97bc973435821db.jpg)

![](https://i.gyazo.com/0796debe76160576dabcec2d7163d29b.jpg)

<h3>コメント機能</h3>
<h4>概要</h4>
<p>・ユーザーの投稿に対し複数のユーザーがコメントできる</p>
<h4>詳細</h4>
<p>・コメントが空なら表示されない</p>
<h4>現状の問題</h4>
<p>・自分のコメントを削除できない</p>

![](https://i.gyazo.com/96d766181c0ab66f24203820dc7b068b.jpg)

<h3>実装予定の機能</h3>
<h4>・複数まいの画像を投稿する機能</h4>
<h5>概要</h5>
<p>・ユーザーが投稿する時、複数枚の画像を投稿する機能</p>
<h5>詳細</h5>
<p>・複数まいの画像を投稿することで、いろんな角度から見てもらえる</p>
<h4>・投稿に対してのいいね機能</h4>
<h5>概要</h5>
<p>・ユーザーに対する評価を目で確かめることができる機能</p>
<h5>詳細</h5>
<p>・薄いハートのボタンをクリックすることでピンクのハートになる</p>
<h4>・ユーザーのお気に入り機能</h4>
<h5>概要</h5>
<p>・気になった投稿を保管できる機能</p>
<h5>詳細</h5>
<p>・投稿者の投稿をお気に入りすることでいつでもその投稿を見ることができる</p>





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