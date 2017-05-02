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

  def self.verify_credentials
    Api.new.verify_credentials!
  end

  def self.search_anime(name)
    MyAnimeList::Anime.search(name)
  end

  def self.search_manga(name)
    MyAnimeList::Manga.search(name)
  end
end
