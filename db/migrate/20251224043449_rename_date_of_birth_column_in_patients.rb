class RenameDateOfBirthColumnInPatients < ActiveRecord::Migration[6.1]
  def change
    rename_column :patients, :data_of_birth, :date_of_birth
  end
end
