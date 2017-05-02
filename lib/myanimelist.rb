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
end
