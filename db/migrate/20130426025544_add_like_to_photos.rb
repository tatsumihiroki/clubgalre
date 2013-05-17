class AddLikeToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :like, :integer
  end
end
