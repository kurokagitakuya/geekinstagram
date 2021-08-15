class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :post_id
      t.text :post
      t.string :image
      t.integer :date

      t.timestamps
    end
  end
end
