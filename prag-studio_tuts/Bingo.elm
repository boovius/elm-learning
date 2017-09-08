module Bingo exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


-- Types


type alias Entry =
    { id : Int
    , phrase : String
    , points : Int
    , marked : Bool
    }


type alias Model =
    { name : String
    , gameNumber : Int
    , entries : List Entry
    }



-- Model


initialModel : Model
initialModel =
    { name = "Josh"
    , gameNumber = 1
    , entries = initialEntries
    }


initialEntries : List Entry
initialEntries =
    [ Entry 1 "Future Proof" 100 False
    , Entry 2 "Doing Agile" 200 False
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


view : Model -> Html msg
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
