json.array!(@follow_users) do |follow_user|
  json.extract! follow_user, :id, :follower_id, :following_id
  json.url follow_user_url(follow_user, format: :json)
end
