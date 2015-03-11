class Photo < ActiveRecord::Base
  validates :title, presence: true
  has_attached_file :upload,
    :storage => :s3,
    :s3_credentials => {:bucket => ENV['S3_BUCKET'], :access_key_id => ENV['S3_KEY_ID'], :secret_access_key => ENV['S3_SECRET_KEY']}
  validates_attachment_content_type :upload, :content_type => /\Aimage\/.*\Z/

end
