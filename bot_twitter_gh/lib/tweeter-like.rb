require 'pry'
require 'dotenv'
Dotenv.load('../.env')
 # ligne très importante qui appelle la gem.
require 'twitter'

# quelques lignes qui appellent les clés d'API de ton fichier .env
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end


tweets = client.search("#Bonjour_monde", result_type: "recent").take(25)#tu crées ta variable tweets qui va chercher les 25 hello_world les plus récents
client.favorite (tweets) #client.favorite + ta variable qui like les 25 derniers tweets
