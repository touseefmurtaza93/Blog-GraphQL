class Types::CommentInputType < GraphQL::Schema::InputObject
  graphql_name "CommentInputType"

  argument :id, ID, required: false
  argument :post_id, String, required: true, camelize: false
  argument :body, String, required: true
end
