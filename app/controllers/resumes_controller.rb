class ResumesController < ApplicationController
  def index
    byebug
    @resumes = Resume.all
    @webs = Web.all
    
  end

  def new
    byebug
    @resume = Resume.new
  end

  def create
    @resume= Resume.new(resume_params)
    byebug

    if @resume.save
      redirect_to resumes_path, notice:"the resume #{@resume.name} has been uploaded"
    else
      render "new"
    end
  end

  def destroy
    @resume=Resume.find(params[:id])
    @resume.destroy
    redirect_to resume_path, notice:"the resume #{@resume.name} has been deleted"
  end
  private
   def resume_params
    params.require(:resume).permit(:name, :attachment) 
  end
end
