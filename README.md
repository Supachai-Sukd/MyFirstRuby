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
เช่น first_name. last_name ตัวนี้จะ limit 1
ตัวแปรที่ใช้ find_by สามารถ Destroy ได้

Get all example แบบนี้เราจะได้เป็น Object ออกมา เราต้องเอาไป .map ออกมา
```
User.all
```

???
```
User.reload
```


Method ที่น่าสนใจ

ถามว่า User object นี้เคยบันทึกลง Database หรือยัง
```
user.new_record?
```

ถาม User ว่า User object นี้เคยถูกเปลี่ยนแปลงค่าหรือไม่ หลังจากที่ save หรือ load จาก database 
หากลอง save แล้วทดสอบด้วย method นี้อีกครั้งจะได้เป็น false 
```
user.changed?
```

Query หาข้อมูลที่ต้องการจาก Database โดยที่ข้อมูลที่ได้มาจะเป็น Array สิ่งที่หาจะเป็น Case sensitive เท่านั้น
ต่อให้ดึงค่าออกมาแล้วไม่เจอก็จะยังได้อยู่ดีแต่ว่าเป็น .count เท่ากับ 0
```
User.where()
```



* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
