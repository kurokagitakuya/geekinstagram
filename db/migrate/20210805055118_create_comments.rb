class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :comment_id
      t.integer :dairy_id

      t.timestamps
    end
  end
end
