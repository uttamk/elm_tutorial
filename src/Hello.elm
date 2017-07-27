module Hello exposing (main)

import Html exposing (text)

add: Int -> Int -> Int
add x y = x + y

type Result = Ok | Error

isError: Result -> Bool
isError input =
  case input of
    Ok -> True
    Error -> False

main =
    Error
     |> isError
     |> toString
     |> text
