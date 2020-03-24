class StaticController < ApplicationController
    def about
        render 'static/about'
    end 

    def contact
        render 'static/contact'
    end 
end 