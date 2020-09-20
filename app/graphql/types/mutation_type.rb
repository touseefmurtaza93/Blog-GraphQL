module Types
  class MutationType < Types::BaseObject
    field :create_user, Types::UserType, mutation: Mutations::CreateUser
    field :update_user, Types::UserType, mutation: Mutations::UpdateUser
    field :delete_user, Boolean, mutation: Mutations::DeleteUser

    field :create_comment, Types::CommentType, mutation: Mutations::CreateComment
    field :create_post, Types::PostType, mutation: Mutations::CreatePost
  end
end
