defmodule Todo.Repo.Migrations.CreateTodo do
  use Ecto.Migration

  def change do
    create table(:todos, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :description, :string
      add :completed, :boolean, default: false

      timestamps()
    end
  end
end
