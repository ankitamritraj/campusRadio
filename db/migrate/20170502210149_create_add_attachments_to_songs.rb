class CreateAddAttachmentsToSongs < ActiveRecord::Migration[5.0]
  def up
    add_attachment :audios, :songs
  end

  def down
    remove_attachment :audios, :songs
  end

end
