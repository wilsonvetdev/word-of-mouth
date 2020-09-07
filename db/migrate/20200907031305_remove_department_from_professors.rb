class RemoveDepartmentFromProfessors < ActiveRecord::Migration[6.0]
  def change
    remove_column :professors, :department, :string
  end
end
