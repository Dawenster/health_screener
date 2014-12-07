class ScreeningTestsController < ApplicationController
  http_basic_authenticate_with :name => ENV['ADMIN_USER_NAME'], :password => ENV['ADMIN_USER_PASSWORD'], :only => [:index]

  def index
    @screening_tests = ScreeningTest.all
  end

  def create
    @screening_test = ScreeningTest.new(screening_test_params)
    if @screening_test.save
      redirect_to screening_tests_path
    else
      flash[:alert] = "Please make sure all fields are filled in correctly :)"
      render "new"
    end
  end

  def new
    @screening_test = ScreeningTest.new
  end

  def edit
    @screening_test = ScreeningTest.find(params[:id])
  end

  def update
    @screening_test = ScreeningTest.find(params[:id])
    @screening_test.assign_attributes(screening_test_params)
    if @screening_test.save
      redirect_to screening_tests_path
    else
      flash[:alert] = "Please make sure all fields are filled in correctly :)"
      render "edit"
    end
  end
  
  def destroy  
    ScreeningTest.find(params[:id]).destroy
    redirect_to screening_tests_path
  end

  private 

  def screening_test_params
    cleanup_params.require(:screening_test).permit(
      :name,
      :start_age,
      :end_age,
      :gender,
      :interval,
      :additional_info,
      :source,
      :follow_up,
      :_destroy
    )
  end

  def cleanup_params
    params[:screening_test][:gender].downcase!
    return params  
  end
end