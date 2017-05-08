class AddAlbumToAudio < ActiveRecord::Migration[5.0]
  def change
  	add_column :audios, :album, :string
  end
end
