class StudentsController < ApplicationController
	def index
		@students = Student.all
	end
	def new
		@students = Student.new
		@results = Result.new
	end
	
	def create

	end

	def search

	end

	def show
		@results = Result.all
		@student = Student.find(params[:id])
		@subject = Subject.all
	end
end
