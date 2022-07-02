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

Open rails console at root
```
rails console
rails c
```

Create user from rails console
เป็นการสร้าง Object จาก User Class
หลังจากสร้าง จะได้ Object กลับมาและมี Column ตาม Table ที่สร้างไว้
```
u = User.new
```

Commit object for save to database
```
u.save
```

Query user ออกมาดู 1 คน
```
User.find(:id)
User.find(1) 
u = User.find(1)
```

Add data example
```
u.first_name = 'Supachai'
```

Delete data example
```
u.destroy
```

หลังจาก Destroy จะยังใช้ u ได้อยู่เพราะ u ยังอยู่ใน memmory

ความแตกต่าง .save and .create
User.create() จะ return User Object ที่ถูกสร้างกลับมา โดยที่เราใส่ไว้ใน u1, u2 ได้ซึ่งเทียบ
เท่ากับการรัน User.new() และนำไป save

เราใช้ u3 ทำ User.new() ไว้ มันจะ return User Object ออกมา
แต่ถ้าเรา u3.save มันจะเป็น boolean บอกแค่ว่า save สำเร็จหรือไม่

๊User.find_by เป็น method สำหรับทุก Column ใน table ชื่อ user 
เช่น first_name. last_name 


* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
