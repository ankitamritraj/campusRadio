class Audio < ApplicationRecord

  has_attached_file :songs
  validates_attachment(:songs, :content_type => { :content_type => [ 'audio/mpeg', 'audio/x-mpeg', 'audio/songs', 'audio/x-songs', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ] }, :file_name => {matches: [/mp3\Z/]})
end
