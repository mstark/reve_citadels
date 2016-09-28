require "spec_helper"

describe ReveCitadels::Citadel do
  before do
    ReveCitadels.configure do |config|
      config.url = 'https://stop.hammerti.me.uk/api/citadel'
    end
  end

  describe ".all" do
    before do
      stub_request(:get, "https://stop.hammerti.me.uk/api/citadel/all").to_return(all_citadels)
    end

    let(:citadels) { ReveCitadels::Citadel.all }

    it "gets all known citadels" do
      expect(citadels.size).to eq(2121)
    end
  end

  describe ".find" do
    before do
      stub_request(:get, "https://stop.hammerti.me.uk/api/citadel/1021257423043").to_return(one_citadel)
    end

    let(:citadel) { ReveCitadels::Citadel.find("1021257423043") }

    it "finds citadel by given id" do
      expect(citadel.citadel_id).to eq(1021257423043)
    end
  end
end
