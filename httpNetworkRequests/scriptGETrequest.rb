require "net/http"
require "uri"

args = ARGV
url = args[0]
uri = URI.parse(url)

res = Net::HTTP.get_response(uri)

puts res.body
