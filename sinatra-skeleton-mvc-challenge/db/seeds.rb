user_1 = User.create(email: "d@me.com", firstname: "daniel", lastname: "abi", handle: "@nono", image_link: "/d.png", password:"123" )

user_2 = User.create(email: "l@me.com", firstname: "andres", lastname: "bcrypt", handle: "@coco", image_link: "/e.png",password:"123")

user_3 = User.create(email: "f@me.com", firstname: "fernanda", lastname: "fanny", handle: "@foo", image_link: "/f.png",password:"123")

user_1.chirps << Chirp.create(content: "I'm a chirp 1")
user_2.chirps << Chirp.create(content: "I'm a chirp 2")
user_3.chirps << Chirp.create(content: "I'm a chirp 3")

Relation.create(stalker_id: 1, victim_id:2)
Relation.create(stalker_id: 2, victim_id:1)
Relation.create(stalker_id: 1, victim_id:3)
