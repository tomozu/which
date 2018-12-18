class AddDetailsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :objective, :text
    add_column :posts, :place, :text
    add_column :posts, :ideal, :text
  end
end
