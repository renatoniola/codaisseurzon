class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.references :user, foreign_key: true
      t.decimal :total
      t.integer :count

      t.timestamps
    end
  end
end
