# テーブル設計

### users テーブル

| Columname  | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association

- has_many : prototypes
- has_many : comments


### prototypes テーブル

| Columname  | Type          | Options     |
| ---------- | ------------- | ----------- |
| title      | string        | null: false |
| catch_copy | text          | null: false |
| concept    | text          | null: false |
| image      |               |             |
| user       | references    |             |

### Association

- has_many : comments
- belongs_to : users


### comments テーブル

| Columname | Type       | Options     |
| --------- | ---------- | ----------- |
| text      | text       | null: false |
| user      | references |             |
| prototype | references |             |

### Association

- belongs_to : users
- belongs_to : prototypes
