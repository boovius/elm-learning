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


playerInfo : String -> Int -> String
playerInfo name num =
    name ++ " game " ++ (toString num)


viewPlayer : String -> Int -> Html msg
viewPlayer name gameNumber =
    let
        gameTitleText =
            playerInfo name gameNumber
                |> String.pad 40 '*'
                |> text
    in
        h2 [ id "title", class "classy" ] [ gameTitleText ]


viewHeader : String -> Html msg
viewHeader title =
    header []
        [ h1 [] [ text title ] ]


viewFooter : Html msg
viewFooter =
    footer []
        [ a [ href "http://elm-lang.org" ]
            [ text "Powered by Elm" ]
        ]


view : Html msg
view =
    div [ class "content" ]
        [ viewHeader "BUZZWORD BINGO"
        , viewPlayer "Josh" 4
        , viewFooter
        ]


main : Html msg
main =
    view
