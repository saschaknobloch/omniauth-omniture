require "omniauth/strategies/oauth2"

module OmniAuth
  module Strategies
    class Omniture < OmniAuth::Strategies::OAuth2

      option :name, "omniture"

      option :client_options, {
        site:          "https://api.omniture.com",
        token_url:     "https://api.omniture.com/token",
        authorize_url: "https://marketing.adobe.com/authorize"
      }

      option :authorize_params, {
        grant_type: "client_credentials"
      }

      uid {
        raw_info.client.id
      }

      def raw_info
        @raw_info ||= access_token
      end
    end
  end
end
