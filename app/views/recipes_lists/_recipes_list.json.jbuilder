json.extract! recipes_list, :id, :title, :created_at, :updated_at
json.url recipes_list_url(recipes_list, format: :json)
