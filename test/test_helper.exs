ExUnit.start()

# Load support modules
Code.load_file("test/support/test_struct.exs")
Code.load_file("test/support/test_default_field_struct.exs")
Code.load_file("test/support/test_state_machine.exs")
Code.load_file("test/support/test_state_machine_with_guard.exs")
Code.load_file("test/support/test_state_machine_default_field.exs")
Code.load_file("test/support/test_repo.exs")

defmodule MachineryTest.Helper do
  import ExUnit.CaptureLog

  alias MachineryTest.TestRepo
  alias MachineryTest.TestStateMachine
  alias MachineryTest.TestStruct

  @doc false
  def machinery_interface(enable \\ true) do
    Application.put_env(:machinery, :module, TestStateMachine)
    Application.put_env(:machinery, :model, TestStruct)
    Application.put_env(:machinery, :repo, TestRepo)
    Application.put_env(:machinery, :interface, enable)

    :ok
  end
end
