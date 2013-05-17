class Club < ActiveRecord::Base
  attr_accessible :created_at, :del_flg, :description, :image_url, :name, :place_id, :updated_at
  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_size :avatar, :less_than => 1.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']

end
