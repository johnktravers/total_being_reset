class Video < ApplicationRecord
  validates_presence_of :title, :description, :thumbnail, :youtube_id, :type
  validates_uniqueness_of :title, :youtube_id
  validates_inclusion_of :type, in: 0..1
end
