require 'httparty'
require 'pry'


response = HTTParty.get('https://makemeapassword.org//api/v1/passphrase/json?pc=100&wc=10&s=Insane')
binding.pry
response_json = JSON.parse(response.body)


passwords = []
response_json['pws'].each do |password|
  if passwords.count < 10
  passwords << password
  end
end
