class AppointmentsController < ApplicationController
  def index
    render "appointments/index", layout: false
  end
end
