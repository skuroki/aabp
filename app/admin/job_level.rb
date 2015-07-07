ActiveAdmin.register JobLevel do
  permit_params :character_id, :job_id, :level
  index do
    column :character
    column :job
    column :level
  end
end
