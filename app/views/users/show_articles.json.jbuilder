json.owner_name @user.username
json.articles @articles do |article|
  json.id article.id
  json.name article.name
  json.price article.price
  json.description article.description
end
