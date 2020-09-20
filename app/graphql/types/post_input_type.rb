class Types::PostInputType < GraphQL::Schema::InputObject
  graphql_name "PostInputType"

  argument :id, ID, required: false
  argument :user_id, String, required: true, camelize: false
  argument :body, String, required: true
end
