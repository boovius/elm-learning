module Bingo exposing (..)

import Html


leftToRight =
    "Josh's game"
        |> String.repeat 3
        |> String.toUpper
        |> Html.text


rightToLeft =
    Html.text <| String.toLower <| "Jeremy's game"



-- anonymous function assigned to variable


gameTitle =
    \name num -> name ++ " game " ++ (toString num)


gameTitleText name num =
    gameTitle name num |> Html.text


main =
    gameTitleText "josh" 4
