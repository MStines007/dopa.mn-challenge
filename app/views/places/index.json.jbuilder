json.array!(@places) do |place|
  json.name place.name
  json.cross_streets place.cross_streets
  json.url place.url
  json.category place.category
  json.foursquare_id place.foursquare_id
  json.phone_num place.phone_num
end
