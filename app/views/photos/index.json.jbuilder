json.photos @photos do |photo|

json.id photo.id
json.name photo.name
json.avatar_file_name photo.avatar.url
json.like photo.like
json.look photo.look
json.prefecture photo.prefecture.name


end
