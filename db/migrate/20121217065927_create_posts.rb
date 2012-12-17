class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :article
      t.string :image
      t.string :comments

      t.timestamps
    end
  end
end
