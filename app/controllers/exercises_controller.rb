class ExercisesController < ApplicationController
  before_filter :require_login
  
  def new
    @exercise = current_user.plans.last.exercises.new
  end
  
  def index
    @exercise = Exercise.all
  end
  
  def create
     @exercise = current_user.plans.last.exercises.build(params[:exercise])
     @exercise.save
     if @exercise.save
       redirect_back_or_to plans_path
     end
  end
  
  def edit_plan_exercise
    @exercise = @plan.exercises.find(params[:id])
  end
end
