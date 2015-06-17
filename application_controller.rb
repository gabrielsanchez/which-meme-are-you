require 'bundler'
Bundler.require
#require_relative 'models/select_meme.rb'

class ApplicationController < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/results' do
    counter=0
    if params[:radio0] == "on"
      counter = counter + 1
    end
    if params[:radio1] == "on"
        counter = counter + 2  
    end
    if params[:radio2] == "on"
        counter = counter + 3  
    end
    if params[:radio3] == "on"
          counter = counter + 4  
    end
    if params[:radio4] == "on"
        counter = counter + 2  
    end
    if params[:radio5] == "on"
        counter = counter + 3  
    end
    if params[:radio6] == "on"
          counter = counter + 4  
    end
    if params[:radio7] == "on"
        counter = counter + 2  
    end
    if params[:radio8] == "on"
        counter = counter + 3  
    end
    if params[:radio9] == "on"
          counter = counter + 4  
    end
    
    if counter < 5
        @name = "Jackie Chan"
        @img = "/img/chan.png"
    elsif counter > 5 && counter < 10
      @name = "Back to the Future Meme"
        @img = "/img/bttf.jpeg"
      
    elsif counter > 10 && counter < 15
        @name = "Grumpy Cat"
        @img = "/img/grumpy.jpeg"
    else counter >=15 
        @name = "Tyson"
        @img = "/img/tyson.jpg"
    end
    erb :results
  end
  
end
