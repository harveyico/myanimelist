module MyAnimeList
  class Manga < Api
    def self.search(name)
      query('manga', name)
    end
  end
end
