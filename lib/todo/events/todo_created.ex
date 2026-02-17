defmodule Todo.Events.TodoCreated do
  @derive Jason.Encoder
  defstruct [:todo_id, :description, :completed]
end
