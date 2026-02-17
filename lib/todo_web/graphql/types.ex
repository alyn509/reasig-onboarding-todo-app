defmodule TodoWeb.GraphQL.Types do
  use Absinthe.Schema.Notation
  # alias Todo.Repo

  object :todo do
    field :id, :id
    field :description, :string
    field :completed, :boolean
  end
end
