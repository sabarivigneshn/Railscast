class Episode < ActiveRecord::Base
attr_accessible :name,:about,:image,:video,:release_date,:category_id,:episode_type_id,:duration
  belongs_to :episode_type
  belongs_to :category
end