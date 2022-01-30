require 'json'

class TastydescendantController < ApplicationController
  include TastydescendantHelper

  def autocomplete
    render json: descendurl(@@autocomplete,{ :prefix => 'chicken soup'})
  end
  
  def listrecipes
    query = listrecipes_params();
    query[:size] = 40;
    data =  descendurl(@@listrecipes,query)
    data['results'] =  data['results'].select {|recipe| 
      recipe["tags"].length > 0 and not
      recipe["thumbnail_url"].include? "s3.amazonaws.com" and not 
      recipe["recipes"]
    }
    render json:data
  end

  def detailrecipe
    render json: descendurl(@@detailrecipe,{ :id => 5586 })
  end

  def listtags
    render json: descendurl(@@listtags,{  })
  end

  def listfeeds
    render json: descendurl(@@listfeeds,{ :from => 0, :size => 20, :vegetarian => True, :timezone => '+0700'})
  end

  def listsimilarities
    render json: descendurl(@@listsimilarities,{ :recipe_id => 5586})
  end

  def getimage
    params = getimage_params();
    send_data(descendimage(params[:from],params[:width],params[:height]), 
      type:  'image/jpg', 
      disposition: 'inline')
  end
  

  private
  
    def getimage_params
      params.permit(:from, :width, :height)
    end
    # Only allow a list of trusted parameters through.
    def listrecipes_params
      params.permit(:from, :size, :tags)
    end
end
