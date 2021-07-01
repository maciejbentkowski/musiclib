class DiscsController < ApplicationController
  def index
    @discs = Disc.all

  end

  def show
    @disc = Disc.find(params[:id])
    @songs = @disc.songs.order(:track_number)
    @song = Song.new
  end

  def create
        @artist = Artist.find(params[:artist_id])
        @disc = @artist.discs.create!(disc_params)
        if @disc.save
        redirect_to artist_path(@artist), notice: "Disc created succesfully!"
        else
          render :new
        end
  end

  def destroy
    @disc = Disc.find(params[:id])
    @disc.destroy

    redirect_to artist_path, alert: "Disc deleted succesfully!"
  end
      private
        def disc_params
          params.require(:disc).permit(:disc_name, :music_type, :image, :premiere_date)
        end
end
