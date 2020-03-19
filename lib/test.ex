defmodule Test do
  @moduledoc """
  The state machine for Profile
  """

  use Machinery,
    states: ["a", "b", "c"],
    transitions: %{
      "a" => "b",
      "b" => "c"
    }

  # TODO: Log next_state to BigQuery
  def log_transition(struct, next_state) do
    IO.puts("hello")
    struct
  end
end
