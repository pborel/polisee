module Sun

  class Congress
    include HTTParty

    base_uri 'https://congress.api.sunlightfoundation.com/'

    def local_politicians(zip)
      self.class.get("/legislators/locate", headers: headers, query: {zip: zip})
    end

    def token
      "6f32253a69584783ba98cbf86120d2d7"
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
