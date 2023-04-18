json.extract! latest, :id, :description, :longitude, :latitude, :user_id, :allow_comments, :show_likes_counter, :created_at, :updated_at
json.url latest_url(latest, format: :json)
