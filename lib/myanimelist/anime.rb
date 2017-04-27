module MyAnimeList
  class Anime < Api
    def self.search(name)
      query('anime', name)
    end
  end
end
