class Photo < ActiveRecord::Base
  has_attached_file :upload
  validates_attachment_content_type :upload, :content_type => /\Aimage\/.*\Z/
  validates :title, presence: true
end
