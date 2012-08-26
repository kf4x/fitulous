class PlansController < ApplicationController
  before_filter :require_login

  def new
    @plan = current_user.plans.new
  end
  
  def create
    @plan = current_user.plans.build(params[:plan])
    @plan.save
    # @exercise = current_user.plans.find_by_id("#{@plan.id}").exercises.new(:name => 'curl', :worked => 'bicept' )
    # @exercise.save
    if @plan.save
      flash[:notice] = "Plan successfully created!"
      redirect_to new_exercise_path
    else
      render('new')
    end 
  end
  
  def index
    @plans = current_user.plans.all
  end
  
  def show
    @plan = Plan.find(params[:id]) 
  end
  
  def edit
   @plan = current_user.plans.find(params[:id])
   if @plan.update_attributes(params[:id])
    redirect_to plans_path
   end
  end
  
  def destroy
   @plan = current_user.plans.find(params[:id])
   @plan.destroy
   flash[:notice] = "Plan successfully deleted!"
   redirect_to plans_path
  end
end
