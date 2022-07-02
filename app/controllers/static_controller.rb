class StaticController < ApplicationController
    def home
        render json: { text: 'hello world' }
    end
    
end