defmodule Palette.ColoursTest do
  use ShouldI
  use ExUnit.Case

  alias Palette.Colours

  with ".foreground_to_num" do
    with "colours passed as strings" do
      should "black correctly" do
        assert Colours.foreground_to_num("black") === 30
      end

      should "red correctly" do
        assert Colours.foreground_to_num("red") === 31
      end

      should "green correctly" do
        assert Colours.foreground_to_num("green") === 32
      end

      should "yellow correctly" do
        assert Colours.foreground_to_num("yellow") === 33
      end

      should "blue correctly" do
        assert Colours.foreground_to_num("blue") === 34
      end

      should "magenta correctly" do
        assert Colours.foreground_to_num("magenta") === 35
      end

      should "cyan correctly" do
        assert Colours.foreground_to_num("cyan") === 36
      end

      should "white correctly" do
        assert Colours.foreground_to_num("white") === 37
      end

      should "default correctly" do
        assert Colours.foreground_to_num("default") === 39
      end
    end

    with "colours passed as atoms" do
      should "black correctly" do
        assert Colours.foreground_to_num(:black) === 30
      end

      should "red correctly" do
        assert Colours.foreground_to_num(:red) === 31
      end

      should "green correctly" do
        assert Colours.foreground_to_num(:green) === 32
      end

      should "yellow correctly" do
        assert Colours.foreground_to_num(:yellow) === 33
      end

      should "blue correctly" do
        assert Colours.foreground_to_num(:blue) === 34
      end

      should "magenta correctly" do
        assert Colours.foreground_to_num(:magenta) === 35
      end

      should "cyan correctly" do
        assert Colours.foreground_to_num(:cyan) === 36
      end

      should "white correctly" do
        assert Colours.foreground_to_num(:white) === 37
      end

      should "default correctly" do
        assert Colours.foreground_to_num(:default) === 39
      end
    end
  end


  with ".background_to_num" do
    with "colours passed as strings" do
      should "black correctly" do
        assert Colours.background_to_num("black") === 40
      end

      should "red correctly" do
        assert Colours.background_to_num("red") === 41
      end

      should "green correctly" do
        assert Colours.background_to_num("green") === 42
      end

      should "yellow correctly" do
        assert Colours.background_to_num("yellow") === 43
      end

      should "blue correctly" do
        assert Colours.background_to_num("blue") === 44
      end

      should "magenta correctly" do
        assert Colours.background_to_num("magenta") === 45
      end

      should "cyan correctly" do
        assert Colours.background_to_num("cyan") === 46
      end

      should "white correctly" do
        assert Colours.background_to_num("white") === 47
      end

      should "default correctly" do
        assert Colours.background_to_num("default") === 49
      end
    end

    with "colours passed as atoms" do
      should "black correctly" do
        assert Colours.background_to_num(:black) === 40
      end

      should "red correctly" do
        assert Colours.background_to_num(:red) === 41
      end

      should "green correctly" do
        assert Colours.background_to_num(:green) === 42
      end

      should "yellow correctly" do
        assert Colours.background_to_num(:yellow) === 43
      end

      should "blue correctly" do
        assert Colours.background_to_num(:blue) === 44
      end

      should "magenta correctly" do
        assert Colours.background_to_num(:magenta) === 45
      end

      should "cyan correctly" do
        assert Colours.background_to_num(:cyan) === 46
      end

      should "white correctly" do
        assert Colours.background_to_num(:white) === 47
      end

      should "default correctly" do
        assert Colours.background_to_num(:default) === 49
      end
    end
  end


  with ".to_num" do
    with "colours passed as strings" do
      should "black correctly" do
        assert Colours.to_num("black") === 0
      end

      should "red correctly" do
        assert Colours.to_num("red") === 1
      end

      should "green correctly" do
        assert Colours.to_num("green") === 2
      end

      should "yellow correctly" do
        assert Colours.to_num("yellow") === 3
      end

      should "blue correctly" do
        assert Colours.to_num("blue") === 4
      end

      should "magenta correctly" do
        assert Colours.to_num("magenta") === 5
      end

      should "cyan correctly" do
        assert Colours.to_num("cyan") === 6
      end

      should "white correctly" do
        assert Colours.to_num("white") === 7
      end

      should "default correctly" do
        assert Colours.to_num("default") === 9
      end
    end

    with "colours passed as atoms" do
      should "black correctly" do
        assert Colours.to_num(:black) === 0
      end

      should "red correctly" do
        assert Colours.to_num(:red) === 1
      end

      should "green correctly" do
        assert Colours.to_num(:green) === 2
      end

      should "yellow correctly" do
        assert Colours.to_num(:yellow) === 3
      end

      should "blue correctly" do
        assert Colours.to_num(:blue) === 4
      end

      should "magenta correctly" do
        assert Colours.to_num(:magenta) === 5
      end

      should "cyan correctly" do
        assert Colours.to_num(:cyan) === 6
      end

      should "white correctly" do
        assert Colours.to_num(:white) === 7
      end

      should "default correctly" do
        assert Colours.to_num(:default) === 9
      end
    end
  end
end
