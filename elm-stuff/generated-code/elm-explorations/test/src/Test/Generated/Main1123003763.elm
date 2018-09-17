module Test.Generated.Main1123003763 exposing (main)

import ToasterTests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test
import Json.Encode

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "ToasterTests" [ToasterTests.tests] ]
        |> Test.concat
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport UseColor), seed = 246964013556465, processes = 4, paths = []}