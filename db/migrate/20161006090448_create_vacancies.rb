class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :name
      t.datetime :validity
      t.integer :price
      t.string :contacts

      t.timestamps null: false
    end
  end
end
