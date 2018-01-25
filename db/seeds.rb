# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
books = [
  { title: 'Catch-22', author: 'Joseph Heller', rating: 90 },
  { title: '1984', author: 'George Orwell', rating: 100 },
  { title: 'The Stranger', author: 'Albert Camus', rating: 100 }
]

books.each do |attributes|
  Book.create(attributes)
end

categories = [
  { name: 'Thriller' },
  { name: 'Action/Adventure' },
  { name: 'Mystery' },
  { name: 'Philosophy' },
  { name: 'Romance' }
]

categories.each do |attributes|
  Category.create(attributes)
end

readers = [
  { full_name: "Jake Fruci", email: "thisismyemail@gmail.com", phone_number: "781-555-1234"},
  { full_name: "Ghandi", email: "iamaniceguy@gmail.com", phone_number: "781-555-1234"},
  { full_name: "Obama", email: "iwasprez@gmail.com", phone_number: "781-555-1234"},
  { full_name: "Steve Jobs", email: "imprettysmart@gmail.com", phone_number: "781-555-1234"}
]

readers.each do |attributes|
  Reader.create(attributes)
end

checkouts = [
  { book_id: Book.first.id, quantity: 1, reader_id: Reader.first.id},
  { book_id: Book.second.id, quantity: 2, reader_id: Reader.second.id},
  { book_id: Book.third.id, quantity: 3, reader_id: Reader.third.id},
  { book_id: Book.first.id, quantity: 1, reader_id: Reader.first.id}
]

checkouts.each do |attributes|
  Checkout.create(attributes)
end
