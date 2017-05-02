module MyAnimeList
  class Manga < Api
    def self.search(name)
      Api.new.search('manga', name)
    end

    def self.add(id, params = {})
      Api.new.add('manga', id,  params)
    end

    def self.update(id,  params = {})
      Api.new.update('manga', id,  params)
    end

    def self.remove(id)
      Api.new.remove('manga', id)
    end
  end
end
