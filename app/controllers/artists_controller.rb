class ArtistsController < ApplicationController

  def index
  @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find_by(params[:id])
end

private

def artist_params
  params.require(:artist).permit(:name, :bio)
end

end
