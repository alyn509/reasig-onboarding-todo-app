defmodule Todo.Projection.TodoProjection do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: false}
  schema "todos" do
    field :description, :string
    field :completed, :boolean

    timestamps()
  end
end
