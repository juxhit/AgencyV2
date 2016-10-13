class VacanciesController < ApplicationController

  def index
    @vacancies = Vacancy.all
  end

  def show
    @vacancy = Vacancy.find(params[:id])
    @skills = @vacancy
  end

  def new
    @vacancy = Vacancy.new
  end

  def edit
    @vacancy = Vacancy.find(params[:id])
  end

  def create
    @vacancy = Vacancy.new(name: params[:name])
    if @vacancy.save
      @vacancy.add_skills(params[:skills]) unless params[:skills].nil?

      redirect_to @vacancy
    end
  end

  def update
    @vacancy = Vacancy.find(params[:id])

    if @vacancy.update(name: params[:name])
      @vacancy.add_skills(params[:skills]) unless params[:skills].nil?
      
      redirect_to @vacancy
    end
  end

  def destroy
    @vacancy = Vacancy.find(params[:id])

    @vacancy.destroy
    redirect_to vacancies_path
  end

  private
    def vacancy_params
      params.require(:vacancy).permit(:name, {skill_ids: [:id, :name]})
    end
end
