defmodule Geom do
  @doc ~S"""
    Calculates the area of a rectangle

    ## Examples

        iex> Geom.area(:rectangle, 6, 7)
        42

        iex> Geom.area(:rectangle, 7)
        7

        iex> Geom.area(:rectangle)
        1

        iex> Geom.area(:trinagle, 6, 7)
        21.0

        iex> Geom.area(:ellipse, 6, 7)
        131.94689145077132
  """

  def area(shape, width \\ 1, length \\ 1) when width > 0 and length > 0 do
    case shape do
      :rectangle -> width * length
      :trinagle -> width * length / 2
      :ellipse -> :math.pi() * width * length
      _ -> 0
    end
  end

end
