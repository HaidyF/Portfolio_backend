# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
residential = Category.create{name= "Residential"}
commercial = Category.create{name= "Commercial"}
familyHouse = Category.create{name= "Family House"}
mixedUse = Category.create{name= "Mixed Use"}

# project1 = Project.create{title= "First Project"}
project1 = Project.create{title: "First Project", quote: "Something Inspirational", description: "A Project", image_URL: "2wCEAAoHCBYWFRgWFhUYGRgYHBgaGhgaGhoZGhgYGhgZGhgYGhwcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQhJCQ0NDQ0NDQ0NDQ0NDQ0NjQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDE0NDQ0NDQ0NDQ0NDQ0NP",location: "NYC", year: "2021", category_id: commercial.id}