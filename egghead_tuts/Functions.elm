module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


numbers =
    [ 1, 2, 3, 4, 5 ]


printThing : thing -> Html msg
printThing thing =
    li [] [ (text <| toString thing) ]


fruits =
    [ { name = "banana" }, { name = "apple" } ]


main =
    ul [] (List.map printThing fruits)
