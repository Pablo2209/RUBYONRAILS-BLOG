class AddVar1ToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :var1, :string
  end
end
