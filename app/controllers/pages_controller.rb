class PagesController < ApplicationController
  def landing
    @patient = Patient.new
  end
end