class WelcomeController < ApplicationController
  def index
    @episodes = Episode.all
  end
end
