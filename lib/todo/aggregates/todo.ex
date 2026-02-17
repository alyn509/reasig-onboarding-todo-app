defmodule Todo.Aggregate.TodoAggregate do
  defstruct [:todo_id, :description, :completed]

  alias Todo.Commands.CreateTodo
  alias Todo.Events.TodoCreated

  def execute(%__MODULE__{todo_id: nil}, %CreateTodo{} = cmd) do
    %TodoCreated{
      todo_id: cmd.todo_id,
      description: cmd.description,
      completed: cmd.completed
    }
  end

  def apply(%__MODULE__{} = state, %TodoCreated{} = evt) do
    %__MODULE__{
      state
      | todo_id: evt.todo_id,
        description: evt.description,
        completed: evt.completed
    }
  end
end
