class Photo < ActiveRecord::Base
  validates :title, presence: true
  has_attached_file :upload
  validates_attachment_content_type :upload, :content_type => /\Aimage\/.*\Z/
end
