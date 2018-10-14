class Api::ParamsExamplesController < ApplicationController
  def query_params_method
    @the_name = params["name"]
    @my_price = params["price"]
    render "query_params.json.jbuilder"
  end

  def query_name_method
    input_name = params["name"]
    @output_name = input_name.upcase
    if @output_name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render "query_name.json.jbuilder"
  end
end
