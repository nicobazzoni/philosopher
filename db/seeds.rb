# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
philosophers = [
{
    "name": "Immanuel Kant",
    "idea": "Prussian-born (and therefore identified as a German philosopher), Kant is considered among the most essential figures in modern philosophy, an advocate of reason as the source for morality, and a thinker whose ideas continue to permeate ethical, epistemological, and political debate. What perhaps most distinguishes Kant is his innate desire to find a synthesis between rationalists like Descartes and empiricists like Hume, to decipher a middle ground that defers to human experience without descending into skepticism. To his own way of thinking, Kant was pointing a way forward by resolving a central philosophical impasse.

    Kant’s Big Ideas
    Defined the “Categorical imperative,” the idea that there are intrinsically good and moral ideas to which we all have a duty, and that rational individuals will inherently find reason in adhering to moral obligation;
    Argued that humanity can achieve a perpetual peace through universal democracy and international cooperation;
    Asserted that the concepts of time and space, as well as cause and effect, are essential to the human experience, and that our understanding of the world is conveyed only by our senses and not necessarily by the underlying (and likely unseen) causes of the phenomena we observe.",
    "book": "https://www.amazon.com/Critique-Pure-Reason-Penguin-Classics/dp/0140447474/?tag=tbs242-20",
    "image": "https://images-na.ssl-images-amazon.com/images/I/41yaac8jpiL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg",
    "team_name": "Old School"
},

{
"name": "Friedrich Nietzsche",

"idea": "(1844–1900)
Friedrich Nietzsche was a poet, cultural critic, and philosopher, as well as possessor of among the most gifted minds in human history. The German thinker’s system of ideas would have a profound impact on the Western World, contributing deeply to intellectual discourse both during and after his life. Writing on an enormous breadth of subjects, from history, religion and science to art, culture and the tragedies of Greek and Roman Antiquity, Nietzsche wrote with savage wit and a love of irony. He used these forces to pen deconstructive examinations of truth, Christian morality, and the impact of social constructs on our formulation of moral values. Also essential to Nietzshe’s writing is articulation of the crisis of nihilism, the basic idea that all things lack meaning, including life itself. This idea in particular would remain an important component of the existentialist and surrealist movements that followed.

Nietzsche’s Big Ideas
Favored perspectivism, which held that truth is not objective but is the consequence of various factors effecting individual perspective;
Articulated ethical dilemma as a tension between the master vs. slave morality; the former in which we make decisions based on the assessment of consequences, and the latter in which we make decisions based on our conception of good vs. evil
Believed in the individual’s creative capacity to resist social norms and cultural convention in order to live according to a greater set of virtues.",
    
 "book": "https://www.amazon.com/Birth-Tragedy-Spirit-Penguin-Classics/dp/0140433392/?tag=tbs242-20",
 "image": "https://miro.medium.com/max/1400/1*C8ZAGjKjLRRoVoeOZayp5g.jpeg",
 "team_name": "New School"
},
{
    "name": "Soren Kierkergaard",
    "idea": "A Danish theologian, social critic, and philosopher, Kierkegaard is viewed by many as the most important existentialist philosopher. His work dealt largely with the idea of the single individual. His thinking tended to prioritize concrete reality over abstract thought. Within this construct, he viewed personal choice and commitment as preeminent. This orientation played a major part in his theology as well. He focused on the importance of the individual’s subjective relationship with God, and his work addressed the themes of faith, Christian love, and human emotion. Because Kierkegaard’s work was at first only available in Danish, it was only after his work was translated that his ideas proliferated widely throughout Western Europe. This proliferation was a major force in helping existentialism take root in the 20th century.

    Kierkegaard’s Big Ideas
    Explored the idea of objective vs. subjective truths, and argued that theological assertions were inherently subjective and arbitrary because they could not be verified or invalidated by science;
    Was highly critical of the entanglement between State and Church;
    First described the concept of angst, defining it as a dread the comes from anxieties over choice, freedom, and ambiguous feelings.",

    "book": "https://www.amazon.com/Concept-Dread-S%C3%B8ren-Kierkegaard-ebook/dp/B00P71VV46/?tag=tbs242-20",
    "image": "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.philosophytalk.org%2Fblog%2Fkierkegaard&psig=AOvVaw3ErTl8cjVK4MJVciLsoa6K&ust=1629783791671000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCODi4PG3xvICFQAAAAAdAAAAABAD",
   "team_name": "Religious"
}
]

philosophers.each do |philosopher|
    Philosopher.create(philosopher)
end