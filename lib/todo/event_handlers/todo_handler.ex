defmodule Todo.EventHandlers.TodoHandler do
  use Commanded.Event.Handler,
    name: "TodoHandler",
    application: Todo.CommandedApp

  alias Todo.Todos.TodoSchema
  alias Todo.Repo
  alias Todo.Events.TodoCreated

  @impl true
  def handle(%TodoCreated{} = event, _metadata) do
    %TodoSchema{
      id: event.todo_id,
      description: event.description,
      completed: event.completed
    }
    |> Repo.insert()
  end
end
