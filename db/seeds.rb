# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

#users 
admin = User.create!(
    email: 'admin@mail.com',
    username: 'Admin',
    password: 'password'
)

user = User.create!(
    email: 'user@mail.com',
    username: 'User',
    password: 'password'
)
user1 = User.create!(
    email: 'orlena@mail.com',
    username: 'Orlena',
    password: 'password' 
)
user1.avatar.attach(
    io: File.open('app/assets/images/user1.jpg'),
    filename: 'user1.jpg'
    )

user2 = User.create!(
    email: 'suayeb@mail.com',
    username: 'Suayeb',
    password: 'password'
)
user2.avatar.attach(
    io: File.open('app/assets/images/user2.jpg'),
    filename: 'user2.jpg'
    )

user3 = User.create!(

    email: 'dio@mail.com',
    username: 'Dio',
    password: 'password' 
)
user3.avatar.attach(
    io: File.open('app/assets/images/user3.JPG'),
    filename: 'user3.JPG'
    )

user4 = User.create!(
    email: 'omarcus@mail.com',
    username: 'Omarcus',
    password: 'password'
)
user4.avatar.attach(
    io: File.open('app/assets/images/user4.JPG'),
    filename: 'user4.JPG'
    )


# generate 50 users
(1050..1100).each do |id|
    User.create!(
# each user is assigned an id from 7-40
        id: id, 
        email: Faker::Internet.email(domain: 'mail.com'),
        username: Faker::Name.name,
# issue each user the same password
        password: "password", 
        password_confirmation: "password"
    )
end



# Article
snorlax = Article.create!(
    title: "Cuddle up with Pokémon-Inspired Huge Snorlax Pillow",
    body: "Pokémon's Snorlax has the right idea when it comes to naptime: anywhere, at any time, and as much as possible. Plus, the Sleeping Pokémon even looks like a big comfy cushion. Premium Bandai has taken this to its natural conclusion, releasing a huge Snorlax cushion!"
)
snorlax.image.attach(
io: File.open('app/assets/images/a_seed-01.jpg'),
filename: 'a_seed-01.jpg'
)

yoshi = Article.create!(
    title: "Final Fantasy Artist Yoshitaka Amano Draws Cuphead in Behind the Scenes Video",
    body: "The physical version of Cuphead touched down in Japan on April 20, and one of the features is a special piece of art by none other than renowned artist Yoshitaka Amano. Known for his work on everything from Vampire Hunter D to the Final Fantasy series and beyond, Amano applied his unique style to Studio MDHR's hit 2D run-and-gun action game, and you can see him at work in a new behind the scenes video.",
    url_link: "https://youtu.be/-1YrUOX1N7w"
)
yoshi.image.attach(
io: File.open('app/assets/images/a_seed-02.jpg'),
filename: 'a_seed-02.jpg'
)

demon = Article.create!(
    title: "Watching Demon Slayer: Swordsmith Village Arc?",
    body: "Starting in February 2023, the Demon Slayer: Kimetsu no Yaiba -To the Swordsmith Village- World Tour kicked off with a worldwide theatrical screening in 95 countries and regions. In April, the TV adaptation of the Swordsmith Village Arc is confirmed to begin airing.
    
    And the story makes its way to a new location ─ 

    Tanjiro\’s journey leads him to the Swordsmith Village, where he reunites with two Hashira, members of the Demon Slayer Corps\’ highest-ranking swordsmen - Mist Hashira Muichiro Tokito and Love Hashira Mitsuri Kanroji. With the shadows of demons lurking near, a new battle begins for Tanjiro and his comrades."
)
demon.image.attach(
io: File.open('app/assets/images/a_seed-03.jpg'),
filename: 'a_seed-03.jpg'
)


inori = Article.create!(
    title: "Inori Minase Drops Dead Mount Death Play Anime Ending Theme MV",
    body: "The official YouTube channel for voice actress Inori Minase (Hestia in Is It Wrong to Try to Pick Up Girls in a Dungeon?, Rem in RE:ZERO \− Starting Life in Another World) has started streaming a music video for her latest 11th single song \"Iolite\" released in Japan today, April 19. The song is now featured as the ending theme for the spring 2023 TV anime Dead Mount Death Play, in which she is also cast as the main heroine character, Misaki Sakimiya.

    The TV anime adaptation of Ryohgo Narita (story) and Shinta Fujimoto's (arts) dark fantasy manga Dead Mount Death Play premiered in Japan on April 10, 2023.",
    url_link: "https://youtu.be/YPLPI-cs7xg"
)
inori.image.attach(
io: File.open('app/assets/images/a_seed-04.jpg'),
filename: 'a_seed-04.jpg'
)


# create 50 comments in DB. Comments belong to article
(200..250).each do |id|
    Comment.create!(
        id: id,
        user_id: rand(1050..1100),
        body: Faker::Lorem.sentence,
        article_id: rand(1..4),
        created_at: Faker::Date.between(from: 1.year.ago, to: Date.today)
    )
end
(251..261).each do |id|
    Comment.create!(
        id: id,
        user_id: rand(1..5),
        body: Faker::Lorem.sentence,
        article_id: rand(1..4),
        created_at: Faker::Date.between(from: 1.year.ago, to: Date.today)
    )
end


# Questions Seed
q1 = Question.create!(
    title: 'Which is the best Anime of 2022-23 season?',
    desc: 'I want to know which one is the best anime from this season so that I can watch that anime. I am kinda confuse on so many animes.',
    creator: user1
)
q1_answer1 = Answer.create!(
    title: 'Demon Slayer',
    question: q1,
    creator: user2
)

q1_answer2 = Answer.create!(
    title: 'Suayeb\'s Sword',
    question: q1,
    creator: user1
)

q2 = Question.create!(
    title: 'Which anime series revolves around a boy who sells his soul to a demon??',
    desc: 'I want to know Which anime series revolves around a boy who sells his soul to a demon?',
    creator: user1
)

q2_answer1 = Answer.create!(
    title: 'Black Butler',
    question: q2,
    creator: user2
)

(100..105).each do |id|
    Question.create!(
        id: id,
        user_id: rand(1050..1100),
        title: Faker::Lorem.question(word_count: 10),
        desc: Faker::Lorem.paragraph(sentence_count: 3),
        created_at: Faker::Date.between(from: 1.year.ago, to: Date.today)
    )
end
(100..115).each do |id|
    Answer.create!(
        id: id,
        user_id: rand(1050..1100),
        title: Faker::Lorem.sentence,
        question_id: rand(100..105),
        created_at: Faker::Date.between(from: 1.year.ago, to: Date.today)
    )
end

(116..125).each do |id|
    Answer.create!(
        id: id,
        user_id: rand(1050..1100),
        title: Faker::Lorem.sentence,
        question_id: rand(1..2),
        created_at: Faker::Date.between(from: 1.year.ago, to: Date.today)
    )
end



anime1 = Anime.create!(
    title:  'Bleach',
    summary: 'It follows the adventures of a teenager Ichigo Kurosaki, who inherits his parents destiny after he obtains the powers of a Soul Reaper—a death personification similar to the Grim Reaper—from another Soul Reaper, Rukia Kuchiki.',
    author: 'Noriyuki Abe',
    genre: 'Adventure, Supernatural',
    ratings: 'If you love good old shounen fights, then Bleach is for you. Im watching this after 17 years and was quite impressed with how well the story turned out even though I find it harder to get into older looking anime. I regret not finding it sooner and cherishing the impact that it would have created in my life.',
    creator:     admin
)

anime1_d1 = Discussion.create!(
    title: 'Bleach',
    discus: 'The first few seasons of bleach are, in my honest opinion, amazing. The further down you get with the seasons though, they just get slightly worse: the art work is less detailed, the character development gets more basic, and it feels like it could have done much better. Dont get me wrong, its still a good anime, but you can tell that the work was rushed to a degree in the later seasons. 10/10 for the first few seasons, 7.2/10 for the later seasons.',
    anime: anime1
)

anime1_d2 = Discussion.create!(
    title: 'Bleach',
    discus: 'When i first heard the name bleach on Animax i, like many people thought it was something weird but my take on it did a full 180 when i started watching it. It opened an entire new dimension to me for what an anime can be . It made me laugh, cry, rage, and made me feel all sorts of things i didnt expect form an anime at the time. I was in for a further surprise when i actually read the manga and realized the true potential and brilliance of TIte Kubo',
    anime: anime1
)

anime1_d3 = Discussion.create!(
    title: 'Bleach',
    discus: 'This anime is mid',
    anime: anime1
)

anime2 = Anime.create!(
    title:  'Full Metal Alchemist',
    summary: 'Set in the early 20th century, in a fictional universe in which alchemy is a widely practiced science, the series follows the journey of two alchemist brothers, Edward and Alphonse Elric, who are searching for the philosophers stone to restore their bodies after a failed attempt to bring their mother back to life',
    author: 'Bones Studios',
    genre: 'Sci-fi and Fantasy',
    ratings: 'This is, without a doubt, the greatest TV show of all time, not even for just anime. ',
    creator:     admin
)

anime3 = Anime.create!(
    title:  'Hunter x Hunter',
    summary: 'The story focuses on a young boy named Gon Freecss who discovers that his father, who left him at a young age, is actually a world-renowned Hunter, a licensed professional who specializes in fantastical pursuits such as locating rare or unidentified animal species, treasure hunting, or surveying unexplored enclaves.',
    author: 'Shueisha',
    genre: 'Adventure, Fantasy, Martial arts',
    ratings: 'I couldnt get past the continuous lazy writing plus how they destroyed a character as cool as Killua who basically turns into Gons pet by season 5, so there was no way I was going to watch 60 more episodes of this. I wouldnt recommend this series.',
    creator:     admin
)

anime4 = Anime.create!(
    title:  'Demon Slayer',
    summary: 'A boy raised by boars, who wears a boars head, boards the Infinity Train on a new mission with the Flame Pillar along with another boy who reveals his true power when he sleeps. Their mission is to defeat a demon who has been tormenting people and killing the demon slayers who oppose it.',
    author: 'Koyoharu Gotouge',
    genre: 'Adventure, Dark, Fantasy, Martial Arts',
    ratings: 'Everything has flaws in it and this show has so much flaws! Starting with good thing about this anime is that it has a great animation of its action scene which no one can deny that they are amazing.',
    creator:     admin
)

anime5 = Anime.create!(
    title:  'Jujutsu Kaisen',
    summary: 'Yuji Itadori, a kind-hearted teenager, joins his schools Occult Club for fun, but discovers that its members are actual sorcerers who can manipulate the energy between beings for their own use. He hears about a cursed talisman - the finger of Sukuna, a demon - and its being targeted by other cursed beings.',
    author: 'Gege Akutami',
    genre: 'Dark, Fantasy, Adventure, Supernatural',
    ratings: 'GO WATCH IT OH . MY . GODNESS IT IS SOOO GOOD I CANNOT EVEN BEGIN FO TO TELL YOU !!! The animation is wonderful plus the voice acting and the characters are wonderful .',
    creator:     admin
)


anime_blues = Convention.create!(
    price: 30,
    title: 'Anime Blues',
    description: 'Anime Blues Con returns July 7th - 9th, 2023 to the newly renovated Renasant Convention Center! (Formally, the Memphis Cook Convention Center) After a fresh coat of paint, we can’t wait to see you all again!',
    link: 'https://animeblues.com',
    city: 'Memphis',
    state: 'TN'
)
anime_blues.image.attach(
    io: File.open('app/assets/images/con_seed-01.jpg'),
    filename: 'con_seed-01.jpg'
)
    
omnicon = Convention.create!(
    price: 40,
    title:'OmniCon',
    description:'Omnicon is a multi-genre convention held in Cookeville, TN every Spring. It is hosted by the geeky group known as Alpha Psi Phi at Tennessee Tech University. We are slated for April 22nd and 23rd 2023!',
    link: 'https://www.omnicontn.com',
    city: 'Cookeville', 
    state: 'TN'
)
omnicon.image.attach(
    io: File.open('app/assets/images/con_seed-02.jpg'),
    filename: 'con_seed-02.jpg'
)

akaicon = Convention.create!(
    price: 45,
    title:'Akai Con',
    description:'Obsessed with fandom? SO ARE WE. AKAICON PROVIDES A SAFE-HAVEN FOR ALL. INVITE YOUR FRIENDS, FINISH YOUR COSPLAY, MAKE NEW MEMORIES, AND BECOME FAMILY.',
    link: 'http://akaicon.com',
    city: 'Lebanon',
    state:  'TN'
)
akaicon.image.attach(
    io: File.open('app/assets/images/con_seed-03.jpg'),
    filename: 'con_seed-03.jpg'
)

animeex = Convention.create!(
    price: 80,
    title:'Anime Expo',
    description:'Bringing fans and industry together to celebrate Japanese pop culture. Los Angeles, California July 1-4, 2023',
    link: 'https://www.anime-expo.org',
    city: 'Los Angeles',
    state: 'CA'
)
animeex.image.attach(
    io: File.open('app/assets/images/con_seed-04.jpg'),
    filename: 'con_seed-04.jpg'
)

dragcon = Convention.create!(
    price: 155,
    title:'Dragon Con',
    description: 'Dragon Con is the largest multi-media, pop culture convention focusing on science fiction & fantasy, gaming, comics, literature, art, music, and film in the universe – and the best place to celebrate all of these things with fellow fans on Labor Day Weekend.',
    link:'https://www.dragoncon.org/',
    city: 'Atlanta',
    state: 'GA'
)
dragcon.image.attach(
    io: File.open('app/assets/images/con_seed-05.png'),
    filename: 'con_seed-05.png'
)





(300..340).each do |id|
    Review.create!(
        id: id,
        user_id: Faker::Number.unique.between(from: 1050, to: 1100 ),
        star: rand(1..5),
        comment: Faker::Lorem.sentence,
        convention_id: rand(1..5),
        created_at: Faker::Date.between(from: 1.year.ago, to: Date.today)
    )
end

