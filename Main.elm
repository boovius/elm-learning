module Main exposing (..)

import Html exposing(text)
import List

{-- function compisition --}
politely : String -> String
politely phrase =
  "Excuse me, " ++ phrase

ask : String -> String -> String
ask thing place =
  " is there a " ++ thing ++ " in the " ++ place ++ "?"


askPolitelyAboutFish : String -> String
askPolitelyAboutFish = politely << (ask "fish")

{-- records and type defs --}
type alias Dog =
  { name : String
  , age : Int
  }

dog =
  { name =  "Howler"
  , age = 2
  }

renderDog : Dog -> String
renderDog dog =
  "Dog is " ++ dog.name ++ " and is " ++ (toString dog.age) ++ " years old"


{-- Lists and List functions, anonymous functions, case statements, and pattern matching --}
type alias Person =
  {
    name: String
    , age: Int
  }

people =
  [
    { name = "John Stewart", age = 50 },
    { name = "Stephen Colbert", age = 49 }
  ]

names : List Person -> List String
names peeps = List.map (\person -> person.name) peeps


findPerson : String -> List Person -> Maybe Person
findPerson name peeps = List.foldl
  (\peep memo ->
    case memo of
    Just _ -> memo
    Nothing -> if peep.name == name then
      Just peep
      else Nothing

   ) Nothing peeps


{-- Main --}
main =
  {-- text <| politely <| ask "fish" "hat" --}
  text <| toString <| findPerson "John Stewart" people
