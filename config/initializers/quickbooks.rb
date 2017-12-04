OAUTH_CONSUMER_KEY = "Q08YianY64pQ5G6SrBlcyz5WkUOJl4SqUoUnXRwb9S8atgkZyM"
OAUTH_CONSUMER_SECRET = "9gLD5Q2jf2tnpwbIvaM2LL9HUL3C1P7T0jODBCP3o"

oauth_params = {
  :site => "https://appcenter.intuit.com/connect/oauth2",
  :authorize_url => "https://appcenter.intuit.com/connect/oauth2",
  :token_url => "https://oauth.platform.intuit.com/oauth2/v1/tokens/bearer"
}

::QB_OAUTH2_CONSUMER = OAuth2::Client.new(OAUTH_CONSUMER_KEY, OAUTH_CONSUMER_SECRET, oauth_params)