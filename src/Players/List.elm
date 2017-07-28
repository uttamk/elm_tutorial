module Players.List exposing (..)

import Html exposing (Html, div, table, tbody, td, text, th, thead, tr)
import Html.Attributes exposing (class)
import Models exposing (Player)
import Msgs exposing (Msg)
import RemoteData exposing (WebData)

view: WebData (List Player) -> Html Msg
view players =
    div[]
    [
          nav
        , maybeList players
    ]

nav: (Html Msg)
nav =
    div [ class "clearfix mb2 white bg-black" ]
            [ div [ class "left p2" ] [ text "Players" ] ]

list : List Player -> Html Msg
list players =
    div [ class "p2" ]
        [ table []
            [ thead []
                [ tr []
                    [ th [] [ text "Id" ]
                    , th [] [ text "Name" ]
                    , th [] [ text "Level" ]
                    , th [] [ text "Actions" ]
                    ]
                ]
            , tbody [] (List.map playerRow players)
            ]
        ]

playerRow : Player -> Html Msg
playerRow player =
    tr []
        [ td [] [ text player.id ]
        , td [] [ text player.name ]
        , td [] [ text (toString player.level) ]
        , td []
            []
        ]
maybeList: WebData(List Player) -> Html Msg
maybeList response =
    case response of
        RemoteData.NotAsked ->
            text ""
        RemoteData.Loading ->
            text "Loading"
        RemoteData.Success players ->
            list players
        RemoteData.Failure error ->
            text (toString error)

