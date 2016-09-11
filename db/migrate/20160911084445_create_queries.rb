class CreateQueries < ActiveRecord::Migration[5.0]
  def change
    create_table :queries do |t|
      t.string :address
      t.string :keyword
      t.datetime :searched_at
      t.integer :searches_count

      t.timestamps
    end
  end
end
