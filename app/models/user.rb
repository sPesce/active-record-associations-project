class User < ActiveRecord::Base
  has_many :book_rentals
  has_many :books, through: :book_rentals
end