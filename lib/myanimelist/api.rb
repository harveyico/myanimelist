module MyAnimeList
  class ApiException < Exception; end
  class Api
    BASE_URL = 'https://myanimelist.net/api'

    def search(type, name)
      body = request("#{BASE_URL}/#{type}/search.xml?q=#{CGI::escape name}")

      Serializer.new(body).entry
    end

    def add(type, id, params = {})
      request("#{BASE_URL}/#{type}list/add/#{id}.xml", params) == 'Created'
    end

    def update(type, id, params = {})
      request("#{BASE_URL}/#{type}list/update/#{id}.xml", params) == 'Updated'
    end

    def remove(type, id)
      request("#{BASE_URL}/#{type}list/delete/#{id}.xml") == 'Deleted'
    end

    def verify_credentials!
      body = request("#{BASE_URL}/account/verify_credentials.xml")

      Serializer.new(body).call
    end

    private

    def request(url, params = {})
      RestClient::Request.new( build_params(url, params) ).execute do |resp|
        if resp.code == 200 || resp.code == 201
          resp.body
        else
          raise ApiException.new(resp.body)
        end
      end
    end

    def build_params(url, params)
      {
        method: :get,
        url: url,
        user: Credentials.username,
        password: Credentials.password,
        content_type: :xml
      }.merge( headers(params) )
    end

    def headers(params)
      return {} if params.empty?
      {
        headers: {
          params: {
            data: XmlSimple.xml_out(params, rootname: 'entry', noattr: true, noindent: true, keeproot: false)
          }
        }
      }
    end
  end
end
