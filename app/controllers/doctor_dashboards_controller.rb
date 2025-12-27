class DoctorDashboardsController < ApplicationController
  def index
    @patient = Patient.new
  end
end
