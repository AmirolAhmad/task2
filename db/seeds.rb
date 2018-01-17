User.create!(username: 'user1',
             email: 'user1@mail.com',
             password: 'mi860704',
             password_confirmation: 'mi860704')

User.create!(username: 'user2',
            email: 'user2@mail.com',
            password: 'mi860704',
            password_confirmation: 'mi860704')

Article.create!(user_id: 1,
                name: "first article",
                price: "30$",
                description: "something")

Article.create!(user_id: 2,
                name: "second article",
                price: "4200$",
                description: "something2")

Article.create!(user_id: 1,
                name: "third article",
                price: "1200$",
                description: "something3")
