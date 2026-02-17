defmodule Todo.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do
    field :description, :string
    field :completed, :boolean, default: false

    belongs_to :parent, __MODULE__
    has_many :children, __MODULE__, foreign_key: :parent_id

    timestamps()
  end

  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:description, :completed, :parent_id])
    |> validate_required([:description])
  end
end
