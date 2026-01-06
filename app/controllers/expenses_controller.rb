class ExpensesController < ApplicationController
  def index
    render "expenses/index", layout: false
  end
end
