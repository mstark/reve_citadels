require 'httparty'

module ReveCitadels
  class Request
    include HTTParty
    format :json

    def all
      set_base_uri
      self.class.get("/all", verify: false)
    end

    def find(id)
      set_base_uri
      self.class.get("/#{id}", verify: false)
    end

    private

    def set_base_uri
      self.class.base_uri ReveCitadels.config.url
    end
  end
end