# Photo Album

#### Gemfile
```rb
gem 'paperclip'
gem 'aws-sdk', '< 2.0'
```

#### [Paperclip][1]

```rb
# Migration
add_attachment :photos, :upload

# Model
has_attached_file :upload
validates_attachment_content_type :upload, :content_type => /\Aimage\/.*\Z/
```

#### config/(dev/test/prod).rb
```rb
config.paperclip_defaults = {
  :storage => :s3,
  :s3_credentials => {
    :bucket => ENV['S3_BUCKET'],
    :access_key_id => ENV['S3_KEY_ID'],
    :secret_access_key => ENV['S3_SECRET_KEY']
    }
```





[1]: https://github.com/thoughtbot/paperclip

