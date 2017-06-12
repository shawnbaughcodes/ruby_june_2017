class SurveyController < ApplicationController
  def index
      @surveys = Survey.all
      puts @surveys
  end

  def new

  end

  def create
    #   fail
      survey = Survey.create(survey_params)
      redirect_to '/'
  end
  private
    def survey_params
        params.require(:survey).permit(:name, :dojo_location, :favorite_language, :comment)
    end
end
