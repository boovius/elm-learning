module Bingo exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


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


viewPlayer name gameNumber =
    let
        gameTitleText =
            gameTitle name gameNumber
                |> String.pad 40 '*'
                |> text
    in
        h2 [ id "title", class "classy" ] [ gameTitleText ]


main =
    viewPlayer "josh" 4
