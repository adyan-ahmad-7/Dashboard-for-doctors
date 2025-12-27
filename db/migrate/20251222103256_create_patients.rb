class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :f_name
      t.string :l_name
      t.string :gender
      t.date :data_of_birth
      t.string :patient_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
