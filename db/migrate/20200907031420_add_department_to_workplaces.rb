class AddDepartmentToWorkplaces < ActiveRecord::Migration[6.0]
  def change
    add_column :workplaces, :department, :string
  end
end
