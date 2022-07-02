# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* CLI

Create model
```
rails generate model User first_name:text last_name:text
```

Run migrate
````
rails db:migrate
````

Rollback migrate
```
rails db:rollback 
```

ถ้าจะ rollback 5 ครั้วให้ทำ
STEP=5 ต่อท้าย
```
rails db:rollback STEP=5
```

Rollback เวอชันเดียว
```
rails db:migrate:down VERSION=YYYYMMDDHHmmss
```

Create migration file example
หากเราขึ้นต้นด้วย Add ต่อด้วย To ลงท้ายด้วยชื่อ Model ที่ถูกต้อง Rails จะเดาว่าเราต้องการแก้ไข Model ไหน โดยที่เราไม่ต้องไปพิมพ์ 3 บรรทัดเอง หากจะลบ Column ให้ขึ้นต้นด้วย Remove ต่อด้วยคำว่า From ลงท้ายด้วย Model
```
rails generate migration AddDobToUser date_of_birth:date
rails g migration RemoveTitleFromUser title:text
```

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
