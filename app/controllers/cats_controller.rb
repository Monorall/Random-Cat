class CatsController < ApplicationController
  def random
    response = HTTParty.get('https://api.thecatapi.com/v1/images/search')
    json = JSON.parse(response.body)
    @image_url = json[0]['url']
  end
end

git init