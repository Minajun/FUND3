json.array!(@projects) do |project|
  json.extract! project, :id, :title, :status, :total_amount, :deadline, :volunteerprj_id, :leader_id, :description, :present_name, :prizewinner_id
  json.url project_url(project, format: :json)
end
