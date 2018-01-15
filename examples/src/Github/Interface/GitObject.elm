-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Github.Interface.GitObject exposing (..)

import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.GitObject
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.GitObject) -> SelectionSet (a -> constructor) Github.Interface.GitObject
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onBlob : SelectionSet decodesTo Github.Object.Blob -> FragmentSelectionSet decodesTo Github.Interface.GitObject
onBlob (SelectionSet fields decoder) =
    FragmentSelectionSet "Blob" fields decoder


onCommit : SelectionSet decodesTo Github.Object.Commit -> FragmentSelectionSet decodesTo Github.Interface.GitObject
onCommit (SelectionSet fields decoder) =
    FragmentSelectionSet "Commit" fields decoder


onTag : SelectionSet decodesTo Github.Object.Tag -> FragmentSelectionSet decodesTo Github.Interface.GitObject
onTag (SelectionSet fields decoder) =
    FragmentSelectionSet "Tag" fields decoder


onTree : SelectionSet decodesTo Github.Object.Tree -> FragmentSelectionSet decodesTo Github.Interface.GitObject
onTree (SelectionSet fields decoder) =
    FragmentSelectionSet "Tree" fields decoder


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : Field String Github.Interface.GitObject
abbreviatedOid =
    Object.fieldDecoder "abbreviatedOid" [] Decode.string


{-| The HTTP path for this Git object
-}
commitResourcePath : Field Github.Scalar.Uri Github.Interface.GitObject
commitResourcePath =
    Object.fieldDecoder "commitResourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for this Git object
-}
commitUrl : Field Github.Scalar.Uri Github.Interface.GitObject
commitUrl =
    Object.fieldDecoder "commitUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri)


id : Field Github.Scalar.Id Github.Interface.GitObject
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| The Git object ID
-}
oid : Field Github.Scalar.GitObjectID Github.Interface.GitObject
oid =
    Object.fieldDecoder "oid" [] (Decode.string |> Decode.map Github.Scalar.GitObjectID)


{-| The Repository the Git object belongs to
-}
repository : SelectionSet decodesTo Github.Object.Repository -> Field decodesTo Github.Interface.GitObject
repository object =
    Object.selectionField "repository" [] object identity
