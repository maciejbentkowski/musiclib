class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end
    def show
        @disc = Disc.find_by(params[:artist_id])
        @artist = Artist.find(params[:id])
        @disc = Disc.new

    end
    def new
        @artist = Artist.new
    end
    def create
        @artist = Artist.new(artist_params)

        if @artist.save
            redirect_to @artist, success: "Artist created succesfully!"

        else
            redirect_to new_artist_path, warning: "Artist failed to create!"
        end
    end
    def edit
        @artist = Artist.find(params[:id])
      end

      def update
        @artist = Artist.find(params[:id])

        if @artist.update(artist_params)
          redirect_to @artist
        else
          render :edit
        end
    end
    def destroy
        @artist = Artist.find(params[:id])
        @artist.discs.each do |disc|
            disc.destroy
          end
        @artist.destroy
        redirect_to artists_path, danger: "You succesfully deleted Artist with his discs"
    end

    private
        def artist_params
            params.require(:artist).permit(:artist_name)
        end

end