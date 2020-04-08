defmodule TestInterpreter do
  def effect(ast) do
    {ast, _acc} =
      Macro.prewalk(ast, %{}, fn e, acc ->
        IO.inspect(e, label: "L")
        {e, acc}
      end)

    ast
  end
end
