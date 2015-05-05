json.array!(@names) do |name|
  json.extract! name, :id, :first_name, :middle_name, :last_name
  json.url name_url(name, format: :json)
end
