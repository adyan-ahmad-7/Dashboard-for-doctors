class PatientsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = current_user.patients.build(patient_params)

    if @patient.save
      redirect_to doctor_dashboards_path, notice: "Patient Created Successfully"
    else
      Rails.logger.debug @patient.errors.full_messages
      raise @patient.errors.full_messages.inspect
    end
  end



  def edit
  end

  def destroy
  end

  

  def show
  end
 
  private

  def patient_params
    params.require(:patient).permit(:f_name,:l_name,:gender,:date_of_birth)
  end

end