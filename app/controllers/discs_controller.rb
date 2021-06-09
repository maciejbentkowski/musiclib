class DiscsController < ApplicationController
  def index
    @discs = Disc.all
    @artist = Artist.find_by(params[:disc_id])
  end
  
    def show
      @disc = Disc.find(params[:id])
      @artist = Artist.find_by(params[:disc_id])
    end
  

  def new
    @disc = Disc.new
  end
    
  def create
    @artist = Artist.find_by(params[:artist_id])
        @disc = @artist.discs.create(disc_params)

        redirect_to artist_path(@artist)
  end
      private
        def disc_params
          params.require(:disc).permit(:disc_name)
        end
end
