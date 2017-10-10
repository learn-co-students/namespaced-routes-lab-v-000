json.array!(@preferences) do |preference|
  json.extract! preference, :id, :artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs
  json.url preference_url(preference, format: :json)
end
