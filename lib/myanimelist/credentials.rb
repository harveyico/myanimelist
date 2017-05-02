module MyAnimeList
  class Credentials
    class << self
      attr_accessor :username
      attr_accessor :password
    end
  end
end
