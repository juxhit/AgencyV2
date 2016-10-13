class Vacancy < ActiveRecord::Base
  has_and_belongs_to_many :skills
  accepts_nested_attributes_for :skills

  def add_skills(skills_list)
    for skill in skills_list
      if s = Skill.find_by(name: skill)
        self.skills << s
      else
        self.skills << Skill.create!(name: skill)
      end
    end
  end

end
