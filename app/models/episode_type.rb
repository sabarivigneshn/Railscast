class EpisodeType < ActiveRecord::Base
  attr_accessible  :name, :notes
  has_many :episodes
end