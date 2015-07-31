user_1 = User.create(email: "d@me.com", firstname: "Derek", lastname: "Reeves", handle: "@dreeves", image_link: "/d.png", password: "dbc")

user_2 = User.create(email: "l@me.com", firstname: "Brick", lastname: "Thornton", handle: "@brock", image_link: "/e.png", password: "dbc")

user_3 = User.create(email: "f@me.com", firstname: "Darryl", lastname: "Meeves", handle: "@blacktshirt", image_link: "/f.png", password: "dbc")

user_1.chirps << Chirp.create(content: "I am princess monster truck")
user_2.chirps << Chirp.create(content: "I'm a chirp y'all")
user_3.chirps << Chirp.create(content: "Cats? CATS! Cats cats cat.")
