class NewsController < ApplicationController

  def index 
    response = HTTP.get("https://newsapi.org/v2/everything?q=netflix&from=2023-07-10&sortBy=publishedAt&apiKey=#{Rails.application.credentials.news_api_key}")
    news = response.parse(:json)
    render json: news
  end
end
