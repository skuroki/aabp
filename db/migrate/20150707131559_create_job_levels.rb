class CreateJobLevels < ActiveRecord::Migration
  def change
    create_table :job_levels do |t|
      t.references :character, index: true, foreign_key: true
      t.references :job, index: true, foreign_key: true
      t.integer :level

      t.timestamps null: false
    end
  end
end
