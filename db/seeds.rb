# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

Post.create(title: "옹 안녕", content: "응 이건 또다른 게시물이얌" )

new_post = Post.new
new_post.title = "안녕하세요"
new_post.content = "이렇게 해도 동작하나?"
new_post.save

reply = Reply.new
reply.content = "첫번째 댓글입니다"
reply.post = new_post
reply.save