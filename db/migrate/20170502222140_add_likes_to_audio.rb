class AddLikesToAudio < ActiveRecord::Migration[5.0]
  def change
  	add_column :audios, :like, :integer, :default => 0 
  end
end
