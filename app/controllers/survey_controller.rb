class SurveysController < ApplicationController
	
	def index
		@surveys = Survey.all
	end

	def new
		@survey = Survey.new
		3.times do 
			question = @survey.questions.build
			4.times { question.answers.build }
		end
	end

	def create
		@survey = Survey.create(params[:title])
	end


end


