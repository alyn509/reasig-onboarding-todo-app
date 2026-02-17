defmodule Todo.Todos do
  alias Todo.Repo
  alias Todo.Todos.TodoSchema

  def list_todos do
    Repo.all(TodoSchema)
  end

  def create_todo(attrs) do
    %TodoSchema{}
    |> TodoSchema.changeset(attrs)
    |> Repo.insert()
  end
end
