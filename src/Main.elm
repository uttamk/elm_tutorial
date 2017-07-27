module Main exposing (..)

import Html exposing (program)
import Msgs exposing (Msg)
import Models exposing (init, Model)
import View exposing (view)
import Update exposing (update)
import Subscriptions exposing (subscriptions)

main: Program Never Model Msg
main =
  program
    {
    init = init,
    view = view,
    update = update,
    subscriptions = subscriptions
  }
