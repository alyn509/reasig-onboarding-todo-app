defmodule Todo.Commands.CreateTodo do
  @enforce_keys [:todo_id, :description]
  defstruct [:todo_id, :description, :completed]
end
