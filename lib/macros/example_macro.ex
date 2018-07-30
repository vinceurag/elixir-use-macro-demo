defmodule UseMacro.Macros.ExampleMacro do
  @callback should_be_implemented(tuple) :: no_return

  defmacro __using__(opts) do
    quote do
      @opts unquote(opts)

      @behaviour unquote(__MODULE__)

      def show_opts() do
        IO.inspect @opts
      end
    end
  end
end
