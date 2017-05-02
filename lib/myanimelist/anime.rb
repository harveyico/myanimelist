module MyAnimeList
  class Anime
    def self.search(name)
      Api.new.search('anime', name)
    end

    def self.add(id, params = {})
      Api.new.add('anime', id,  params)
    end

    def self.update(id,  params = {})
      Api.new.update('anime', id,  params)
    end

    def self.remove(id)
      Api.new.remove('anime', id)
    end
  end
end
