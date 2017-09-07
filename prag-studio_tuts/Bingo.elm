module Bingo exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


-- Model


initialModel =
    { name = "Josh"
    , gameNumber = 1
    , entries = initialEntries
    }


initialEntries =
    [ { id = 1, phrase = "Future Proof", points = 100, marked = False }
    , { id = 2, phrase = "Doing Agile", points = 200, marked = False }
    ]



-- View


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



--view : Html msg


view model =
    div [ class "content" ]
        [ viewHeader "BUZZWORD BINGO"
        , viewPlayer model.name model.gameNumber
        , div [ class "debug" ] [ text (toString model) ]
        , viewFooter
        ]


main : Html msg
main =
    view initialModel
