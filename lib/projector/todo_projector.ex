defmodule Todo.Projector.TodoProjector do
  use Commanded.Projections.Ecto,
    application: Todo.CommandedApp,
    repo: Todo.Repo,
    name: "todo_projection"

  alias Todo.Projection.TodoProjection
  alias Todo.Events.TodoCreated

  project(%TodoCreated{} = event, _metadata, fn multi ->
    Ecto.Multi.insert(multi, :todo_projection, %TodoProjection{
      id: event.todo_id,
      description: event.description,
      completed: event.completed
    })
  end)
end
