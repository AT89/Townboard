class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :comment
      t.string :image
      t.timestamps
      t.references :post, index: true, foreign_key: true
    end
  end
end
