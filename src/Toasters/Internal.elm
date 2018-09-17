module Toasters.Internal exposing
    ( Msg
    , Toaster
    , init
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