class Prefecture < ActiveRecord::Base
  attr_accessible :name

  has_one:photo

end
