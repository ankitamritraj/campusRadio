class AddGenreToAudio < ActiveRecord::Migration[5.0]
  def change
  	add_column :audios, :genre, :string
  end

end
