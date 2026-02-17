defmodule Todo.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do
    field :description, :string
    field :completed, :boolean, default: false

    timestamps()
  end

  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:description, :completed])
    |> validate_required([:description])
  end
end
