defmodule Todo.CommandedRouter do
  use Commanded.Commands.Router

  alias Todo.Commands.CreateTodo
  alias Todo.Aggregate.TodoAggregate

  identify(TodoAggregate, by: :todo_id)

  dispatch(CreateTodo, to: TodoAggregate)
end
