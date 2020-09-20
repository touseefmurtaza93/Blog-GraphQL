# README

* Ruby version: `2.7.1`
* Rails version: `6.0.3`

<h2>Application Pre-Requisits</h2>

```
rbenv install 2.7.1
rbenv rehash
rbenv local 2.7.1
gem install rails
```

<h2>GraphiQL (A GUI for editing and testing GraphQL queries and mutations)</h2>

```
GraphiQL Installer: https://www.electronjs.org/apps/graphiql
GraphQL Endpoint: http://localhost:3000/graphql
```

<h2>Completed Functionality</h2>

```
1. Add Blog application in Rails 6
2. Add GraphQL Gem
3. Add User, Post, Comment type
4. Add User, Post, Comment input type
5. Add User, Post, Comment CRUD mutations
6. Add Authentication, Authorization and Access Control (AAA)
```

<h2>Commands used in GraphiQL</h2>

```
mutation updateAuthor($author: AuthorInputType!) {
 updateAuthor(author: $author)
}

mutation {
 deleteAuthor(id: 1)
}

mutation createAuthor($author:AuthorInputType!) {
 createAuthor(author: $author){
   errors {
     field_name
     errors
   }
 }
}

mutation createUser($user:UserInputType!){
 createUser(user: $user) {
   id
   full_address
   errors {
     field_name
     errors
   }
 }
}

mutation updateUser($user:UserInputType!){
 updateUser(user: $user){
   id
   full_address
   errors {
     field_name
     errors
   }
 }
}

mutation deleteUser($id:ID!){
 deleteUser(id: $id)
}

{
 users {
   id
   posts {
     comments {
       body
     }
   }
 }
}

{
 login(email:"test@email.com", password:"password")
}

{
 currentUser {
   email
 }
}

{
 logout
}

mutation createPost($post:PostInputType!){
 createPost(post: $post){
   id
   body
 }
}

mutation createComment($comment:CommentInputType!){
 createComment(comment: $comment){
   id
   body
 }
}
```