class RemovePrefectureidAndDeletedFromPhotos < ActiveRecord::Migration
  def up
    remove_column :photos, :prefectureid
  end

  def down
    add_column :photos, :prefectureid, :integer
  end
end
