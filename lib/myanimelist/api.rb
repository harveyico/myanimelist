module MyAnimeList
  class Api
    def self.query(type, name)
      response = RestClient::Request.new(
        method: :get,
        url: "https://myanimelist.net/api/#{type}/search.xml?q=#{CGI::escape name}",
        user: Credentials.username,
        password: Credentials.password,
        content_type: :xml
      ).execute

      Serializer.new(response).call
    end
  end
end
