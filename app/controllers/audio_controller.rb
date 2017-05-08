class AudioController < ApplicationController
	
	def incrementLike
		@likedAlready = Upvote.find_by(user_id: params[:user_id], song_id: params[:song_id])
		@song = Audio.find(params[:song_id])

		if( @likedAlready )
		  	@likedAlready.destroy
			@song.update_attribute(:like, @song.like - 1)
			redirect_to :back
		else
			@newLike = Upvote.new(upvote_params)
			@song.update_attribute(:like, @song.like + 1)
			if @newLike.save
				redirect_to :back
			end
		end	
	end

	def search
		@user = User.new(session[:user])
		if(params[:flag] == "true")
			terms= params[:content].split(',')
		    query = terms.map {|term| "lower(name) LIKE '%#{term.downcase}%' OR lower(artist) LIKE '%#{term.downcase}%' OR lower(album) LIKE '%#{term.downcase}%'"}.join(" OR ")
		    @songs = Audio.where(query).order(like: :DESC)
		else
			@songs = nil
		end
	end

	private def upvote_params
    	params.permit(:user_id, :song_id)
	end

end
