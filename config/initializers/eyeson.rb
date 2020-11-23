
# Set eyeson API key, see https://www.eyeson.com/developers/
Eyeson.configure do |config|
  config.api_key =  ENV.fetch 'EYESON_API_KEY'
end
