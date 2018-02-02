defmodule SpecSandbox.User do
  @moduledoc """
  Module for working with users.
  """
  defstruct name: nil, height_in_m: nil, weight_in_kg: nil
  @typedoc """
  Represents a user, with the following fields:

  - `name`: The user's name as a string.
  - `height_in_m`: The user's height in meters, as a float.
  - `weight_in_kg`: The user's weight in kilograms, as a float.
  """
  @type t :: %__MODULE__{
    name: String.t(),
    height_in_m: float(),
    weight_in_kg: float(),
  }

  @doc """
  Get the BMI of a user.

  ## Examples

    iex> %SpecSandbox.User{name: "Acey", height_in_m: 1.7526, weight_in_kg: 81.65}
    ...> |> SpecSandbox.User.bmi()
    26.5822

    iex> %SpecSandbox.User{name: "Slim", height_in_m: 2, weight_in_kg: 90}
    ...> |> SpecSandbox.User.bmi()
    22.5

    # Why doesn't dialyzer get mad about this string where a float should be?
    iex> %SpecSandbox.User{name: "Tiny", height_in_m: 3, weight_in_kg: "heavy"}
    ...> |> SpecSandbox.User.bmi()
    "wat"
  """
  @spec bmi(SpecSandbox.User.t()) :: float()
  def bmi(%__MODULE__{height_in_m: height, weight_in_kg: weight}) do
    weight / (height * height) |> Float.round(4)
  end
end
