module Mutations
  class CreateUser < GraphQL::Schema::Mutation
    argument :user, Types::UserInputType, required: true

    def resolve(user:)
      User.create(user.to_h)
    end
  end
end
