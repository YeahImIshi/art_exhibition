class ArtworkController < ApplicationController
  def index
    @artworks = Artwork.all
  end
end
