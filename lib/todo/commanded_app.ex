defmodule Todo.CommandedApp do
  use Commanded.Application,
    otp_app: :todo,
    event_store: [
      adapter: Commanded.EventStore.Adapters.EventStore,
      event_store: Todo.EventStore
    ]

  router(Todo.CommandedRouter)
end
