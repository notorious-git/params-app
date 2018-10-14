class Api::ParamsExamplesController < ApplicationController
  def query_params_method
    @the_name = params["name"]
    @my_price = params["price"]
    render "query_params.json.jbuilder"
  end
end
