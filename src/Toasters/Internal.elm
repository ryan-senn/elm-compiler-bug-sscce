module Toasters.Internal exposing
    ( Msg
    , Toaster
    , init
    , update
    )


type alias Toaster =
    { message : String
    }


initialToaster : String -> Toaster
initialToaster message =
    { message = message
    }


type Msg
    = NoOp


init : List Toaster
init =
    []


update : Msg -> List Toaster -> List Toaster
update toasterMsg toasters =
    case toasterMsg of
        NoOp ->
            toasters
