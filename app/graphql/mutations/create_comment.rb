module Mutations
  class CreateComment < GraphQL::Schema::Mutation
    argument :comment, Types::CommentInputType, required: true

    def resolve(comment:)
      Comment.create(comment.to_h)
    end

    def self.accessible?(_context)
      false
    end
  end
end
