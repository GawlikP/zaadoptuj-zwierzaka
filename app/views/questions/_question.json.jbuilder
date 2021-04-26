json.extract! question, :id, :user_id, :dog_id, :question, :hiden, :blocked, :reported, :created_at, :updated_at
json.url question_url(question, format: :json)
