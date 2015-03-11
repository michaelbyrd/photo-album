# Photo Album

#### [Paperclip][1]

```rb
# Migration
add_attachment :photos, :upload

# Model
has_attached_file :upload
validates_attachment_content_type :upload, :content_type => /\Aimage\/.*\Z/
```





[1][https://github.com/thoughtbot/paperclip]

