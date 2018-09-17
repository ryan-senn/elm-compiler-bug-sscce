module Toasters exposing (Msg)

{-| Module to add Toasters to your app


# Initialise and update

@docs Msg

-}

import Toasters.Internal as Internal


{-| Add a Toasters.Msg to your Msg.

    type MyMsg
        = ToastersMsg Toasters.Msg

-}
type Msg
    = InternalMsg Internal.Msg
