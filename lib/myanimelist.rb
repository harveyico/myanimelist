require 'myanimelist/version'
require 'rest_client'
require 'active_support/core_ext/hash'
require 'myanimelist/anime'
require 'myanimelist/manga'
require 'myanimelist/credentials'
require 'myanimelist/serializer'

module MyAnimeList
  def self.configure(&block)
    credentials = Credentials.new
    block.call(credentials)
    @myanimelist_username = credentials.username
    @myanimelist_password = credentials.password

    true if block_given?
  end

  def self.search_anime(name)
    animes = Anime.new(username: @myanimelist_username, password: @myanimelist_password)
    animes.search name
  end

  def self.search_manga(name)
    manga = Manga.new(username: @myanimelist_username, password: @myanimelist_password)
    manga.search name
  end

  def self.verify_credentials(username=@myanimelist_username, password=@myanimelist_password)
    credentials = Credentials.new(username: username, password: password)
    begin
      credentials.get_verify_credentials
    rescue RestClient::Unauthorized => e
      nil
    end
  end
end
