module MyAnimeList
  class Serializer
    attr_accessor :response

    def initialize(resp)
      @response = resp
    end

    def call
      hash = XmlSimple.xml_in(response, force_array: false)
      hash['entry']
    end
  end
end
