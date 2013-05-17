class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :description
      t.integer :place_id
      t.integer :del_flg
      t.string :image_url
      t.attachment :avatar
      t.date :updated_at
      t.date :created_at

      t.timestamps

    end
  end
end
