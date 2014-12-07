class PatientsController < ApplicationController
  def create
    @patient = Patient.new(patient_params)
    @patient.gender.downcase! if @patient.gender
    if @patient.save
      redirect_to patient_path(@patient)
    else
      flash[:alert] = "Please make sure all fields are filled in correctly :)"
      redirect_to root_path
    end
  end

  def show
    @patient = Patient.find(params[:id])
    @screening_tests = @patient.generate_screening_tests
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