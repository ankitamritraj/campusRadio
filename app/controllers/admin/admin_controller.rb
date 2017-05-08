class Admin::AdminController < Admin::AdminApplicationController
	def index
		@songs = Audio.all.order(like: "DESC")
	end

	def show
		@user = User.new(session[:user]);
		@song = Audio.new

	end

	def uploadSong
		@song = Audio.new(uploadSong_params)
    	if @song.save
    		redirect_to adminpanel_path
    	else
    		redirect_to adminprofile_path
    	end
	end

	private def uploadSong_params
    	params.require(:audio).permit(:songs, :name, :artist, :album)

	end
end