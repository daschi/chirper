user_1 = User.create(email: "d@me.com", firstname: "d", lastname: "a", handle: "@n", image_link: "/d.png")

user_2 = User.create(email: "l@me.com", firstname: "a", lastname: "b", handle: "@c", image_link: "/e.png")

user_3 = User.create(email: "f@me.com", firstname: "f", lastname: "f", handle: "@f", image_link: "/f.png")

user_1.chirps << Chirp.create(content: "I'm a chirp 1")
user_2.chirps << Chirp.create(content: "I'm a chirp 2")
user_3.chirps << Chirp.create(content: "I'm a chirp 3")
