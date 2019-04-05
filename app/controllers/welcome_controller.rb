class WelcomeController < ApplicationController
    def index
        @gazooys = Gazooy.all
        @pages = Page.all
    end
end