# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

# Task.delete_all
Status.delete_all
Category.delete_all

CSV.foreach('db/categories.csv') do |row|
  Category.create(name: row[0])
end

CSV.foreach('db/statuses.csv') do |row|
  Status.create(name: row[0])
end

# CSV.foreach('db/tasks.csv') do |row|
#   p "#{row[0]}, #{row[1]}, #{row[2]}, #{row[3]}"
#   Task.create(name: row[0], user_id: row[1], status_id: row[2], category_id: row[3])
# end
