class CreateReviews < ActiveRecord::Migration[6.1]
    def change
      create_table :reviews do |t|
        t.integer :star_rating
        t.string :comment
        t.integer :product_id  #foreign key 1
        t.integer :user_id #foreign key 2
        t.timestamps
      end
    end
  end