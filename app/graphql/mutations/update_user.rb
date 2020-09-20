module Mutations
  class UpdateUser < GraphQL::Schema::Mutation
    argument :user, Types::UserInputType, required: true

    def resolve(user:)
      record = User.find_by(id: user[:id])
      record.update(user.to_h)
      record
    end
  end
end
