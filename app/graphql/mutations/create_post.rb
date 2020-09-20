module Mutations
  class CreatePost < GraphQL::Schema::Mutation
    argument :post, Types::PostInputType, required: true

    def resolve(post:)
      Post.create(post.to_h)
    end
  end
end
