class Recipe
  include HTTParty
  key_value = ENV["FOOD2FORK_KEY"] || "1fc37808f91a51a56dbc6012ecaf7a75"
  #1fc37808f91a51a56dbc6012ecaf7a75
  hostport = ENV["FOOD2FORK_SERVER_AND_PORT"] || "www.food2fork.com"
  base_uri "http://#{hostport}/api"
  default_params key: key_value
  format :json


  def self.for term
    get("/search", query:{ q: term})["recipes"]
  end

end