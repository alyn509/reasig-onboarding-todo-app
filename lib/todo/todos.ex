defmodule Todo.Todos do
  alias Todo.Repo
  alias Todo.Todos.Todo

  def list_todos do
    Repo.all(Todo)
  end

  def create_todo(attrs) do
    %Todo{}
    |> Todo.changeset(attrs)
    |> Repo.insert()
  end
end
