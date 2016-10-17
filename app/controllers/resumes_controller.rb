class ResumesController < ApplicationController

  def index
    @resumes = Resume.all
  end

  def show
    @resume = Resume.find(params[:id])
    @skills = @resume
  end

  def new
    @resume = Resume.new
  end

  def edit
    @resume = Resume.find(params[:id])
  end

  def create
    @resume = Resume.new(name: params[:name])
    if @resume.save
      @resume.add_skills(params[:skills]) unless params[:skills].nil?

      redirect_to @resume
    end
  end

  def update
    @resume = Resume.find(params[:id])

    if @resume.update(name: params[:name])
      @resume.add_skills(params[:skills]) unless params[:skills].nil?

      redirect_to @resume
    end
  end

  def destroy
    @resume = Resume.find(params[:id])

    @resume.destroy
    redirect_to resumes_path
  end

end
