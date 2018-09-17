module Toasters.Internal exposing
    ( Msg
    , Toaster
    , init
    , update
    , view
    )

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type alias Toaster =
    { message : String
    , ticks : Int
    }


initialToaster : String -> Toaster
initialToaster message =
    { message = message
    , ticks = 0
    }


type Msg
    = Tick
    | Close Toaster


init : List Toaster
init =
    []


update : Msg -> List Toaster -> List Toaster
update toasterMsg toasters =
    case toasterMsg of
        Close toaster ->
            List.filter ((/=) toaster) toasters

        Tick ->
            List.foldl tick [] toasters


tick : Toaster -> List Toaster -> List Toaster
tick toaster toasters =
    case toaster.ticks > 100 of
        True ->
            toasters

        False ->
            List.append toasters [ { toaster | ticks = toaster.ticks + 1 } ]


view : List Toaster -> Html Msg
view toasters =
    div
        []
        (List.map item toasters)


item : Toaster -> Html Msg
item toaster =
    div
        [ onClick <| Close toaster]
        [ div
            []
            [ text toaster.message ]
        , div
            []
            [ text <| String.fromInt toaster.ticks ]
        ]