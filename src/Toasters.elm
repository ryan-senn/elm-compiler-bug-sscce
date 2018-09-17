module Toasters exposing
    ( Model, init, Msg, update
    , view
    )

{-| Module to add Toasters to your app


# Initialise and update

@docs Model, init, Msg, update


# Add to your view

@docs view

-}

import Html exposing (Html)
import Html.Styled exposing (toUnstyled)
import Toasters.Color exposing (Color(..))
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


{-| Add to your view function.

    div
        []
        [ Toasters.view model.toasters
            |> Html.map ToastersMsg
        , div
            []
            [ text "My Cool App" ]
        ]

-}
view : Model -> Html Msg
view (Model toasters) =
    Internal.view toasters |> toUnstyled |> Html.map InternalMsg
