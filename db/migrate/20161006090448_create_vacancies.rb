class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
