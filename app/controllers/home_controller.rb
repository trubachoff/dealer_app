class HomeController < ApplicationController
  def index
    @dealer = Dealer.find(1)
  end
end
