module Toasters.Internal exposing
    ( Msg
    , Toaster
    , init
    , update
    )


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
