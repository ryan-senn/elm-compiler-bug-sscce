module MsgSscce exposing (Msg, InternalMsg)

{-| Test nested Union Types


# Msgs

@docs Msg, InternalMsg

-}

import MsgSscce.Internal as Internal


{-| -}
type Msg
    = NoOp


{-| -}
type InternalMsg
    = InternalMsg Internal.Msg
