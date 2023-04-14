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