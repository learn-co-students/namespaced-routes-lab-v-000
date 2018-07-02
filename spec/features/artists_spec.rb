describe "artists", type: :feature do

  before do
    Artist.destroy_all
    Song.destroy_all
    Preference.create(artist_sort_order: "DESC")
    @artist = Artist.create!(name: "Daft Punk")
    @song = @artist.songs.create!(title: "The Grid")
  end

  describe "GET /artists" do
    it "links to artists songs path" do
      visit artists_path
      expect(page).to have_link(@artist.name, href: artist_songs_path(@artist))
    end

  end

  describe "GET /artists/id" do
    it "links to artists song path" do
      visit artist_path(@artist)
      expect(page).to have_link(@song.title, href: artist_song_path(@artist, @song))
    end
  end

  # # My added test for order of artists

  # describe "GET" do
  #   it "orders the artists by the preference sort order" do
  #     visit artists_path
  #     expect(page).to have_tag("ul:last-child", :text => "Daft Punk")
  #   end
  # end
end
