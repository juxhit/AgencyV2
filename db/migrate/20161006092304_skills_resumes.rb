class SkillsResumes < ActiveRecord::Migration
  def change
    create_table :skills_resumes, id: false do |t|
      t.belongs_to :resume, index: true
      t.belongs_to :skill, index: true
    end
  end
end
