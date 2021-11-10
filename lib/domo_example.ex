defmodule DomoExample do
  use TypedStruct
  use Domo

  typedstruct do
    field(:meta, map(), default: %{}, enforce: true)
  end

  defmacro __using__(_opts) do
    quote do
      use TypedStruct
      use Domo

      typedstruct do
        field(:meta, map(), default: %{}, enforce: true)
      end

      def create(data) do
        DomoExample.new_ok(%{meta: data})
      end
    end
  end
end
