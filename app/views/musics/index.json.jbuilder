json.array!(@musics) do |music|
  json.extract! music, :id, :artist, :title, :album, :is_favorite, :cover_url
  # json.url music_url(music, format: :json)
end
