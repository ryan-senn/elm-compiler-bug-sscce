module ToasterTests exposing (tests)

import Test exposing (..)
import Expect exposing (Expectation)

import Toasters


tests : Test
tests =
    test "Init Toasters" <| always initToastersTest


initToastersTest : Expectation
initToastersTest =
    True
        |> Expect.equal True