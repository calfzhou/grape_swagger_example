require 'grape'

module API
  class Base < Grape::API
    default_format :json

    mount API::HighScores => '/high_scores'

    add_swagger_documentation(
      # base_path: "/",
      hide_documentation_path: true
    )
  end
end
