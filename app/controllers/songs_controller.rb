class SongsController < ApplicationController
    def create
        @disc = Disc.find(params[:disc_id])
        @song = @disc.songs.create!(song_params)
        if @song.save!
            redirect_to disc_path(@disc)
        else
            redirect_to root_path
        end
    end
    private



    def song_params
        params.require(:song).permit(:song_name, :track_number)
    end
end
