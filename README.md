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
|prototype   | references |             |