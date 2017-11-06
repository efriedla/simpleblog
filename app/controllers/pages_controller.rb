class PagesController < ApplicationController
    def about
        @about = 'About Us'
        @content = 'This is the about page'
    end
end
