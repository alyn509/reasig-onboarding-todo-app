defmodule Todo.Repo.Migrations.CreateTodo do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :descriotion, :string
      add :completed, :boolean

      add :parent_id, references(:todos, on_delete: :nilify_all)

      timestamps()
    end

    create index(:todos, [:parent_id])
  end
end
