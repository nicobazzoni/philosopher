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
            "favorite": " ",
            "notes": " ",
            "team_name": "Enlightenement"
          },
          {
            "id": 2,
            "name": "Friedrich Nietzsche",
            "idea": "Will to Power, Eternal Return",
            "image": "https://miro.medium.com/max/1400/1*C8ZAGjKjLRRoVoeOZayp5g.jpeg",
            "favorite": " ",
            "notes": " ",
            "team_name": "Existentialism"
          },
          {
            "id": 3,
            "name": "Soren Kierkergaard",
            "idea": "teleological suspension of ethics.",
            "image": "https://www.americamagazine.org/sites/default/files/main_image/kierk.png",
            "favorite": " ",
            "notes": " ",
            "team_name": " Christian Existentialism"
          },
          {
            "id": 4,
            "name": "Plato",
            "idea": "Know thyself, forms",
            "image": "https://cdn.britannica.com/w:400,h:300,c:crop/88/149188-050-05FF7D99/Plato-portrait-bust-original-Capitoline-Museums-Rome.jpg",
            "favorite": " ",
            "notes": " ",
            "team_name": "Ancient Philosophy"
          },
          {
            "id": 5,
            "name": "Husserl",
            "image": "https://i.pinimg.com/originals/6d/60/0e/6d600e21892f46d7f0184d346804e29d.jpg",
            "idea": "logic",
            "favorite": " ",
            "notes": " ",
            "team_name": "Phenomenology"
          }
         
          
        
        ]

philosophers.each do |philosopher|
    Philosopher.create(philosopher)
end