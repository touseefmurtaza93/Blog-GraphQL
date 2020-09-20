module Types
  class CommentType < Types::BaseObject
    description 'Comment'

    field :id, ID, null: false
    field :post_id, String, null: false, camelize: false
    field :body, String, null: false
  end
end
