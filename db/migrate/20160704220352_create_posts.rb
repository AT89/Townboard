class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :description
      t.integer :value
      t.string :image
      t.timestamps
      t.references :board, index: true, foreign_key: true
    end
  end
end
