defmodule TestInterpreter do
  def effect(ast) do
    IO.inspect(ast, label: "AST")
    ast
  end
end
