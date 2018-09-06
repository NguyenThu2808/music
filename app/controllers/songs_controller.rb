class SongsController < ApplicationController
  def index
    @songs = Song.select_song.page(params[:page]).by_order.per Settings.per_page
  end
end
