module Sun

  class Congress
    include HTTParty

    base_uri 'https://congress.api.sunlightfoundation.com/'

    def local_legislators(zip)
      self.class.get("/legislators/locate", headers: headers, query: {zip: zip})
    end

    def all_legislators
      self.class.get("/legislators", headers: headers)
    end

    def token
      ENV['SUNLIGHT_KEY']
    end

    def headers
      {"X-APIKEY" => token}
    end

    def bills
      p "I am the bill @@@@@@@@@@@@"
      self.class.get("/bills", headers: headers)
    end

  end

end
