defmodule TodoWeb.GraphQL.Resolvers.TodoResolver do
  alias Todo.Todos

  def list_todos(_parent, _args, _resolution) do
    {:ok, Todos.list_todos()}
  end

  def create_todo(_parent, args, _resolution) do
    Todos.create_todo(args)
  end
end
