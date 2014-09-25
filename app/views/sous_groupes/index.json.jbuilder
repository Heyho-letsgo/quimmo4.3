json.array!(@sous_groupes) do |sous_groupe|
  json.extract! sous_groupe, :id, :nom, :principal_groupe_id
  json.url sous_groupe_url(sous_groupe, format: :json)
end
