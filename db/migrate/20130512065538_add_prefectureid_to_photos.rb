class AddPrefectureidToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :prefectureid, :integer
  end
end
