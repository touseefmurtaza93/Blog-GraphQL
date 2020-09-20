module Types
  class PostType < Types::BaseObject
    description 'Posts'

    field :id, ID, null: false
    field :user_id, String, null: false
    field :body, String, null: false
    # field :comments, [Types::CommentType], null: true
  end
end
