require 'httparty'
require 'rmagick'
include Magick

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
            }).to_hash
      end
    end

    def descendimage(url, width = 300,height = 300)
      data = Rails.cache.fetch([url], :expires => 31.days) do
        data = ''
        HTTParty.get(url, stream_body: true) do |fragment|
          data += fragment;
        end
        Hash["blob" => data]
      end
      geom = "#{width}x#{height}"
      img = Image.from_blob(data["blob"])[0]
      img.change_geometry!(geom) { |cols, rows| img.thumbnail! cols, rows }
      return img.to_blob
    end
end
  