class SalesReportController < ApplicationController
  def index
  	@products = Product.all
    @sales = Sale.all
  end
end
