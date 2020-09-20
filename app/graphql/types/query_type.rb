module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    field :posts, [Types::PostType], null: false
    def posts
      Post.where(user_id: 1)
    end

    field :login, String, null: false, description: "Login a user" do
      argument :email, String, required: true
      argument :password, String, required: true
    end
    def login(email:, password:)
      user = User.find_by(email: email).authenticate(password)
      user.sessions.create.key if user
    end

    field :current_user, Types::UserType, null: false
    def current_user
      context[:current_user]
    end

    field :logout, Boolean, null: false
    def logout
      session = Session.find_by(id: context[:session_id])
      session&.destroy
      true
    end
  end
end
