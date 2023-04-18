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
    title: 'Which anime series revolves around a boy who sells his soul to a demon??',
    desc: 'I want to know Which anime series revolves around a boy who sells his soul to a demon?'
)

q2_answer1 = Answer.create!(
    title: 'Black Butler',
    question: q2
)

#<<<<<<< Omarcus123
Anime.create!(
    title:  'Bleach',
    summary: 'It follows the adventures of a teenager Ichigo Kurosaki, who inherits his parents destiny after he obtains the powers of a Soul Reaper—a death personification similar to the Grim Reaper—from another Soul Reaper, Rukia Kuchiki.',
    author: 'Noriyuki Abe',
    genre: 'Adventure, Supernatural',
    ratings: 'If you love good old shounen fights, then Bleach is for you. Im watching this after 17 years and was quite impressed with how well the story turned out even though I find it harder to get into older looking anime. I regret not finding it sooner and cherishing the impact that it would have created in my life.',
)

Anime.create!(
    title:  'Full Metal Alchemist',
    summary: 'Set in the early 20th century, in a fictional universe in which alchemy is a widely practiced science, the series follows the journey of two alchemist brothers, Edward and Alphonse Elric, who are searching for the philosophers stone to restore their bodies after a failed attempt to bring their mother back to life',
    author: 'Bones Studios',
    genre: 'Sci-fi and Fantasy',
    ratings: 'This is, without a doubt, the greatest TV show of all time, not even for just anime. ',
)

Anime.create!(
    title:  'Hunter x Hunter',
    summary: 'The story focuses on a young boy named Gon Freecss who discovers that his father, who left him at a young age, is actually a world-renowned Hunter, a licensed professional who specializes in fantastical pursuits such as locating rare or unidentified animal species, treasure hunting, or surveying unexplored enclaves.',
    author: 'Shueisha',
    genre: 'Adventure, Fantasy, Martial arts',
    ratings: 'I couldnt get past the continuous lazy writing plus how they destroyed a character as cool as Killua who basically turns into Gons pet by season 5, so there was no way I was going to watch 60 more episodes of this. I wouldnt recommend this series.',
)

Anime.create!(
    title:  'Demon Slayer',
    summary: 'A boy raised by boars, who wears a boars head, boards the Infinity Train on a new mission with the Flame Pillar along with another boy who reveals his true power when he sleeps. Their mission is to defeat a demon who has been tormenting people and killing the demon slayers who oppose it.',
    author: 'Koyoharu Gotouge',
    genre: 'Adventure, Dark, Fantasy, Martial Arts',
    ratings: 'Everything has flaws in it and this show has so much flaws! Starting with good thing about this anime is that it has a great animation of its action scene which no one can deny that they are amazing.',
)

Anime.create!(
    title:  'Jujutsu Kaisen',
    summary: 'Yuji Itadori, a kind-hearted teenager, joins his schools Occult Club for fun, but discovers that its members are actual sorcerers who can manipulate the energy between beings for their own use. He hears about a cursed talisman - the finger of Sukuna, a demon - and its being targeted by other cursed beings.',
    author: 'Gege Akutami',
    genre: 'Dark, Fantasy, Adventure, Supernatural',
    ratings: 'GO WATCH IT OH . MY . GODNESS IT IS SOOO GOOD I CANNOT EVEN BEGIN FO TO TELL YOU !!! The animation is wonderful plus the voice acting and the characters are wonderful .',
)
=======
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
#>>>>>>> main
