module MyAnimeList
  class Credentials
    attr_accessor :username
    attr_accessor :password

    def initialize(options={})
      @username = options[:username]
      @password = options[:password]
    end

    def get_verify_credentials
      response = RestClient::Request.new(
        method: :get,
        url: "http://myanimelist.net/api/account/verify_credentials.xml",
        user: @username,
        password: @password,
        content_type: :xml ).execute

      parse_xml response
    end

    def parse_xml(response)
      Hash.from_xml(response)['user']
    end

  end
end
