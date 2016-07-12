require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/results' do
    sendquestion(params[:question])
    sendquestion(params[:question], '+17202902192')
    erb :results
  end

end
