json.array!(@volunteer_projects) do |volunteer_project|
  json.extract! volunteer_project, :id, :name, :description, :link
  json.url volunteer_project_url(volunteer_project, format: :json)
end
