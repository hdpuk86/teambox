class AddReferenceGroupingToTeamMember < ActiveRecord::Migration[6.1]
  def change
    add_reference :team_members, :grouping, null: true, foreign_key: true
  end
end
