class Photo < ActiveRecord::Base
  attr_accessible :id,:club_id, :created_at, :del_flg, :description, :name, :tweet_tag, :updated_at, :user_token,:like,:prefecture_id,:look
   attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_size :avatar, :less_than => 1.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']

  belongs_to:prefecture

end
