module Bingo exposing (..)

import Html


leftToRight =
    "Josh's game"
        |> String.repeat 3
        |> String.toUpper
        |> Html.text


rightToLeft =
    Html.text <| String.toLower <| "Jeremy's game"


main =
    rightToLeft
