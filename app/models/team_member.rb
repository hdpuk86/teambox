class TeamMember < ApplicationRecord
  belongs_to :grouping, optional: true
end
