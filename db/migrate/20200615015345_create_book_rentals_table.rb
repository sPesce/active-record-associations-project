class CreateBookRentalsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :book_rentals do |t|
      t.datetime  :due_date
      t.datetime  :returned
      t.timestamps
    end
  end
end
