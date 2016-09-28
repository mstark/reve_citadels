module ReveCitadels
  class Citadel
    attr_reader :citadel_id, :name, :region_id, :region_name, :system_id, :system_name,
                :first_seen, :last_seen, :type_id, :type_name

    def initialize(citadel)
      convert_from_response(citadel)
    end

    # returns all known citadels
    def self.all
      citadels = Request.new.all

      citadels.map do |citadel|
        Citadel.new(citadel)
      end
    end

    # returns citadel by given id
    def self.find(id)
      citadel = Request.new.find(id)
      Citadel.new(citadel)
    end

    private

    def convert_from_response(citadel)
      if citadel.respond_to?(:keys)
        @citadel_id = citadel.keys.first.to_i
        details = citadel.fetch(citadel.keys.first)
      else
        @citadel_id = citadel.first.to_i
        details = citadel.pop
      end

      @name = details["name"]
      @region_id = details["regionId"]
      @region_name = details["regionName"]
      @system_id = details["systemId"]
      @system_name = details["systemName"]
      @first_seen = details["firstSeen"]
      @last_seen = details["lastSeen"]
      @type_id = details["typeId"]
      @type_name = details["typeName"]
    end
  end
end