require 'rest-client'
require 'xmlsimple'
require 'myanimelist/version'
require 'myanimelist/api'
require 'myanimelist/anime'
require 'myanimelist/manga'
require 'myanimelist/credentials'
require 'myanimelist/serializer'

module MyAnimeList
  def self.configure(&block)
    block.call(Credentials) if block_given?
  end

  def self.search_anime(name)
    animes = Anime.new(username: @myanimelist_username, password: @myanimelist_password)
    animes.search name
  end

  def self.search_manga(name)
    manga = Manga.new(username: @myanimelist_username, password: @myanimelist_password)
    manga.search name
  end
end
