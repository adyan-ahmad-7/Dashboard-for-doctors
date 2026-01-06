class MonthlyRevenuesController < ApplicationController
  def index
    render "monthly_revenues/index", layout: false
  end
end
