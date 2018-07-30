defmodule UseMacro do
  use UseMacro.Macros.ExampleMacro,
    test: false,
    module: __MODULE__

  def go() do
    show_opts()
  end

  def should_be_implemented(_param) do
    # this should be implemented
    nil
  end
end
