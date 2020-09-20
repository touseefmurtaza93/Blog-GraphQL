class Types::UserInputType < GraphQL::Schema::InputObject
  graphql_name "UserInputType"

  argument :id, ID, required: false
  argument :first_name, String, required: false, camelize: false
  argument :last_name, String, required: false, camelize: false
  argument :street, String, required: false
  argument :number, String, required: false
  argument :city, String, required: false
  argument :postcode, Int, required: false
  argument :country, String, required: false
end
