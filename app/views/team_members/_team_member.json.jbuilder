json.extract! team_member, :id, :first_name, :last_name, :created_at, :updated_at
json.url team_member_url(team_member, format: :json)
