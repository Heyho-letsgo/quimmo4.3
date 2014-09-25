json.array!(@principal_groupes) do |principal_groupe|
  json.extract! principal_groupe, :id, :name
  json.url principal_groupe_url(principal_groupe, format: :json)
end
