class ApplicationController < ActionController::API

    def hello_world
        render json: { text: 'hello, world' }
    end
    
    def health
        render json: { text: 'This health' }
    end
    
end
