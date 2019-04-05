json.extract! profile, :id, :avatar, :background, :user_id, :name, :website, :bio, :created_at, :updated_at
json.url profile_url(profile, format: :json)
