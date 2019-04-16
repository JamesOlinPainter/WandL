class ProblemsController < ApplicationController
  def create
    @lesson = Lesson.find(params[:lesson_id])
    @problem = @lesson.problems.create(problem_params)
    redirect_to lesson_path(@lesson)
  end

  def destroy
    @lesson = Lesson.find(params[:lesson_id])
    @problem = @lesson.problem.find(params[:id])
    @problem.destroy
    redirect_to lesson_path(@lesson)
  end

  private
    def problem_params
      params.require(:problem).permit(:question, :choices, :answers)
    end
end
