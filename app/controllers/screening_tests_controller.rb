class ScreeningTestsController < ApplicationController
  def index
    @screening_tests = ScreeningTest.all
  end

  def create
    @screening_test = ScreeningTest.new(screening_test_params)
    if @screening_test.save
      redirect_to screening_test_path(@screening_test)
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

  def show
    @screening_test = ScreeningTest.find(params[:id])
  end

  def update    
  end
  
  def destroy  
  end

  private 

  def screening_test_params
    params.require(:screening_test).permit(
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
end