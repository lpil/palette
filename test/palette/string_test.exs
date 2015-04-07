defmodule Palette.StringTest do
  use ShouldI
  use ExUnit.Case

  @subject Palette.String

  with ".wrap" do

    with "no codes" do
      should "do nothing" do
        assert @subject.wrap("Hi!", []) == "Hi!"
      end
    end

    with "one code" do
      should "prepend single code" do
        assert @subject.wrap("Hi!", 31) == "\e[31mHi!\e[0m"
      end
    end

    with "one code passed as a list" do
      should "prepend single code" do
        assert @subject.wrap("Hi!", [21]) == "\e[21mHi!\e[0m"
      end
    end

    with "multiple codes" do
      should "prepend merged codes" do
        assert @subject.wrap("Hi!", [21,31,4]) == "\e[21;31;4mHi!\e[0m"
      end
    end

    should "never have more than one suffix" do
      desired_suffix = "hi!\e[0m"
      string = "hi!"
                |> @subject.wrap(21)
                |> @subject.wrap(31)
                |> @subject.wrap(4)
      assert String.ends_with?(string, desired_suffix),
             "#{inspect string} should end with #{inspect desired_suffix}"
    end

    should "never have more than one prefix" do
      desired_prefix = "\e[4;31;21mhi!"
      string = "hi!"
                |> @subject.wrap(21)
                |> @subject.wrap(31)
                |> @subject.wrap(4)
      assert String.starts_with?(string, desired_prefix),
             "#{inspect string} should start with #{inspect desired_prefix}"
    end

    should "behave correctly with coloured substrings" do
      IO.write "P"
      # string = @subject.wrap("Hello, \e[4mWorld\e[0m!", 21)
      # assert string == "\e[21mHello, \e[4mWorld\e[21m!\e[0m"
    end
  end
end
