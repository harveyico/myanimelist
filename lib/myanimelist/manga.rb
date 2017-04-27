module MyAnimeList
  class Manga < Api
    def search(name)
      query('manga', type)
    end
  end
end
