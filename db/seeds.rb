# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(username: "Nico")
    
kant = Philosopher.create(name: "Immanuel Kant", image:"https://upload.wikimedia.org/wikipedia/commons/4/43/Immanuel_Kant_%28painted_portrait%29.jpg", user: user)

kant.thoughts.create(idea: "Defined the “Categorical imperative,” the idea that there are intrinsically good and moral ideas to which we all have a duty, and that rational individuals will inherently find reason in adhering to moral obligation;
Argued that humanity can achieve a perpetual peace through universal democracy and international cooperation;
Asserted that the concepts of time and space, as well as cause and effect, are essential to the human experience, and that our understanding of the world is conveyed only by our senses and not necessarily by the underlying (and likely unseen) causes of the phenomena we observe.", category: "Enlightenment", philosopher: kant)

nietzsche = Philosopher.create(name: "Friedrich Nietzsche", image:"https://miro.medium.com/max/1400/1*C8ZAGjKjLRRoVoeOZayp5g.jpeg", user: user)

nietzsche.thoughts.create(idea: "Favored perspectivism, which held that truth is not objective but is the consequence of various factors effecting individual perspective;
       Articulated ethical dilemma as a tension between the master vs. slave morality; the former in which we make decisions based on the assessment of consequences, and the latter in which we make decisions based on our conception of good vs. evil;
       Believed in the individual’s creative capacity to resist social norms and cultural convention in order to live according to a greater set of virtues.", category: "existentialism", philosopher: nietzsche)
       

       10.times do
              Todo.create(task: 'This is a seeded, default task')
            end

            puts 'ayoooo'