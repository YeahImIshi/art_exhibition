class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
    Rails.logger.debug @artworks.inspect
  end
  def show
    @artwork = Artwork.find_by(title: params[:title])

    if @artwork.nil?
      flash[:alert] = "Artwork not found"
      redirect_to artworks_path
    end
  end
end
