class PatientsController < ApplicationController
  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to results_path
    else
      flash[:alert] = "Please make sure all fields are filled in correctly :)"
      redirect_to root_path
    end
  end

  private 

  def patient_params
    params.require(:patient).permit(
      :age,
      :gender,
      :weight,
      :height,
      :_destroy
    )
  end
end