class SkillsVacancies < ActiveRecord::Migration
  def change
    create_table :skills_vacancies, id: false do |t|
      t.belongs_to :vacancy, index: true
      t.belongs_to :skill, index: true
    end
  end
end
