class SongsController < ApplicationController
  before_action :song_find, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show; end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.youtube_key = extract_key(@song.link)
    @song.link = return_embed_link(@song.youtube_key)
    @song.save

    redirect_to song_path(@song)
  end

  def edit; end

  def update
    @song = Song.update(params[song_params])

    redirect_to song_path(@song)
  end

  def destroy
    @song.destroy

    redirect_to songs_path
  end

  private

  def song_find
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(
      :title,
      :artist_name,
      :album_title,
      :lyrics_original,
      :lyrics_translated,
      :link,
      :user_id
    )
  end

  def extract_key(url)
    url.match(/\watch\?v=(.*)/)[1]
  end

  def return_embed_link(key)
    "https://www.youtube.com/embed/#{key[0..10]}"
  end
end
