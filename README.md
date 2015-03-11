# Photo Album

#### [Paperclip][1]

```rb
# Migration
add_attachment :photos, :upload

# Model
has_attached_file :upload,
  :storage => :s3,
  :s3_credentials => {:bucket => ENV['S3_BUCKET'], :access_key_id => ENV['S3_KEY_ID'], :secret_access_key => ENV['S3_SECRET_KEY']}
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

