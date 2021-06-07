class DiscsController < ApplicationController
  def index

    @discs = Disc.all
    @artist= Artist.find_by(params[:disc_id])
  end
  
  def show
      @disc = Disc.find_by(params[:artist_id])
    end
  
  def create
        @artist = Artist.find(params[:artist_id])
        @disc = @artist.discs.create(disc_params)
        redirect_to artist_path(@artist)
      end
    
      private
        def disc_params
          params.require(:disc).permit(:disc_name)
        end
end
