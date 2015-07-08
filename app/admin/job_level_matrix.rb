ActiveAdmin.register_page 'job_level_matrix' do
  content do
    characters = Character.all.to_a
    jobs = Job.all.to_a
    job_levels = JobLevel.all.to_a

    table class: 'index_table' do
      thead do
        tr do
          th '名前'
          jobs.each { |job| th job.name }
        end
      end
      tbody do
        characters.each do |character|
          tr do
            td character.name
            jobs.each do |job|
              td character.job_levels.find_by(job: job).try(:level)
            end
          end
        end
      end
    end
  end
end
