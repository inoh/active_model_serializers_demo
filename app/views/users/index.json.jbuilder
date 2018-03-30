json.extract! @user, :name, :address

json.posts do
  json.array! @user.posts, :title, :note
end
