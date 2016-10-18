class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :status
      t.integer :price
      t.integer :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
