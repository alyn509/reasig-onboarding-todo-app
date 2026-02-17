defmodule TodoWeb.GraphQL.Schema do
  use Absinthe.Schema

  alias TodoWeb.GraphQL.{Types, Resolvers.TodoResolver}

  import_types(Types)

  query do
    field :todos, list_of(:todo) do
      resolve(&TodoResolver.list_todos/3)
    end
  end

  mutation do
    field :create_todo, :todo do
      arg(:description, non_null(:string))

      resolve(&TodoResolver.create_todo/3)
    end
  end
end
