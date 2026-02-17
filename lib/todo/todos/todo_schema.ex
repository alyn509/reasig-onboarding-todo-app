defmodule Todo.Todos.TodoSchema do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: false}
  @derive {Phoenix.Param, key: :id}
  schema "todos" do
    field :description, :string
    field :completed, :boolean, default: false

    timestamps()
  end

  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:id, :description, :completed])
    |> validate_required([:id, :description, :completed])
  end
end
