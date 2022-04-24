# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.create(title:"お花見",start_at:'2022-4-1',finish_at:'2022-4-1',all:true,memo:"会社の同僚")
Post.create(title:"仕事",start_at:'2022-4-3',finish_at:'2022-4-3',all:false,memo:"休日出勤")