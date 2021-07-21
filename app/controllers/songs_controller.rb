class SongsController < ApplicationController
    def index
        @songs =Song.search(params[:search])
    end
    def show
        @song = Song.find(params[:id])
        @disc = Disc.find(params[:disc_id])
    end


    def create
        @disc = Disc.find(params[:disc_id])
        @song = @disc.songs.create!(song_params)
        if @song.save!
            redirect_to disc_path(@disc), success: "Song created succesfully!"
        else
            redirect_to root_path, warning: "Disc failed to create"
        end
    end

    def destroy

    @disc = Disc.find(params[:disc_id])
    @song = @disc.songs.find(params[:id])
    @song.destroy

    redirect_to disc_path(@disc), danger: "Song deleted succesfully!"
    end

    private

    def song_params
        params.require(:song).permit(:song_name, :track_number, :search)
    end
end
