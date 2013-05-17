class AddPrefectureIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :prefecture_id, :integer
  end
end
