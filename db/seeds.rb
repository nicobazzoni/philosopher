# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    
        philosophers = [
          {
            "id": 1,
            "name": "Immanuel Kant",
            "idea": "Categorical Imperitave",
            "image": "https://upload.wikimedia.org/wikipedia/commons/4/43/Immanuel_Kant_%28painted_portrait%29.jpg",
            "likes": 24,
            "notes": " "
          },
          {
            "id": 2,
            "name": "Friedrich Nietzsche",
            "idea": "Will to Power, Eternal Return",
            "image": "https://miro.medium.com/max/1400/1*C8ZAGjKjLRRoVoeOZayp5g.jpeg",
            "likes": 36,
            "notes": " "
          },
          {
            "id": 3,
            "name": "Soren Kierkergaard",
            "idea": "teleological suspension of ethics.",
            "image": "https://www.americamagazine.org/sites/default/files/main_image/kierk.png",
            "likes": 7,
            "notes": " "
          },
          {
            "id": 4,
            "name": "Plato",
            "idea": "Know thyself, forms",
            "image": "https://cdn.britannica.com/w:400,h:300,c:crop/88/149188-050-05FF7D99/Plato-portrait-bust-original-Capitoline-Museums-Rome.jpg",
            "likes": 500,
            "notes": " "
          },
          {
            "id": 6,
            "name": "Husserl",
            "image": "https://i.pinimg.com/originals/6d/60/0e/6d600e21892f46d7f0184d346804e29d.jpg",
            "idea": "logic",
            "likes": 501,
            "notes": " "
          },
          {
            "name": "nico",
            "image": "https://lumiere-a.akamaihd.net/v1/images/open-uri20150422-20810-enmr1e_871e8eac.jpeg?region=0%2C0%2C450%2C450",
            "idea": "how bout that! ",
            "likes": 2,
            "id": 7,
            "notes": " "
          },
          {
            "name": "nico",
            "image": "https://images-na.ssl-images-amazon.com/images/I/71gmZQiw3oL.__AC_SX300_SY300_QL70_FMwebp_.jpg",
            "idea": "how bout that! ",
            "likes": 4,
            "id": 8
          }
        
        ]

philosophers.each do |philosopher|
    Philosopher.create(philosopher)
end