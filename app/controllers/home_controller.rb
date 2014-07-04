class HomeController < ApplicationController
  def index
    @dealer = Dealer.first
  end
end
