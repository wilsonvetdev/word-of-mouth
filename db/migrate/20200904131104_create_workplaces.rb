class CreateWorkplaces < ActiveRecord::Migration[6.0]
  def change
    create_table :workplaces do |t|
      t.belongs_to :college, null: false, foreign_key: true
      t.belongs_to :professor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
