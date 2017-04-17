module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(artist, song)
    if artist
      artist.name
    else
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    end
  end
end

# create a helper to display a drop-down list of artists if
# someone edits a song directly via /songs/id/edit and to only display the artist's
# name if they are editing through nested routing. Name the helper method artist_select.
# Hint: You'll need to set a variable in the controller action to pass to the helper method as an argument
# along with a song instance.
