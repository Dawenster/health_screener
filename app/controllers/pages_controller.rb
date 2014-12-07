class PagesController < ApplicationController
  def landing
    @patient = Patient.new
  end

  def results
  end
end