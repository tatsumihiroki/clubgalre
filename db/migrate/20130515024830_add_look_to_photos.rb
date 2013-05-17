class AddLookToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :look, :integer
  end
end
