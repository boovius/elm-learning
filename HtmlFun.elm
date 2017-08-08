module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


box =
    div
        [ style
            [ ( "height", "400px" )
            , ( "width", "400px" )
            , ( "border", "1px solid black" )
            ]
        ]
        [ h1
            []
            [ text "hello div"
            ]
        ]


main =
    box
