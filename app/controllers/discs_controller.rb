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
        redirect_to artist_path(@artist), success: "Disc created succesfully!"
        else
        redirect_to artist_path(@artist), warning: "Something went wrong"
        end
  end
  def edit
    @disc = Disc.find(params[:id])
  end

  def update
    @disc = Disc.find(params[:id])

    if @disc.update(disc_params)
      redirect_to @disc, success: "You succesfully edited disc"
    else
      redirect_to @disc, warning: "Something went wrong"
    end
end

  def destroy
    @disc = Disc.find(params[:id])
    @disc.destroy

    redirect_to artist_path, danger: "Disc deleted succesfully!"
  end
      private
        def disc_params
          params.require(:disc).permit(:disc_name, :music_type, :image, :premiere_date)
        end
end
