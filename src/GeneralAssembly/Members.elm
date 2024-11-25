module GeneralAssembly.Members exposing (..)

import GeneralAssembly.Committees as Committees
import GeneralAssembly.Party as Party
import GeneralAssembly.Chamber as Chamber

type alias Member =
    { biography : String
    , capitolAddress : Address
    , cellPhone : Maybe String
    , chamber : Chamber.Chamber
    , committeeMemberships : List CommitteeMembership
    , committeeMembershipsArchive : List CommitteeMembership
    , constituentServicesContact : String
    , constituentServicesNewsletter : String
    , contextSessionId : Int
    , dateVacated : Maybe String
    , displayName : String
    , districtAddress : Address
    , districtNumber : Int
    , districtSuffix : String
    , homePhone : Maybe String
    , id : Int
    , familyName : String
    , firstName : String
    , lastName : String
    , middleName : String
    , nickname : String
    , suffix : String
    , occupation : Maybe String
    , party : Party.Party
    , residence : String
    , title : Maybe String
    }


-- Address

type alias Address =
    { address1 : String
    , address2 : Maybe String
    , city : String
    , state : String
    , zip : String
    , phone : Maybe String
    , fax : Maybe String
    }


-- Committee membership

type alias CommitteeMembership =
    { committeeId : Int
    , committeeName : String
    , role : Committees.Role
    }