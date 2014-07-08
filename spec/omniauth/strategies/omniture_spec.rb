require "spec_helper"

describe OmniAuth::Strategies::Omniture do
  let(:omniture) {
    OmniAuth::Strategies::Omniture.new(nil, {})
  }

  describe "#client" do
    it "stores the correct site" do
      expect(omniture.client.site).to eq("https://api.omniture.com")
    end

    it "stores the correct authoriziation url" do
      expect(omniture.client.authorize_url).to eq("https://marketing.adobe.com/authorize")
    end

    it "stores the correct token url" do
      expect(omniture.client.token_url).to eq("https://api.omniture.com/token")
    end
  end

  describe "#callback_path" do
    it "stores the correct callback path" do
      expect(omniture.callback_path).to eq("/auth/omniture/callback")
    end
  end

  describe "#authorize_params" do
    it "stores the correct params" do
      allow(omniture).to receive(:session) {{}}
      expect(omniture.authorize_params.grant_type).to eq("client_credentials")
    end
  end
end
