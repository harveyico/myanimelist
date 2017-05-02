module MyAnimeList
  class Serializer
    attr_accessor :response

    def initialize(resp)
      @response = resp
    end

    def entry
      hash = XmlSimple.xml_in(response, force_array: false)
      hash['entry']
    end

    def call
      XmlSimple.xml_in(response, force_array: false)
    end
  end
end
