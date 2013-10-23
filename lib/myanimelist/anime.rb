module MyAnimeList
  class Anime

    def initialize(options={})
      @myanimelist_username = options[:username]
      @myanimelist_password = options[:password]
    end

    def search(name)
      get_search(name)
    end

    def get_search(name)
      response = RestClient::Request.new(
        method: :get,
        url: "http://myanimelist.net/api/anime/search.xml?q=#{CGI::escape name}",
        user: @myanimelist_username,
        password: @myanimelist_password,
        content_type: :xml ).execute

      parse_xml response
    end

    def parse_xml(response)
      Hash.from_xml response
    end

  end
end
