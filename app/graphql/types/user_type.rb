module Types
  class UserType < Types::BaseObject
    description 'Users'

    field :id, ID, null: false
    field :first_name, String, null: false, camelize: false
    field :last_name, String, null: true, camelize: false
    field :email, String, null: false
    field :street, String, null: true
    field :number, String, null: true
    field :city, String, null: false
    field :postcode, Int, null: false
    field :country, String, null: false
    field :full_address, String, null: false, camelize: false
    field :posts, [Types::PostType], null: true
    field :errors, [Types::ErrorType], null: true

    def errors
      object.errors.map { |e| { field_name: e, errors: object.errors[e] } }
    end

    def self.visible?(context)
      !!context[:current_user]
    end
  end
end
