class JobLevel < ActiveRecord::Base
  belongs_to :character
  belongs_to :job
end
