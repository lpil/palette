defmodule Palette.String do
  @suffix "\e[0m"

  def wrap(string, []) do
    string
  end
  def wrap(string, codes) do
    prefix(List.wrap codes) <> string
    |> apply_suffix
  end

  defp prefix(codes) do
    "\e[#{ Enum.join codes, ";" }m"
  end

  defp apply_suffix(str) do
    if String.ends_with?(str, @suffix) do
      str
    else
      str <> @suffix
    end
  end
end
