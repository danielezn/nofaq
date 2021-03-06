class AnswersController < ApplicationController
	before_action :set_answer, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!

	def new
	end

	def create
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	    # Use callbacks to share common setup or constraints between actions.
	    def set_answer
	      @doubt = Answer.find(params[:id])
	    end

	    # Never trust parameters from the scary internet, only allow the white list through.
	    def answer_params
	      params.require(:answer).permit(:title, :description)
	    end

end