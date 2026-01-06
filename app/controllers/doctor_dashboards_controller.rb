class DoctorDashboardsController < ApplicationController
  def content
    @patient = Patient.new
    render partial: "shared/main_content", layout: false
  end
end
