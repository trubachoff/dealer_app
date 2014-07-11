class HomeController < ApplicationController
  def index
    @dealer = Dealer.current
  end
end
