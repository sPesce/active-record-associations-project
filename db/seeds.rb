User.destroy_all
Category.destroy_all
Book.destroy_all
BookRental.destroy_all
Author.destroy_all

  User.create(name: "fred")
  User.create(name: "Bob")
  User.create(name: "Andy")

  Book.create(title: "The Book")
  Book.create(title: "Das Book")
  Book.create(title: "El Book")

  Author.create(name: "Mr Author")
  Author.create(name: "Mrs Author")
  Author.create(name: "Arthur Authorington")


  Category.create(name: "Mystery")
  Category.create(name: "Autobiography")
  Category.create(name: "Fiction")

