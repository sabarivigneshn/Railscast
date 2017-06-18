class Episode < ActiveRecord::Base
attr_accessible :name,:about,:image,:video,:release_date,:category_id,:episode_type_id,:duration
  belongs_to :episode_type
  belongs_to :category

  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
end