class DiscsController < ApplicationController
  def index
    @discs = Disc.all
    @artist = Artist.find_by(params[:disc_id])
  end

  def show
    @disc = Disc.find(params[:id])
    @song = Song.new
  end

  def create
        @artist = Artist.find(params[:artist_id])
        @disc = @artist.discs.create!(disc_params)
        if @disc.save
        redirect_to artist_path(@artist)
        else
          render :new
        end
  end

  def destroy
    @disc = Disc.find(params[:id])
    @disc.destroy

    redirect_to artist_path
  end
      private
        def disc_params
          params.require(:disc).permit(:disc_name, :music_type, :image)
        end
end
