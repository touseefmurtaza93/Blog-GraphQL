class Types::ErrorType < Types::BaseObject
  field :field_name, String, null: false, camelize: false
  field :errors, [String], null: false
end
