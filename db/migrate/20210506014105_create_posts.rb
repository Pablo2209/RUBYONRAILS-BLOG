class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url_link
      t.string :content

      t.timestamps
    end
  end
end
