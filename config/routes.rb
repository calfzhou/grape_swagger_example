Example::Application.routes.draw do

  constraints(host: /^(?!api).+/) do
    resources :high_scores

    root 'high_scores#index'
  end

  # API+API Documentation
  constraints(host: /^api.+/) do
    mount API::Base => '/'
    mount GrapeSwaggerRails::Engine => '/'
  end

end
