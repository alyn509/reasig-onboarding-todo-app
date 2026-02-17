defmodule Todo.Todos do
  import Ecto.Query
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

  def list_children(parent_id) do
    Repo.all(from t in Todo, where: t.parent_id == ^parent_id)
  end
end
