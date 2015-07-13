class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    1.times { @question.options.build }
    # builds nested form ..use 1.times as a way of building the form for field
  end

  def create
    @question = Question.new(question_params)
    if @question.save()
      respond_to do |format|
        format.html {redirect_to questions_path}
        format.js
      end
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(:name, options_attributes: [:description, :image])
  end
end
