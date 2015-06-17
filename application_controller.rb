require 'bundler'
Bundler.require
#require_relative 'models/pig_latinize.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/results' do
    erb :results
  end
  
end
