class User < ActiveRecord::Base
  has_many :book_rentals
  has_many :books, through: :book_rentals
  
  def checkout_book(book)
    br = BookRental.find_by(book: book, user: self, returned: false)
    if br != nil
      #already exists
      #already have this copy of this book
      return br
    end
    br = BookRental.create(book: book,user: self,returned: false,due_date: DateTime.now + 30.day)  
  end

  def return_book(book)
    br = BookRental.find_by(book: book, user: self, returned: false)
    if br == nil || br.returned
      return false
    else
      br.returned = true
      br.save
      br
    end
  end

  def is_overdue?(book)
    rental = BookRental.find_by(book: book, user: self, returned: false)
    if DateTime.now > rental.due_date
      return true
    end
    false
  end

end