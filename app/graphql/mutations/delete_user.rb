module Mutations
  class DeleteUser < GraphQL::Schema::Mutation
    argument :id, ID, required: true

    def resolve(id:)
      record = User.find_by(id: id)
      if record.destroy
        true
      else
        false
      end
    end
  end
end
