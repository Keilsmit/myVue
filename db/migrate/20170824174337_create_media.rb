class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.string :source
      t.string :type
      t.string :name
      t.string :description
      t.string :message
      t.string :sender_rating
      t.string :viewer_rating
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
