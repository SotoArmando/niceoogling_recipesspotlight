require 'httparty'


module TastydescendantHelper
    include HTTParty
    
    @@autocomplete, 
    @@listrecipes,
    @@detailrecipe,
    @@listtags,
    @@listfeeds,
    @@listsimilarities = [
        'recipes/auto-complete?',
        'recipes/list?',
        'recipes/detail?',
        'tags/list?',
        'feeds/list?',
        'recipes/list-similarities?'
    ]
    def descendurl(url, params)
      Rails.cache.fetch(['https://tasty.p.rapidapi.com/'+url, params], :expires => 31.days) do
        HTTParty.get('https://tasty.p.rapidapi.com/'+url+params.to_query,
          headers: {
            "x-rapidapi-host" => "tasty.p.rapidapi.com",
            "x-rapidapi-key" => "d47e2c0a26msha5142819817b97bp1bce93jsne76fd5e28006",
            },
          :debug_output => $stdout).to_json
      end
    end
end
  