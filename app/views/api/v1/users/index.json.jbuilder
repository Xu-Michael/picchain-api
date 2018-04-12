json.user do
  json.array! @users do |user|
    json.extract! user, :id, :name, :avatar, :votes, :created_at
  end
end
