defmodule SpecSandbox do
  @moduledoc """
  Documentation for SpecSandbox.
  """

  @doc """
  Reverse a string

  ## Examples

      iex> SpecSandbox.reverse("bat")
      "tab"

  """
  @spec reverse(String.t()) :: String.t()
  def reverse(string) do
    String.reverse(string)
  end
end
