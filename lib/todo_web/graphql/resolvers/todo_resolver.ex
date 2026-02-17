defmodule TodoWeb.GraphQL.Resolvers.TodoResolver do
  alias Todo.Todos
  alias Todo.Commands.CreateTodo

  def list_todos(_parent, _args, _resolution) do
    {:ok, Todos.list_todos()}
  end

  def create_todo(_parent, %{description: description}, _resolution) do
    todo_id = UUID.uuid4()

    cmd = %CreateTodo{
      todo_id: todo_id,
      description: description,
      completed: false
    }

    case Todo.CommandedApp.dispatch(cmd) do
      :ok ->
        {:ok,
         %{
           id: todo_id,
           description: description,
           completed: false
         }}

      {:error, reason} ->
        {:error, inspect(reason)}
    end
  end
end
