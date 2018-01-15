-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Object.SearchResultItemConnection exposing (..)

import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.SearchResultItemConnection
selection constructor =
    Object.selection constructor


{-| The number of pieces of code that matched the search query.
-}
codeCount : Field Int Github.Object.SearchResultItemConnection
codeCount =
    Object.fieldDecoder "codeCount" [] Decode.int


{-| A list of edges.
-}
edges : SelectionSet decodesTo Github.Object.SearchResultItemEdge -> Field (Maybe (List (Maybe decodesTo))) Github.Object.SearchResultItemConnection
edges object =
    Object.selectionField "edges" [] object (identity >> Decode.maybe >> Decode.list >> Decode.maybe)


{-| The number of issues that matched the search query.
-}
issueCount : Field Int Github.Object.SearchResultItemConnection
issueCount =
    Object.fieldDecoder "issueCount" [] Decode.int


{-| A list of nodes.
-}
nodes : SelectionSet decodesTo Github.Union.SearchResultItem -> Field (Maybe (List (Maybe decodesTo))) Github.Object.SearchResultItemConnection
nodes object =
    Object.selectionField "nodes" [] object (identity >> Decode.maybe >> Decode.list >> Decode.maybe)


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet decodesTo Github.Object.PageInfo -> Field decodesTo Github.Object.SearchResultItemConnection
pageInfo object =
    Object.selectionField "pageInfo" [] object identity


{-| The number of repositories that matched the search query.
-}
repositoryCount : Field Int Github.Object.SearchResultItemConnection
repositoryCount =
    Object.fieldDecoder "repositoryCount" [] Decode.int


{-| The number of users that matched the search query.
-}
userCount : Field Int Github.Object.SearchResultItemConnection
userCount =
    Object.fieldDecoder "userCount" [] Decode.int


{-| The number of wiki pages that matched the search query.
-}
wikiCount : Field Int Github.Object.SearchResultItemConnection
wikiCount =
    Object.fieldDecoder "wikiCount" [] Decode.int
