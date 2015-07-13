class OptionsController < ApplicationController
  def update
    @question = Question.find(params[:question_id])
    @option = @question.options.find(params[:id])
    if @option.update(score: @option.score + 1)
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    end
  end

# because we are only updating score we can just use an update on the score. instead of embedding it into the link

  private

  def option_params
    params.require(:option).permit(:description, :score, :image)
  end
end
