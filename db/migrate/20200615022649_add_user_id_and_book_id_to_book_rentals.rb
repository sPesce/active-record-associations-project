class AddUserIdAndBookIdToBookRentals < ActiveRecord::Migration[6.0]
  def change
    add_column :book_rentals, :user_id, :integer
    add_column :book_rentals, :book_id, :integer
  end
end
