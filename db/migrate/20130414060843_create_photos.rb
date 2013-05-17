class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.integer :club_id
      t.text :description
      t.integer :del_flg
      t.string :tweet_tag
      t.string :user_token
      t.attachment :avatar
      t.date :updated_at
      t.date :created_at

      t.timestamps
    end
  end
end
