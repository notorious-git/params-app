class Api::ParamsExamplesController < ApplicationController
  def query_params_method
    render "query_params.json.jbuilder"
  end
end
