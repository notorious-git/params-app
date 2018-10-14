class Api::ParamsExamplesController < ApplicationController
  def query_params_method
    @the_name = params["name"]
    @my_price = params["price"]
    render "query_params.json.jbuilder"
  end

  def url_segment_params_method
    @message = params["this_is_a_variable"]
    render "url_segment_params.json.jbuilder"
  end

  def query_name_method
    input_name = params["name"]
    @output_name = input_name.upcase
    if @output_name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render "query_name.json.jbuilder"
  end

  def query_guess_method
    winning_number = 32
    input_guess = params["guess"].to_i
    if input_guess > winning_number
      @output_message = "Pick lower!"
    elsif input_guess < winning_number
      @output_message = "Pick higher!"
    else
      @output_message = "You win!"
    end
    render "query_guess.json.jbuilder"
  end

  def segment_guess_method
    winning_number = 32
    input_guess = params["guess"].to_i
    if input_guess > winning_number
      @output_message = "Pick lower!"
    elsif input_guess < winning_number
      @output_message = "Pick higher!"
    else
      @output_message = "You win!"
    end
    render "segment_guess.json.jbuilder"
  end
end
