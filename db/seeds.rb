# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: 'florian@divingdolphin.com', password: 'password!!')

[
  ['Box jump'],
  ['Hang power clean', 'HPCL'],
  ['Hang power snatch', 'HPSN'],
  ['Kettlebell Clean & Press', 'KB C&P'],
  ['Kettlebell Snatch', 'KB SN'],
  ['Kettlebell Swing', 'KB Sw'],
  ['Pull-up', 'PLU'],
  ['Row'],
  ['Run'],
  ['Wall ball', 'WB'],
].each do |m|
  movement = Movement.new(name: m[0], abbreviation: m[1])

  # If the movement name or abbreviation is already taken, then save simply fails.
  movement.save
end
