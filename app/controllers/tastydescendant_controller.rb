class TastydescendantController < ApplicationController
  def autocomplete
    render json: descendurl(@@autocomplete,{ :prefix => 'chicken soup'})
  end

  def listrecipes
    render json: descendurl(@@listrecipes,{ :from => 20, :size => 40})
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


end
