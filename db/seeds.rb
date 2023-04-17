# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Questions Seed
q1 = Question.create!(
    title: 'Which is the best Anime of 2022-23 season?',
    desc: 'I want to know which one is the best anime from this season so that I can watch that anime. I am kinda confuse on so many animes.'
)

q1_answer1 = Answer.create!(
    title: 'Demon Slayer',
    question: q1
)

q1_answer2 = Answer.create!(
    title: 'Suayeb\'s Sword',
    question: q1
)

q2 = Question.create!(
    title: 'Which is the best Anime of 2022-23 season?',
    desc: 'I want to know which one is the best anime from this season so that I can watch that anime. I am kinda confuse on so many animes.'
)

q2_answer1 = Answer.create!(
    title: 'Demon Martyr',
    question: q2
)

Convention.create!(
    price: 30,
    title: 'Anime Blues',
    description: 'Anime Blues Con returns July 7th - 9th, 2023 to the newly renovated Renasant Convention Center! (Formally, the Memphis Cook Convention Center) After a fresh coat of paint, we can’t wait to see you all again!',
    link: 'https://animeblues.com'
)
Convention.create!(
    price: 40,
    title:'OmniCon',
    description:'Omnicon is a multi-genre convention held in Cookeville, TN every Spring. It is hosted by the geeky group known as Alpha Psi Phi at Tennessee Tech University. We are slated for April 22nd and 23rd 2023!',
    link: 'https://www.omnicontn.com'
)
Convention.create!(
    price: 45,
    title:'Akai Con',
    description:'Obsessed with fandom? SO ARE WE. AKAICON PROVIDES A SAFE-HAVEN FOR ALL. INVITE YOUR FRIENDS, FINISH YOUR COSPLAY, MAKE NEW MEMORIES, AND BECOME FAMILY.',
    link: 'http://akaicon.com'
)
Convention.create!(
    price: 80,
    title:'Anime Expo',
    description:'Bringing fans and industry together to celebrate Japanese pop culture. Los Angeles, California July 1-4, 2023',
    link: 'https://www.anime-expo.org'

)