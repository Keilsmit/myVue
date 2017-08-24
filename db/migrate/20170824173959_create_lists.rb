class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.integer :author_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
