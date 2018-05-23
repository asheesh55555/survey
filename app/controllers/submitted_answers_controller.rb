class SubmittedAnswersController < ApplicationController
  include Wicked::Wizard
  steps :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10, :step11, :step12, :step13, :step14, :step15, :step16, :step17, :step18, :step19

  def show
  	if params[:next_question].present?
  		@question = Question.find(params[:next_question])
  	else
  		@question = Question.first
  	end
  	render_wizard
  end

   def update
   @question = Question.find(params[:question_id])
   @question.submitted_answers.create(name: params[:answer], zip_code_id: session[:zip_code_id])
   @question = Question.all.where("id > ?", @question.id).first
    redirect_to next_wizard_path(next_question: @question) 
  end

end
