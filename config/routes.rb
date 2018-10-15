Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get "/query_params_url" => "params_examples#query_params_method"
    get "/url_segment_params_url/:this_is_a_variable/stuff" => "params_examples#url_segment_params_method"
    post "/body_params_url" => "params_examples#body_params_method"

    get "/query_name_url" => "params_examples#query_name_method"
    get "/query_guess_url" => "params_examples#query_guess_method"

    get "/segment_guess_url/:guess" => "params_examples#query_guess_method"

    post "/body_guess_url" => "params_examples#query_guess_method"
  end
end
