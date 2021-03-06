class PatientsController < ApplicationController
  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patient_path(@patient)
    else
      flash[:alert] = @patient.errors.full_messages.join(". ") + "."
      redirect_to root_path
    end
  end

  def show
    @patient = Patient.find(params[:id])
    @screening_tests = @patient.generate_screening_tests
  end

  private 

  def patient_params
    cleanup_params.require(:patient).permit(
      :age,
      :gender,
      :weight,
      :height,
      :smoking_history,
      :_destroy
    )

  end

  def cleanup_params
    params[:patient][:gender].downcase!
    return params
  end
end