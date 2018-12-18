class AddImageAToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :image_a, :string
  end
end
