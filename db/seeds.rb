# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Article.create({title: '新しい記事だよ', content: '素晴らしい記事です'})
# Article.create({title: '２個目作成してみました', content: 'ふっつうの記事です'})

10.times do
Article.create(
    title: Faker::Lorem.sentence(word_count: 8),
    content: Faker::Lorem.sentence(word_count: 100)
)
end
