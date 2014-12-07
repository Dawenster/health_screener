class PatientsController < ApplicationController
  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      flash[:notice] = "#{@patient.name} has been successfully created."
      redirect_to patient_name_path(@patient.url)
    else
      flash.now[:alert] = "Please make sure all fields are filled in correctly :)"
      render "new"
    end
  end

  private 

  def organization_params
    params.require(:organization).permit(
      :name,
      :url,
      :logo,
      :background_image,
      :people_descriptor,
      :_destroy
      ]
    )
  end
end