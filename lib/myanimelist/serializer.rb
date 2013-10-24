module MyAnimeList
  class Serializer
    def initialize(data, type)
      @type = type
      @animes = data || []
    end

    def fetch
      serialize_data
    end

    def serialize_data
      return @animes if is_array? @animes

      collection = []
      data = @animes[@type]['entry']
      if is_array? data
        collection += data
      else
        collection << data
      end
    end

    def is_array?(data)
      data.is_a? Array
    end

  end
end
