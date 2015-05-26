require 'net/http'

class Place

  DEFAULT_LIMIT = 25
  DEFAULT_POSTAL_CODE = "10003"

  attr_accessor :name, :cross_streets, :url, :category, :foursquare_id

  def initialize(name, cross_streets, url, category, foursquare_id)
    @name = name
    @cross_streets = cross_streets
    @url = url
    @foursquare_id = foursquare_id
    @category = category
  end

  def self.url_for_places_near(postal_code = 10003)
    postal_code = 10003 if postal_code.nil?

    near_query = "near=#{ postal_code }"
    category_query = "categoryId=4d4b7105d754a06374d81259"

    full_url = "https://api.foursquare.com/v2/venues/search?" \
               "#{ category_query }" \
               "&" \
               "#{ near_query }" \
               "&" \
               "client_id=H4B5X5BNENRXXRTWMTNPSMWIFCJH0TQCBOXLXP51UZTKB5VR" \
               "&" \
               "client_secret=JHSE1ZPL2JYXRIRE1ADXGBUMDB2Z1FHKIQLC4CICMJOEMWEC" \
               "&v=20140806"

    return full_url
  end

  def self.all_venues_near(postal_code)
    locale_url = self.url_for_places_near(postal_code)
    url = URI.parse(locale_url)
    request = Net::HTTP::Get.new(url.to_s)
    http = Net::HTTP.new(url.host, url.port) { |http| http.request(request) }
    http.use_ssl = true
    response = http.request(request)

    if JSON.parse(response.body)["meta"]["code"] == 200
      return JSON.parse(response.body)["response"]["venues"]
    else
      return []
    end
  end

  def self.get_venue_objects_collection_at_location(postal_code, limit)
    Place.create_many_places(Place.all_venues_near(postal_code), limit)
  end

  def self.create_many_places(all_places, limit = 10)

    places = all_places.first(limit).collect do |p|
      parsed = Place.parse_place(p)
      Place.new(
        parsed[:name],
        parsed[:cross_streets],
        parsed[:url],
        parsed[:category],
        parsed[:foursquare_id]
      )
    end
  end

  def self.parse_place(place_from_api)
    #NOTE: the cross_streets attribtue should not return as
    #"NOT ENTERED" on the front end...

    {
      name: place_from_api["name"],
      cross_streets: place_from_api["location"]["crossStreet"],
      url: place_from_api["url"],
      category: place_from_api["categories"].first["name"],
      foursquare_id: place_from_api["id"]
    }
  end

  def self.limit_default(limit)
    if limit.nil?
      DEFAULT_POSTAL_CODE
    else
      return limit.to_i
    end
  end

  def self.postal_code_default(postal_code)
    if postal_code.nil?
      DEFAULT_POSTAL_CODE
    else
      return postal_code
    end
  end


end
