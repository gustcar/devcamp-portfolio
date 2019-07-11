class PortfoliosController < ApplicationController
  def index
    # Portfolio is a model
    @portfolio_items = Portfolio.all
  end
end
