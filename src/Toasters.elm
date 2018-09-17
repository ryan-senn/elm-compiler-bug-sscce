module Toasters exposing (Model, init, Msg, update)

{-| Module to add Toasters to your app


# Initialise and update

@docs Model, init, Msg, update

-}

import Toasters.Internal as Internal


{-| Add a Toasters.Model to your model.

    type alias MyModel =
        { toasters : Toasters.Model
        }

-}
type Model
    = Model (List Internal.Toaster)


{-| Add a Toasters.Model to your model.

    myInitialModel : MyModel
    myInitialModel =
        { toasters = Toasters.init
        }

-}
init : Model
init =
    Model []


{-| Add a Toasters.Msg to your Msg.

    type MyMsg
        = ToastersMsg Toasters.Msg

-}
type Msg
    = InternalMsg Internal.Msg


{-| Use in your update function.

    myUpdate : Msg -> Model -> ( Model, Cmd Msg )
    myUpdate msg model =
        case msg of
            ToastersMsg toastersMsg ->
                { model | toasters = Toasters.update toastersMsg model.toasters } ! []

-}
update : Msg -> Model -> Model
update (InternalMsg internalMsg) (Model toasters) =
    Model <| Internal.update internalMsg toasters
