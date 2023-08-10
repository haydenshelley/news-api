class CatsController < ApplicationController

  def index
    response = HTTP.get("https://api.thecatapi.com/v1/images/search?api_key=#{Rails.application.credentials.cat_api_key}")
    cat = response.parse(:json)
    render json: cat
  end
  
end
