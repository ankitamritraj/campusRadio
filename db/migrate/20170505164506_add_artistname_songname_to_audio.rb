class AddArtistnameSongnameToAudio < ActiveRecord::Migration[5.0]
  def change
  	add_column :audios, :artist, :string
  	add_column :audios, :name, :string 

  end
end
