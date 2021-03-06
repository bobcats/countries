module ISO3166 exposing
    ( Country, Subdivision
    , all, fromAlpha2, fromAlpha3, findSubdivisionByCode
    , countryAF, countryAL, countryDZ, countryAS, countryAD, countryAO, countryAI, countryAQ, countryAG, countryAR, countryAM, countryAW, countryAU, countryAT, countryAZ, countryBS, countryBH, countryBD, countryBB, countryBY, countryBE, countryBZ, countryBJ, countryBM, countryBT, countryBO, countryBQ, countryBA, countryBW, countryBV, countryBR, countryIO, countryBN, countryBG, countryBF, countryBI, countryCV, countryKH, countryCM, countryCA, countryKY, countryCF, countryTD, countryCL, countryCN, countryCX, countryCC, countryCO, countryKM, countryCG, countryCD, countryCK, countryCR, countryHR, countryCU, countryCW, countryCY, countryCZ, countryCI, countryDK, countryDJ, countryDM, countryDO, countryEC, countryEG, countrySV, countryGQ, countryER, countryEE, countryET, countryFK, countryFO, countryFJ, countryFI, countryFR, countryGF, countryPF, countryTF, countryGA, countryGM, countryGE, countryDE, countryGH, countryGI, countryGR, countryGL, countryGD, countryGP, countryGU, countryGT, countryGG, countryGN, countryGW, countryGY, countryHT, countryHM, countryVA, countryHN, countryHK, countryHU, countryIS, countryIN, countryID, countryIR, countryIQ, countryIE, countryIM, countryIL, countryIT, countryJM, countryJP, countryJE, countryJO, countryKZ, countryKE, countryKI, countryKP, countryKR, countryKW, countryKG, countryLA, countryLV, countryLB, countryLS, countryLR, countryLY, countryLI, countryLT, countryLU, countryMO, countryMG, countryMW, countryMY, countryMV, countryML, countryMT, countryMH, countryMQ, countryMR, countryMU, countryYT, countryMX, countryFM, countryMD, countryMC, countryMN, countryME, countryMS, countryMA, countryMZ, countryMM, countryNA, countryNR, countryNP, countryNL, countryNC, countryNZ, countryNI, countryNE, countryNG, countryNU, countryNF, countryMK, countryMP, countryNO, countryOM, countryPK, countryPW, countryPS, countryPA, countryPG, countryPY, countryPE, countryPH, countryPN, countryPL, countryPT, countryPR, countryQA, countryRO, countryRU, countryRW, countryRE, countryBL, countrySH, countryKN, countryLC, countryMF, countryPM, countryVC, countryWS, countrySM, countryST, countrySA, countrySN, countryRS, countrySC, countrySL, countrySG, countrySX, countrySK, countrySI, countrySB, countrySO, countryZA, countryGS, countrySS, countryES, countryLK, countrySD, countrySR, countrySJ, countrySE, countryCH, countrySY, countryTW, countryTJ, countryTZ, countryTH, countryTL, countryTG, countryTK, countryTO, countryTT, countryTN, countryTR, countryTM, countryTC, countryTV, countryUG, countryUA, countryAE, countryGB, countryUM, countryUS, countryUY, countryUZ, countryVU, countryVE, countryVN, countryVG, countryVI, countryWF, countryEH, countryYE, countryZM, countryZW, countrySZ, countryAX
    , countryADSubdivisions, countryAESubdivisions, countryAFSubdivisions, countryAGSubdivisions, countryAISubdivisions, countryALSubdivisions, countryAMSubdivisions, countryAOSubdivisions, countryARSubdivisions, countryASSubdivisions, countryATSubdivisions, countryAUSubdivisions, countryAWSubdivisions, countryAXSubdivisions, countryAZSubdivisions, countryBASubdivisions, countryBBSubdivisions, countryBDSubdivisions, countryBESubdivisions, countryBFSubdivisions, countryBGSubdivisions, countryBHSubdivisions, countryBISubdivisions, countryBJSubdivisions, countryBLSubdivisions, countryBMSubdivisions, countryBNSubdivisions, countryBOSubdivisions, countryBQSubdivisions, countryBRSubdivisions, countryBSSubdivisions, countryBTSubdivisions, countryBWSubdivisions, countryBYSubdivisions, countryBZSubdivisions, countryCASubdivisions, countryCDSubdivisions, countryCFSubdivisions, countryCGSubdivisions, countryCHSubdivisions, countryCISubdivisions, countryCKSubdivisions, countryCLSubdivisions, countryCMSubdivisions, countryCNSubdivisions, countryCOSubdivisions, countryCRSubdivisions, countryCUSubdivisions, countryCVSubdivisions, countryCWSubdivisions, countryCYSubdivisions, countryCZSubdivisions, countryDESubdivisions, countryDJSubdivisions, countryDKSubdivisions, countryDMSubdivisions, countryDOSubdivisions, countryDZSubdivisions, countryECSubdivisions, countryEESubdivisions, countryEGSubdivisions, countryEHSubdivisions, countryERSubdivisions, countryESSubdivisions, countryETSubdivisions, countryFISubdivisions, countryFJSubdivisions, countryFMSubdivisions, countryFOSubdivisions, countryFRSubdivisions, countryGASubdivisions, countryGBSubdivisions, countryGDSubdivisions, countryGESubdivisions, countryGFSubdivisions, countryGGSubdivisions, countryGHSubdivisions, countryGLSubdivisions, countryGMSubdivisions, countryGNSubdivisions, countryGPSubdivisions, countryGQSubdivisions, countryGRSubdivisions, countryGTSubdivisions, countryGUSubdivisions, countryGWSubdivisions, countryGYSubdivisions, countryHKSubdivisions, countryHNSubdivisions, countryHRSubdivisions, countryHTSubdivisions, countryHUSubdivisions, countryIDSubdivisions, countryIESubdivisions, countryILSubdivisions, countryIMSubdivisions, countryINSubdivisions, countryIQSubdivisions, countryIRSubdivisions, countryISSubdivisions, countryITSubdivisions, countryJESubdivisions, countryJMSubdivisions, countryJOSubdivisions, countryJPSubdivisions, countryKESubdivisions, countryKGSubdivisions, countryKHSubdivisions, countryKISubdivisions, countryKMSubdivisions, countryKNSubdivisions, countryKPSubdivisions, countryKRSubdivisions, countryKWSubdivisions, countryKYSubdivisions, countryKZSubdivisions, countryLASubdivisions, countryLBSubdivisions, countryLCSubdivisions, countryLISubdivisions, countryLKSubdivisions, countryLRSubdivisions, countryLSSubdivisions, countryLTSubdivisions, countryLUSubdivisions, countryLVSubdivisions, countryLYSubdivisions, countryMASubdivisions, countryMCSubdivisions, countryMDSubdivisions, countryMESubdivisions, countryMFSubdivisions, countryMGSubdivisions, countryMHSubdivisions, countryMKSubdivisions, countryMLSubdivisions, countryMMSubdivisions, countryMNSubdivisions, countryMOSubdivisions, countryMPSubdivisions, countryMQSubdivisions, countryMRSubdivisions, countryMSSubdivisions, countryMTSubdivisions, countryMUSubdivisions, countryMVSubdivisions, countryMWSubdivisions, countryMXSubdivisions, countryMYSubdivisions, countryMZSubdivisions, countryNASubdivisions, countryNCSubdivisions, countryNESubdivisions, countryNGSubdivisions, countryNISubdivisions, countryNLSubdivisions, countryNOSubdivisions, countryNPSubdivisions, countryNRSubdivisions, countryNZSubdivisions, countryOMSubdivisions, countryPASubdivisions, countryPESubdivisions, countryPFSubdivisions, countryPGSubdivisions, countryPHSubdivisions, countryPKSubdivisions, countryPLSubdivisions, countryPMSubdivisions, countryPRSubdivisions, countryPSSubdivisions, countryPTSubdivisions, countryPWSubdivisions, countryPYSubdivisions, countryQASubdivisions, countryRESubdivisions, countryROSubdivisions, countryRSSubdivisions, countryRUSubdivisions, countryRWSubdivisions, countrySASubdivisions, countrySBSubdivisions, countrySCSubdivisions, countrySDSubdivisions, countrySESubdivisions, countrySGSubdivisions, countrySHSubdivisions, countrySISubdivisions, countrySJSubdivisions, countrySKSubdivisions, countrySLSubdivisions, countrySMSubdivisions, countrySNSubdivisions, countrySOSubdivisions, countrySRSubdivisions, countrySSSubdivisions, countrySTSubdivisions, countrySVSubdivisions, countrySXSubdivisions, countrySYSubdivisions, countrySZSubdivisions, countryTDSubdivisions, countryTFSubdivisions, countryTGSubdivisions, countryTHSubdivisions, countryTJSubdivisions, countryTKSubdivisions, countryTLSubdivisions, countryTMSubdivisions, countryTNSubdivisions, countryTOSubdivisions, countryTRSubdivisions, countryTTSubdivisions, countryTVSubdivisions, countryTWSubdivisions, countryTZSubdivisions, countryUASubdivisions, countryUGSubdivisions, countryUMSubdivisions, countryUSSubdivisions, countryUYSubdivisions, countryUZSubdivisions, countryVCSubdivisions, countryVESubdivisions, countryVISubdivisions, countryVNSubdivisions, countryVUSubdivisions, countryWFSubdivisions, countryWSSubdivisions, countryYESubdivisions, countryYTSubdivisions, countryZASubdivisions, countryZMSubdivisions, countryZWSubdivisions
    )

{-| Based upon the country data from <https://github.com/countries/countries>
Countries is a collection of all sorts of useful information for every country in the ISO 3166 standard. It contains info for the following standards ISO3166-1 (countries), ISO3166-2 (states/subdivisions), ISO4217 (currency) and E.164 (phone numbers). I will add any country based data I can get access to. I hope this to be a repository for all country based information.


# Types

@docs Country, Subdivision


# Helpers

@docs all, fromAlpha2, fromAlpha3, findSubdivisionByCode


# Countries

@docs countryAF, countryAL, countryDZ, countryAS, countryAD, countryAO, countryAI, countryAQ, countryAG, countryAR, countryAM, countryAW, countryAU, countryAT, countryAZ, countryBS, countryBH, countryBD, countryBB, countryBY, countryBE, countryBZ, countryBJ, countryBM, countryBT, countryBO, countryBQ, countryBA, countryBW, countryBV, countryBR, countryIO, countryBN, countryBG, countryBF, countryBI, countryCV, countryKH, countryCM, countryCA, countryKY, countryCF, countryTD, countryCL, countryCN, countryCX, countryCC, countryCO, countryKM, countryCG, countryCD, countryCK, countryCR, countryHR, countryCU, countryCW, countryCY, countryCZ, countryCI, countryDK, countryDJ, countryDM, countryDO, countryEC, countryEG, countrySV, countryGQ, countryER, countryEE, countryET, countryFK, countryFO, countryFJ, countryFI, countryFR, countryGF, countryPF, countryTF, countryGA, countryGM, countryGE, countryDE, countryGH, countryGI, countryGR, countryGL, countryGD, countryGP, countryGU, countryGT, countryGG, countryGN, countryGW, countryGY, countryHT, countryHM, countryVA, countryHN, countryHK, countryHU, countryIS, countryIN, countryID, countryIR, countryIQ, countryIE, countryIM, countryIL, countryIT, countryJM, countryJP, countryJE, countryJO, countryKZ, countryKE, countryKI, countryKP, countryKR, countryKW, countryKG, countryLA, countryLV, countryLB, countryLS, countryLR, countryLY, countryLI, countryLT, countryLU, countryMO, countryMG, countryMW, countryMY, countryMV, countryML, countryMT, countryMH, countryMQ, countryMR, countryMU, countryYT, countryMX, countryFM, countryMD, countryMC, countryMN, countryME, countryMS, countryMA, countryMZ, countryMM, countryNA, countryNR, countryNP, countryNL, countryNC, countryNZ, countryNI, countryNE, countryNG, countryNU, countryNF, countryMK, countryMP, countryNO, countryOM, countryPK, countryPW, countryPS, countryPA, countryPG, countryPY, countryPE, countryPH, countryPN, countryPL, countryPT, countryPR, countryQA, countryRO, countryRU, countryRW, countryRE, countryBL, countrySH, countryKN, countryLC, countryMF, countryPM, countryVC, countryWS, countrySM, countryST, countrySA, countrySN, countryRS, countrySC, countrySL, countrySG, countrySX, countrySK, countrySI, countrySB, countrySO, countryZA, countryGS, countrySS, countryES, countryLK, countrySD, countrySR, countrySJ, countrySE, countryCH, countrySY, countryTW, countryTJ, countryTZ, countryTH, countryTL, countryTG, countryTK, countryTO, countryTT, countryTN, countryTR, countryTM, countryTC, countryTV, countryUG, countryUA, countryAE, countryGB, countryUM, countryUS, countryUY, countryUZ, countryVU, countryVE, countryVN, countryVG, countryVI, countryWF, countryEH, countryYE, countryZM, countryZW, countrySZ, countryAX


# Subdivisions

@docs countryADSubdivisions, countryAESubdivisions, countryAFSubdivisions, countryAGSubdivisions, countryAISubdivisions, countryALSubdivisions, countryAMSubdivisions, countryAOSubdivisions, countryARSubdivisions, countryASSubdivisions, countryATSubdivisions, countryAUSubdivisions, countryAWSubdivisions, countryAXSubdivisions, countryAZSubdivisions, countryBASubdivisions, countryBBSubdivisions, countryBDSubdivisions, countryBESubdivisions, countryBFSubdivisions, countryBGSubdivisions, countryBHSubdivisions, countryBISubdivisions, countryBJSubdivisions, countryBLSubdivisions, countryBMSubdivisions, countryBNSubdivisions, countryBOSubdivisions, countryBQSubdivisions, countryBRSubdivisions, countryBSSubdivisions, countryBTSubdivisions, countryBWSubdivisions, countryBYSubdivisions, countryBZSubdivisions, countryCASubdivisions, countryCDSubdivisions, countryCFSubdivisions, countryCGSubdivisions, countryCHSubdivisions, countryCISubdivisions, countryCKSubdivisions, countryCLSubdivisions, countryCMSubdivisions, countryCNSubdivisions, countryCOSubdivisions, countryCRSubdivisions, countryCUSubdivisions, countryCVSubdivisions, countryCWSubdivisions, countryCYSubdivisions, countryCZSubdivisions, countryDESubdivisions, countryDJSubdivisions, countryDKSubdivisions, countryDMSubdivisions, countryDOSubdivisions, countryDZSubdivisions, countryECSubdivisions, countryEESubdivisions, countryEGSubdivisions, countryEHSubdivisions, countryERSubdivisions, countryESSubdivisions, countryETSubdivisions, countryFISubdivisions, countryFJSubdivisions, countryFMSubdivisions, countryFOSubdivisions, countryFRSubdivisions, countryGASubdivisions, countryGBSubdivisions, countryGDSubdivisions, countryGESubdivisions, countryGFSubdivisions, countryGGSubdivisions, countryGHSubdivisions, countryGLSubdivisions, countryGMSubdivisions, countryGNSubdivisions, countryGPSubdivisions, countryGQSubdivisions, countryGRSubdivisions, countryGTSubdivisions, countryGUSubdivisions, countryGWSubdivisions, countryGYSubdivisions, countryHKSubdivisions, countryHNSubdivisions, countryHRSubdivisions, countryHTSubdivisions, countryHUSubdivisions, countryIDSubdivisions, countryIESubdivisions, countryILSubdivisions, countryIMSubdivisions, countryINSubdivisions, countryIQSubdivisions, countryIRSubdivisions, countryISSubdivisions, countryITSubdivisions, countryJESubdivisions, countryJMSubdivisions, countryJOSubdivisions, countryJPSubdivisions, countryKESubdivisions, countryKGSubdivisions, countryKHSubdivisions, countryKISubdivisions, countryKMSubdivisions, countryKNSubdivisions, countryKPSubdivisions, countryKRSubdivisions, countryKWSubdivisions, countryKYSubdivisions, countryKZSubdivisions, countryLASubdivisions, countryLBSubdivisions, countryLCSubdivisions, countryLISubdivisions, countryLKSubdivisions, countryLRSubdivisions, countryLSSubdivisions, countryLTSubdivisions, countryLUSubdivisions, countryLVSubdivisions, countryLYSubdivisions, countryMASubdivisions, countryMCSubdivisions, countryMDSubdivisions, countryMESubdivisions, countryMFSubdivisions, countryMGSubdivisions, countryMHSubdivisions, countryMKSubdivisions, countryMLSubdivisions, countryMMSubdivisions, countryMNSubdivisions, countryMOSubdivisions, countryMPSubdivisions, countryMQSubdivisions, countryMRSubdivisions, countryMSSubdivisions, countryMTSubdivisions, countryMUSubdivisions, countryMVSubdivisions, countryMWSubdivisions, countryMXSubdivisions, countryMYSubdivisions, countryMZSubdivisions, countryNASubdivisions, countryNCSubdivisions, countryNESubdivisions, countryNGSubdivisions, countryNISubdivisions, countryNLSubdivisions, countryNOSubdivisions, countryNPSubdivisions, countryNRSubdivisions, countryNZSubdivisions, countryOMSubdivisions, countryPASubdivisions, countryPESubdivisions, countryPFSubdivisions, countryPGSubdivisions, countryPHSubdivisions, countryPKSubdivisions, countryPLSubdivisions, countryPMSubdivisions, countryPRSubdivisions, countryPSSubdivisions, countryPTSubdivisions, countryPWSubdivisions, countryPYSubdivisions, countryQASubdivisions, countryRESubdivisions, countryROSubdivisions, countryRSSubdivisions, countryRUSubdivisions, countryRWSubdivisions, countrySASubdivisions, countrySBSubdivisions, countrySCSubdivisions, countrySDSubdivisions, countrySESubdivisions, countrySGSubdivisions, countrySHSubdivisions, countrySISubdivisions, countrySJSubdivisions, countrySKSubdivisions, countrySLSubdivisions, countrySMSubdivisions, countrySNSubdivisions, countrySOSubdivisions, countrySRSubdivisions, countrySSSubdivisions, countrySTSubdivisions, countrySVSubdivisions, countrySXSubdivisions, countrySYSubdivisions, countrySZSubdivisions, countryTDSubdivisions, countryTFSubdivisions, countryTGSubdivisions, countryTHSubdivisions, countryTJSubdivisions, countryTKSubdivisions, countryTLSubdivisions, countryTMSubdivisions, countryTNSubdivisions, countryTOSubdivisions, countryTRSubdivisions, countryTTSubdivisions, countryTVSubdivisions, countryTWSubdivisions, countryTZSubdivisions, countryUASubdivisions, countryUGSubdivisions, countryUMSubdivisions, countryUSSubdivisions, countryUYSubdivisions, countryUZSubdivisions, countryVCSubdivisions, countryVESubdivisions, countryVISubdivisions, countryVNSubdivisions, countryVUSubdivisions, countryWFSubdivisions, countryWSSubdivisions, countryYESubdivisions, countryYTSubdivisions, countryZASubdivisions, countryZMSubdivisions, countryZWSubdivisions

-}

import ISO3166.Continent as Continent exposing (Continent)
import ISO3166.Region as Region exposing (Region)
import ISO3166.Subregion as Subregion exposing (Subregion)
import ISO3166.WorldRegion as WorldRegion exposing (WorldRegion)
import Time


{-| Representation of a country.


# Idenification Codes

      c.number # => "840"
      c.alpha2 # => "US"
      c.alpha3 # => "USA"
      c.gec    # => "US"
      c.un_locode # => "US"


# Emoji

      c.emoji # => "????????"


# Names and translations

      c.name # => "United States"
      c.unofficialNames # => ["United States of America", "Vereinigte Staaten von Amerika", "??tats-Unis", "Estados Unidos"]

      c = ISO3166.belgium
      c.localNames # => ["Belgi??", "Belgique", "Belgien"]


# Subdivisions

      c.subdivisions


# Location

      c.region # => "Americas"
      c.subregion # => "Northern America"


# Telephone Routing

      c.countryCode # => "1"
      c.nationalDestinationCodeLengths # => [3]
      c.nationalNumberLengths # => [10]
      c.internationalPrefix # => "011"
      c.nationalPrefix # => "1"


# Currency

      c.currencyCode # => "USD"


# Address Formatting

These templates are compatible with the Liquid template system.

      c.addressFormat # => "{{recipient}}\n{{street}}\n{{city}} {{region_short}} {{postalcode}}\n{{country}}\n"

-}
type alias Country =
    { addressFormat : String
    , alpha2 : String
    , alpha3 : String
    , continent : Continent
    , countryCode : String
    , currencyCode : String
    , emoji : String
    , gec : String
    , internationalPrefix : String
    , ioc : String
    , languagesOfficial : List String
    , languagesSpoken : List String
    , localNames : List String
    , name : String
    , nanpPrefix : String
    , nationalDestinationCodeLengths : List Int
    , nationalNumberLengths : List Int
    , nationalPrefix : String
    , nationality : String
    , number : String
    , postalCode : Bool
    , postalCodeFormat : String
    , region : Region
    , startOfWeek : Time.Weekday
    , subdivisions : List Subdivision
    , subregion : Subregion
    , unLocode : String
    , unofficialNames : List String
    , worldRegion : WorldRegion
    }


{-| Representation of a subdivision.
-}
type alias Subdivision =
    { name : String
    , code : String
    , unofficialNames : List String
    }


{-| A list of all countries.
-}
all : List Country
all =
    [ countryAF, countryAL, countryDZ, countryAS, countryAD, countryAO, countryAI, countryAQ, countryAG, countryAR, countryAM, countryAW, countryAU, countryAT, countryAZ, countryBS, countryBH, countryBD, countryBB, countryBY, countryBE, countryBZ, countryBJ, countryBM, countryBT, countryBO, countryBQ, countryBA, countryBW, countryBV, countryBR, countryIO, countryBN, countryBG, countryBF, countryBI, countryCV, countryKH, countryCM, countryCA, countryKY, countryCF, countryTD, countryCL, countryCN, countryCX, countryCC, countryCO, countryKM, countryCG, countryCD, countryCK, countryCR, countryHR, countryCU, countryCW, countryCY, countryCZ, countryCI, countryDK, countryDJ, countryDM, countryDO, countryEC, countryEG, countrySV, countryGQ, countryER, countryEE, countryET, countryFK, countryFO, countryFJ, countryFI, countryFR, countryGF, countryPF, countryTF, countryGA, countryGM, countryGE, countryDE, countryGH, countryGI, countryGR, countryGL, countryGD, countryGP, countryGU, countryGT, countryGG, countryGN, countryGW, countryGY, countryHT, countryHM, countryVA, countryHN, countryHK, countryHU, countryIS, countryIN, countryID, countryIR, countryIQ, countryIE, countryIM, countryIL, countryIT, countryJM, countryJP, countryJE, countryJO, countryKZ, countryKE, countryKI, countryKP, countryKR, countryKW, countryKG, countryLA, countryLV, countryLB, countryLS, countryLR, countryLY, countryLI, countryLT, countryLU, countryMO, countryMG, countryMW, countryMY, countryMV, countryML, countryMT, countryMH, countryMQ, countryMR, countryMU, countryYT, countryMX, countryFM, countryMD, countryMC, countryMN, countryME, countryMS, countryMA, countryMZ, countryMM, countryNA, countryNR, countryNP, countryNL, countryNC, countryNZ, countryNI, countryNE, countryNG, countryNU, countryNF, countryMK, countryMP, countryNO, countryOM, countryPK, countryPW, countryPS, countryPA, countryPG, countryPY, countryPE, countryPH, countryPN, countryPL, countryPT, countryPR, countryQA, countryRO, countryRU, countryRW, countryRE, countryBL, countrySH, countryKN, countryLC, countryMF, countryPM, countryVC, countryWS, countrySM, countryST, countrySA, countrySN, countryRS, countrySC, countrySL, countrySG, countrySX, countrySK, countrySI, countrySB, countrySO, countryZA, countryGS, countrySS, countryES, countryLK, countrySD, countrySR, countrySJ, countrySE, countryCH, countrySY, countryTW, countryTJ, countryTZ, countryTH, countryTL, countryTG, countryTK, countryTO, countryTT, countryTN, countryTR, countryTM, countryTC, countryTV, countryUG, countryUA, countryAE, countryGB, countryUM, countryUS, countryUY, countryUZ, countryVU, countryVE, countryVN, countryVG, countryVI, countryWF, countryEH, countryYE, countryZM, countryZW, countrySZ, countryAX ]


{-| Find a country by it's alpha2 code.

      ISO3166.fromAlpha2 "US" # => Just { name = "United States", alpha2 = "US", alpha3 = "USA", ... }

-}
fromAlpha2 : String -> Maybe Country
fromAlpha2 alpha2 =
    all
        |> List.filter (\c -> c.alpha2 == alpha2)
        |> List.head


{-| Find a country by it's alpha3 code.

      ISO3166.fromAlpha3 "US" # => Just { name = "United States", alpha3 = "US", alpha3 = "USA", ... }

-}
fromAlpha3 : String -> Maybe Country
fromAlpha3 alpha3 =
    all
        |> List.filter (\c -> c.alpha3 == alpha3)
        |> List.head


{-| Find a subdivision by it's code.

      ISO3166.findSubdivisionByCode ISO3166.countryUS "NY" # => Just { name = "New York", code = "NY", ... }

-}
findSubdivisionByCode : Country -> String -> Maybe Subdivision
findSubdivisionByCode country code =
    country.subdivisions
        |> List.filter (\s -> s.code == code)
        |> List.head


{-| Afghanistan
-}
countryAF : Country
countryAF =
    { addressFormat = ""
    , alpha2 = "AF"
    , alpha3 = "AFG"
    , continent = Continent.Asia
    , countryCode = "93"
    , currencyCode = "AFN"
    , emoji = "????????"
    , gec = "AF"
    , internationalPrefix = "00"
    , ioc = "AFG"
    , languagesOfficial = [ "ps", "uz", "tk" ]
    , languagesSpoken = [ "ps", "uz", "tk" ]
    , localNames = [ "??????????????????", "Afg??oniston", "Owganystan" ]
    , name = "Afghanistan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Afghan"
    , number = "004"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryAFSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "AF"
    , unofficialNames = [ "Afghanistan", "Afganist??n", "?????????????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Albania
-}
countryAL : Country
countryAL =
    { addressFormat = ""
    , alpha2 = "AL"
    , alpha3 = "ALB"
    , continent = Continent.Europe
    , countryCode = "355"
    , currencyCode = "ALL"
    , emoji = "????????"
    , gec = "AL"
    , internationalPrefix = "00"
    , ioc = "ALB"
    , languagesOfficial = [ "sq" ]
    , languagesSpoken = [ "sq" ]
    , localNames = [ "Shqip??ri" ]
    , name = "Albania"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Albanian"
    , number = "008"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryALSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "AL"
    , unofficialNames = [ "Albania", "Albanien", "Albanie", "???????????????", "Albani??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Algeria
-}
countryDZ : Country
countryDZ =
    { addressFormat = ""
    , alpha2 = "DZ"
    , alpha3 = "DZA"
    , continent = Continent.Africa
    , countryCode = "213"
    , currencyCode = "DZD"
    , emoji = "????????"
    , gec = "AG"
    , internationalPrefix = "00"
    , ioc = "ALG"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "??????????????" ]
    , name = "Algeria"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "7"
    , nationality = "Algerian"
    , number = "012"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Africa
    , startOfWeek = Time.Sun
    , subdivisions = countryDZSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "DZ"
    , unofficialNames = [ "Algeria", "??????????????", "Algerien", "Alg??rie", "Argelia", "??????????????????", "Algerije" ]
    , worldRegion = WorldRegion.Emea
    }


{-| American Samoa
-}
countryAS : Country
countryAS =
    { addressFormat = ""
    , alpha2 = "AS"
    , alpha3 = "ASM"
    , continent = Continent.Australia
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "AQ"
    , internationalPrefix = "011"
    , ioc = "ASA"
    , languagesOfficial = [ "en", "sm" ]
    , languagesSpoken = [ "en", "sm" ]
    , localNames = [ "American Samoa" ]
    , name = "American Samoa"
    , nanpPrefix = "1684"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "American Samoan"
    , number = "016"
    , postalCode = True
    , postalCodeFormat = "(96799)(?:[ \\-](\\d{4}))?"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryASSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "AS"
    , unofficialNames = [ "American Samoa", "Amerikanisch-Samoa", "Samoa am??ricaines", "Samoa Americana", "????????????????????????", "Amerikaans Samoa" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Andorra
-}
countryAD : Country
countryAD =
    { addressFormat = ""
    , alpha2 = "AD"
    , alpha3 = "AND"
    , continent = Continent.Europe
    , countryCode = "376"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "AN"
    , internationalPrefix = "00"
    , ioc = "AND"
    , languagesOfficial = [ "ca" ]
    , languagesSpoken = [ "ca" ]
    , localNames = [ "Andorra" ]
    , name = "Andorra"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6, 7, 8, 9 ]
    , nationalPrefix = "None"
    , nationality = "Andorran"
    , number = "020"
    , postalCode = True
    , postalCodeFormat = "AD[1-7]0\\d"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryADSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "AD"
    , unofficialNames = [ "Andorre", "Andorra", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Angola
-}
countryAO : Country
countryAO =
    { addressFormat = ""
    , alpha2 = "AO"
    , alpha3 = "AGO"
    , continent = Continent.Africa
    , countryCode = "244"
    , currencyCode = "AOA"
    , emoji = "????????"
    , gec = "AO"
    , internationalPrefix = "00"
    , ioc = "ANG"
    , languagesOfficial = [ "pt" ]
    , languagesSpoken = [ "pt" ]
    , localNames = [ "Angola" ]
    , name = "Angola"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Angolan"
    , number = "024"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryAOSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "AO"
    , unofficialNames = [ "Angola", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Anguilla
-}
countryAI : Country
countryAI =
    { addressFormat = ""
    , alpha2 = "AI"
    , alpha3 = "AIA"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "????????"
    , gec = "AV"
    , internationalPrefix = "011"
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Anguilla" ]
    , name = "Anguilla"
    , nanpPrefix = "1264"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Anguillian"
    , number = "660"
    , postalCode = True
    , postalCodeFormat = "(?:AI-)?2640"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryAISubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "AI"
    , unofficialNames = [ "Anguilla", "????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Antarctica
-}
countryAQ : Country
countryAQ =
    { addressFormat = ""
    , alpha2 = "AQ"
    , alpha3 = "ATA"
    , continent = Continent.Antarctica
    , countryCode = "672"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "AY"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "" ]
    , languagesSpoken = [ "" ]
    , localNames = [ "" ]
    , name = "Antarctica"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = ""
    , number = "010"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.None
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.None
    , unLocode = "AQ"
    , unofficialNames = [ "Antarctica", "Antarktis", "Antarctique", "Ant??rtida", "??????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Antigua and Barbuda
-}
countryAG : Country
countryAG =
    { addressFormat = ""
    , alpha2 = "AG"
    , alpha3 = "ATG"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "????????"
    , gec = "AC"
    , internationalPrefix = "011"
    , ioc = "ANT"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Antigua and Barbuda" ]
    , name = "Antigua and Barbuda"
    , nanpPrefix = "1268"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Antiguan, Barbudan"
    , number = "028"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryAGSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "AG"
    , unofficialNames = [ "Antigua and Barbuda", "Antigua und Barbuda", "Antigua et Barbuda", "Antigua y Barbuda", "????????????????????????????????????", "Antigua en Barbuda" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Argentina
-}
countryAR : Country
countryAR =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{region}}
{{country}}
"""
    , alpha2 = "AR"
    , alpha3 = "ARG"
    , continent = Continent.SouthAmerica
    , countryCode = "54"
    , currencyCode = "ARS"
    , emoji = "????????"
    , gec = "AR"
    , internationalPrefix = "00"
    , ioc = "ARG"
    , languagesOfficial = [ "es", "gn" ]
    , languagesSpoken = [ "es", "gn" ]
    , localNames = [ "Argentina", "Argentina" ]
    , name = "Argentina"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Argentinean"
    , number = "032"
    , postalCode = True
    , postalCodeFormat = "((?:[A-HJ-NP-Z])?\\d{4})([A-Z]{3})?"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryARSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "AR"
    , unofficialNames = [ "Argentina", "Argentinien", "Argentine", "??????????????????", "Argentini??" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Armenia
-}
countryAM : Country
countryAM =
    { addressFormat = ""
    , alpha2 = "AM"
    , alpha3 = "ARM"
    , continent = Continent.Asia
    , countryCode = "374"
    , currencyCode = "AMD"
    , emoji = "????????"
    , gec = "AM"
    , internationalPrefix = "00"
    , ioc = "ARM"
    , languagesOfficial = [ "hy", "ru" ]
    , languagesSpoken = [ "hy", "ru" ]
    , localNames = [ "?????????????????? ????????????????????????????", "??????????????" ]
    , name = "Armenia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "8"
    , nationality = "Armenian"
    , number = "051"
    , postalCode = True
    , postalCodeFormat = "(?:37)?\\d{4}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryAMSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "AM"
    , unofficialNames = [ "Armenia", "Armenien", "Arm??nie", "???????????????", "Armeni??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Aruba
-}
countryAW : Country
countryAW =
    { addressFormat = ""
    , alpha2 = "AW"
    , alpha3 = "ABW"
    , continent = Continent.NorthAmerica
    , countryCode = "297"
    , currencyCode = "AWG"
    , emoji = "????????"
    , gec = "AA"
    , internationalPrefix = "00"
    , ioc = "ARU"
    , languagesOfficial = [ "nl" ]
    , languagesSpoken = [ "nl" ]
    , localNames = [ "Aruba" ]
    , name = "Aruba"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Aruban"
    , number = "533"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryAWSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "AW"
    , unofficialNames = [ "Aruba", "?????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Australia
-}
countryAU : Country
countryAU =
    { addressFormat = """{{recipient}}
{{street}}
{{city}} {{region_short}} {{postalcode}}
{{country}}
"""
    , alpha2 = "AU"
    , alpha3 = "AUS"
    , continent = Continent.Australia
    , countryCode = "61"
    , currencyCode = "AUD"
    , emoji = "????????"
    , gec = "AS"
    , internationalPrefix = "0011"
    , ioc = "AUS"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Australia" ]
    , name = "Australia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Australian"
    , number = "036"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryAUSubdivisions
    , subregion = Subregion.AustraliaAndNewZealand
    , unLocode = "AU"
    , unofficialNames = [ "Australia", "Australien", "Australie", "?????????????????????", "Australi??" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Austria
-}
countryAT : Country
countryAT =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "AT"
    , alpha3 = "AUT"
    , continent = Continent.Europe
    , countryCode = "43"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "AU"
    , internationalPrefix = "00"
    , ioc = "AUT"
    , languagesOfficial = [ "de" ]
    , languagesSpoken = [ "de" ]
    , localNames = [ "??sterreich" ]
    , name = "Austria"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 1, 2, 3 ]
    , nationalNumberLengths = [ 7, 8, 9, 10, 11, 12, 13 ]
    , nationalPrefix = "0"
    , nationality = "Austrian"
    , number = "040"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryATSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "AT"
    , unofficialNames = [ "Austria", "??sterreich", "Autriche", "??????????????????", "Oostenrijk" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Azerbaijan
-}
countryAZ : Country
countryAZ =
    { addressFormat = ""
    , alpha2 = "AZ"
    , alpha3 = "AZE"
    , continent = Continent.Asia
    , countryCode = "994"
    , currencyCode = "AZN"
    , emoji = "????????"
    , gec = "AJ"
    , internationalPrefix = "810"
    , ioc = "AZE"
    , languagesOfficial = [ "az", "hy" ]
    , languagesSpoken = [ "az", "hy" ]
    , localNames = [ "Az??rbaycan", "????????????????" ]
    , name = "Azerbaijan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "8"
    , nationality = "Azerbaijani"
    , number = "031"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryAZSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "AZ"
    , unofficialNames = [ "Azerbaijan", "Aserbaidschan", "Azerba??djan", "Azerbaiy??n", "????????????????????????", "Azerbeidzjan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Bahamas
-}
countryBS : Country
countryBS =
    { addressFormat = ""
    , alpha2 = "BS"
    , alpha3 = "BHS"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "BSD"
    , emoji = "????????"
    , gec = "BF"
    , internationalPrefix = "011"
    , ioc = "BAH"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Bahamas" ]
    , name = "Bahamas"
    , nanpPrefix = "1242"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Bahamian"
    , number = "044"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryBSSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "BS"
    , unofficialNames = [ "Bahamas", "?????????", "Bahama???s" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Bahrain
-}
countryBH : Country
countryBH =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "BH"
    , alpha3 = "BHR"
    , continent = Continent.Asia
    , countryCode = "973"
    , currencyCode = "BHD"
    , emoji = "????????"
    , gec = "BA"
    , internationalPrefix = "00"
    , ioc = "BRN"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "??????????????" ]
    , name = "Bahrain"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Bahraini"
    , number = "048"
    , postalCode = True
    , postalCodeFormat = "(?:\\d|1[0-2])\\d{2}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryBHSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "BH"
    , unofficialNames = [ "Bahrain", "??????????????", "Bahre??n", "Bahrein", "???????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Bangladesh
-}
countryBD : Country
countryBD =
    { addressFormat = ""
    , alpha2 = "BD"
    , alpha3 = "BGD"
    , continent = Continent.Asia
    , countryCode = "880"
    , currencyCode = "BDT"
    , emoji = "????????"
    , gec = "BG"
    , internationalPrefix = "00"
    , ioc = "BAN"
    , languagesOfficial = [ "bn" ]
    , languagesSpoken = [ "bn" ]
    , localNames = [ "????????????????????????" ]
    , name = "Bangladesh"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "0"
    , nationality = "Bangladeshi"
    , number = "050"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryBDSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "BD"
    , unofficialNames = [ "Bangladesh", "Bangladesch", "?????????????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Barbados
-}
countryBB : Country
countryBB =
    { addressFormat = ""
    , alpha2 = "BB"
    , alpha3 = "BRB"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "BBD"
    , emoji = "????????"
    , gec = "BB"
    , internationalPrefix = "011"
    , ioc = "BAR"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Barbados" ]
    , name = "Barbados"
    , nanpPrefix = "1246"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Barbadian"
    , number = "052"
    , postalCode = True
    , postalCodeFormat = "BB\\d{5}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryBBSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "BB"
    , unofficialNames = [ "Barbade", "Barbados", "???????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Belarus
-}
countryBY : Country
countryBY =
    { addressFormat = ""
    , alpha2 = "BY"
    , alpha3 = "BLR"
    , continent = Continent.Europe
    , countryCode = "375"
    , currencyCode = "BYN"
    , emoji = "????????"
    , gec = "BO"
    , internationalPrefix = "810"
    , ioc = "BLR"
    , languagesOfficial = [ "be", "ru" ]
    , languagesSpoken = [ "be", "ru" ]
    , localNames = [ "????????????????", "????????????????" ]
    , name = "Belarus"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "8"
    , nationality = "Belarusian"
    , number = "112"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryBYSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "BY"
    , unofficialNames = [ "Belarus", "Wei??russland", "Bi??lorussie", "Bielorrusia", "???????????????", "Wit-Rusland", "????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Belgium
-}
countryBE : Country
countryBE =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "BE"
    , alpha3 = "BEL"
    , continent = Continent.Europe
    , countryCode = "32"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "BE"
    , internationalPrefix = "00"
    , ioc = "BEL"
    , languagesOfficial = [ "nl", "fr", "de" ]
    , languagesSpoken = [ "nl", "fr", "de" ]
    , localNames = [ "Belgi??", "Belgique", "Belgien" ]
    , name = "Belgium"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Belgian"
    , number = "056"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryBESubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "BE"
    , unofficialNames = [ "Belgium", "Belgien", "Belgique", "B??lgica", "????????????", "Belgi??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Belize
-}
countryBZ : Country
countryBZ =
    { addressFormat = ""
    , alpha2 = "BZ"
    , alpha3 = "BLZ"
    , continent = Continent.NorthAmerica
    , countryCode = "501"
    , currencyCode = "BZD"
    , emoji = "????????"
    , gec = "BH"
    , internationalPrefix = "00"
    , ioc = "BIZ"
    , languagesOfficial = [ "en", "es" ]
    , languagesSpoken = [ "en", "es" ]
    , localNames = [ "Belize", "Belice" ]
    , name = "Belize"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "0"
    , nationality = "Belizean"
    , number = "084"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryBZSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "BZ"
    , unofficialNames = [ "Belize", "Belice", "????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Benin
-}
countryBJ : Country
countryBJ =
    { addressFormat = ""
    , alpha2 = "BJ"
    , alpha3 = "BEN"
    , continent = Continent.Africa
    , countryCode = "229"
    , currencyCode = "XOF"
    , emoji = "????????"
    , gec = "BN"
    , internationalPrefix = "00"
    , ioc = "BEN"
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "B??nin" ]
    , name = "Benin"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Beninese"
    , number = "204"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryBJSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "BJ"
    , unofficialNames = [ "Benin", "B??nin", "?????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Bermuda
-}
countryBM : Country
countryBM =
    { addressFormat = ""
    , alpha2 = "BM"
    , alpha3 = "BMU"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "BMD"
    , emoji = "????????"
    , gec = "BD"
    , internationalPrefix = "011"
    , ioc = "BER"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Bermuda" ]
    , name = "Bermuda"
    , nanpPrefix = "1441"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Bermudian"
    , number = "060"
    , postalCode = True
    , postalCodeFormat = "[A-Z]{2} ?[A-Z0-9]{2}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryBMSubdivisions
    , subregion = Subregion.NorthernAmerica
    , unLocode = "BM"
    , unofficialNames = [ "Bermuda", "Bermudes", "Bermudas", "???????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Bhutan
-}
countryBT : Country
countryBT =
    { addressFormat = ""
    , alpha2 = "BT"
    , alpha3 = "BTN"
    , continent = Continent.Asia
    , countryCode = "975"
    , currencyCode = "BTN"
    , emoji = "????????"
    , gec = "BT"
    , internationalPrefix = "00"
    , ioc = "BHU"
    , languagesOfficial = [ "dz" ]
    , languagesSpoken = [ "dz" ]
    , localNames = [ "??????????????????" ]
    , name = "Bhutan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8 ]
    , nationalPrefix = "None"
    , nationality = "Bhutanese"
    , number = "064"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryBTSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "BT"
    , unofficialNames = [ "Bhutan", "Bhoutan", "But??n", "????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Bolivia (Plurinational State of)
-}
countryBO : Country
countryBO =
    { addressFormat = ""
    , alpha2 = "BO"
    , alpha3 = "BOL"
    , continent = Continent.SouthAmerica
    , countryCode = "591"
    , currencyCode = "BOB"
    , emoji = "????????"
    , gec = "BL"
    , internationalPrefix = "0010"
    , ioc = "BOL"
    , languagesOfficial = [ "es", "ay", "qu" ]
    , languagesSpoken = [ "es", "ay", "qu" ]
    , localNames = [ "Bolivia", "Wuliwya" ]
    , name = "Bolivia (Plurinational State of)"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "010"
    , nationality = "Bolivian"
    , number = "068"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryBOSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "BO"
    , unofficialNames = [ "Bolivia", "Bolivien", "Bolivie", "????????????????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Bonaire, Sint Eustatius and Saba
-}
countryBQ : Country
countryBQ =
    { addressFormat = ""
    , alpha2 = "BQ"
    , alpha3 = "BES"
    , continent = Continent.NorthAmerica
    , countryCode = "599"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = ""
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "nl", "en" ]
    , languagesSpoken = [ "nl", "en" ]
    , localNames = [ "Bonaire, Sint Eustatius en Saba", "Bonaire, Sint Eustatius and Saba" ]
    , name = "Bonaire, Sint Eustatius and Saba"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "0"
    , nationality = "Dutch"
    , number = "535"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryBQSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "BQ"
    , unofficialNames = [ "Bonaire, Sint Eustatius and Saba", "Caribbean Netherlands", "Caribisch Nederland", "??????????????????????????????????????????????????????????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Bosnia and Herzegovina
-}
countryBA : Country
countryBA =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "BA"
    , alpha3 = "BIH"
    , continent = Continent.Europe
    , countryCode = "387"
    , currencyCode = "BAM"
    , emoji = "????????"
    , gec = "BK"
    , internationalPrefix = "00"
    , ioc = "BIH"
    , languagesOfficial = [ "bs", "hr", "sr" ]
    , languagesSpoken = [ "bs", "hr", "sr" ]
    , localNames = [ "Bosna i Hercegovina", "Bosna i Hercegovina", "?????????? ?? ??????????????????????" ]
    , name = "Bosnia and Herzegovina"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Bosnian, Herzegovinian"
    , number = "070"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryBASubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "BA"
    , unofficialNames = [ "Bosnia and Herzegovina", "Bosnien und Herzegowina", "Bosnie et Herz??govine", "Bosnia y Herzegovina", "????????????????????????????????????", "Bosni?? en Herzegovina", "Bosnia Herzegovina" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Botswana
-}
countryBW : Country
countryBW =
    { addressFormat = ""
    , alpha2 = "BW"
    , alpha3 = "BWA"
    , continent = Continent.Africa
    , countryCode = "267"
    , currencyCode = "BWP"
    , emoji = "????????"
    , gec = "BC"
    , internationalPrefix = "00"
    , ioc = "BOT"
    , languagesOfficial = [ "en", "tn" ]
    , languagesSpoken = [ "en", "tn" ]
    , localNames = [ "Botswana" ]
    , name = "Botswana"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Motswana"
    , number = "072"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryBWSubdivisions
    , subregion = Subregion.SouthernAfrica
    , unLocode = "BW"
    , unofficialNames = [ "Botswana", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Bouvet Island
-}
countryBV : Country
countryBV =
    { addressFormat = ""
    , alpha2 = "BV"
    , alpha3 = "BVT"
    , continent = Continent.Antarctica
    , countryCode = "47"
    , currencyCode = "NOK"
    , emoji = "????????"
    , gec = "BV"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "" ]
    , languagesSpoken = [ "" ]
    , localNames = [ "" ]
    , name = "Bouvet Island"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = ""
    , number = "074"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.None
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.None
    , unLocode = "BV"
    , unofficialNames = [ "Bouvet Island", "Bouvetinsel", "????????????", "Bouveteiland" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Brazil
-}
countryBR : Country
countryBR =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}} {{region_short}}
{{country}}
"""
    , alpha2 = "BR"
    , alpha3 = "BRA"
    , continent = Continent.SouthAmerica
    , countryCode = "55"
    , currencyCode = "BRL"
    , emoji = "????????"
    , gec = "BR"
    , internationalPrefix = "0014"
    , ioc = "BRA"
    , languagesOfficial = [ "pt" ]
    , languagesSpoken = [ "pt" ]
    , localNames = [ "Brasil" ]
    , name = "Brazil"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 10, 11 ]
    , nationalPrefix = "014"
    , nationality = "Brazilian"
    , number = "076"
    , postalCode = True
    , postalCodeFormat = "\\d{5}-?\\d{3}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryBRSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "BR"
    , unofficialNames = [ "Brazil", "Brasilien", "Br??sil", "Brasil", "????????????", "Brazili??" ]
    , worldRegion = WorldRegion.Amer
    }


{-| British Indian Ocean Territory
-}
countryIO : Country
countryIO =
    { addressFormat = ""
    , alpha2 = "IO"
    , alpha3 = "IOT"
    , continent = Continent.Asia
    , countryCode = "246"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "IO"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "British Indian Ocean Territory" ]
    , name = "British Indian Ocean Territory"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "Indian"
    , number = "086"
    , postalCode = True
    , postalCodeFormat = "BBND 1ZZ"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.EasternAfrica
    , unLocode = "IO"
    , unofficialNames = [ "British Indian Ocean Territory", "Britisches Territorium im Indischen Ozean", "?????????????????????????????????", "Britse Gebieden in de Indische Oceaan" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Brunei Darussalam
-}
countryBN : Country
countryBN =
    { addressFormat = ""
    , alpha2 = "BN"
    , alpha3 = "BRN"
    , continent = Continent.Asia
    , countryCode = "673"
    , currencyCode = "BND"
    , emoji = "????????"
    , gec = "BX"
    , internationalPrefix = "00"
    , ioc = "BRU"
    , languagesOfficial = [ "ms" ]
    , languagesSpoken = [ "ms" ]
    , localNames = [ "Brunei Darussalam" ]
    , name = "Brunei Darussalam"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "0"
    , nationality = "Bruneian"
    , number = "096"
    , postalCode = True
    , postalCodeFormat = "[A-Z]{2} ?\\d{4}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryBNSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "BN"
    , unofficialNames = [ "Brunei", "?????????????????????????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Bulgaria
-}
countryBG : Country
countryBG =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "BG"
    , alpha3 = "BGR"
    , continent = Continent.Europe
    , countryCode = "359"
    , currencyCode = "BGN"
    , emoji = "????????"
    , gec = "BU"
    , internationalPrefix = "00"
    , ioc = "BUL"
    , languagesOfficial = [ "bg" ]
    , languagesSpoken = [ "bg" ]
    , localNames = [ "????????????????" ]
    , name = "Bulgaria"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9, 10 ]
    , nationalPrefix = "0"
    , nationality = "Bulgarian"
    , number = "100"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryBGSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "BG"
    , unofficialNames = [ "Bulgaria", "Bulgarien", "Bulgarie", "???????????????", "Bulgarije" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Burkina Faso
-}
countryBF : Country
countryBF =
    { addressFormat = ""
    , alpha2 = "BF"
    , alpha3 = "BFA"
    , continent = Continent.Africa
    , countryCode = "226"
    , currencyCode = "XOF"
    , emoji = "????????"
    , gec = "UV"
    , internationalPrefix = "00"
    , ioc = "BUR"
    , languagesOfficial = [ "fr", "ff" ]
    , languagesSpoken = [ "fr", "ff" ]
    , localNames = [ "Burkina Faso", "Burkina Faso" ]
    , name = "Burkina Faso"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Burkinabe"
    , number = "854"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryBFSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "BF"
    , unofficialNames = [ "Burkina Faso", "?????????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Burundi
-}
countryBI : Country
countryBI =
    { addressFormat = ""
    , alpha2 = "BI"
    , alpha3 = "BDI"
    , continent = Continent.Africa
    , countryCode = "257"
    , currencyCode = "BIF"
    , emoji = "????????"
    , gec = "BY"
    , internationalPrefix = "00"
    , ioc = "BDI"
    , languagesOfficial = [ "fr", "rn" ]
    , languagesSpoken = [ "fr", "rn" ]
    , localNames = [ "Burundi" ]
    , name = "Burundi"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Burundian"
    , number = "108"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryBISubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "BI"
    , unofficialNames = [ "Burundi", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Cabo Verde
-}
countryCV : Country
countryCV =
    { addressFormat = ""
    , alpha2 = "CV"
    , alpha3 = "CPV"
    , continent = Continent.Africa
    , countryCode = "238"
    , currencyCode = "CVE"
    , emoji = "????????"
    , gec = "CV"
    , internationalPrefix = "00"
    , ioc = "CPV"
    , languagesOfficial = [ "pt" ]
    , languagesSpoken = [ "pt" ]
    , localNames = [ "Cabo Verde" ]
    , name = "Cabo Verde"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Cape Verdian"
    , number = "132"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryCVSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "CV"
    , unofficialNames = [ "Cape Verde", "Kap Verde", "Cap Vert", "Cabo Verde", "??????????????????", "Kaapverdi??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Cambodia
-}
countryKH : Country
countryKH =
    { addressFormat = ""
    , alpha2 = "KH"
    , alpha3 = "KHM"
    , continent = Continent.Asia
    , countryCode = "855"
    , currencyCode = "KHR"
    , emoji = "????????"
    , gec = "CB"
    , internationalPrefix = "00"
    , ioc = "CAM"
    , languagesOfficial = [ "km" ]
    , languagesSpoken = [ "km" ]
    , localNames = [ "?????????????????????" ]
    , name = "Cambodia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Cambodian"
    , number = "116"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryKHSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "KH"
    , unofficialNames = [ "Cambodia", "Kambodscha", "Cambodge", "Camboya", "???????????????", "Cambodja" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Cameroon
-}
countryCM : Country
countryCM =
    { addressFormat = ""
    , alpha2 = "CM"
    , alpha3 = "CMR"
    , continent = Continent.Africa
    , countryCode = "237"
    , currencyCode = "XAF"
    , emoji = "????????"
    , gec = "CM"
    , internationalPrefix = "00"
    , ioc = "CMR"
    , languagesOfficial = [ "en", "fr" ]
    , languagesSpoken = [ "en", "fr" ]
    , localNames = [ "Cameroon", "Cameroun" ]
    , name = "Cameroon"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Cameroonian"
    , number = "120"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryCMSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "CM"
    , unofficialNames = [ "Cameroon", "Kamerun", "Cameroun", "Camer??n", "???????????????", "Kameroen" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Canada
-}
countryCA : Country
countryCA =
    { addressFormat = """{{recipient}}
{{street}}
{{city}} {{region_short}} {{postalcode}}
{{country}}
"""
    , alpha2 = "CA"
    , alpha3 = "CAN"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "CAD"
    , emoji = "????????"
    , gec = "CA"
    , internationalPrefix = "011"
    , ioc = "CAN"
    , languagesOfficial = [ "en", "fr" ]
    , languagesSpoken = [ "en", "fr" ]
    , localNames = [ "Canada", "Canada" ]
    , name = "Canada"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Canadian"
    , number = "124"
    , postalCode = True
    , postalCodeFormat = "[ABCEGHJKLMNPRSTVXY]\\d[ABCEGHJ-NPRSTV-Z] ?\\d[ABCEGHJ-NPRSTV-Z]\\d"
    , region = Region.Americas
    , startOfWeek = Time.Sun
    , subdivisions = countryCASubdivisions
    , subregion = Subregion.NorthernAmerica
    , unLocode = "CA"
    , unofficialNames = [ "Canada", "Kanada", "Canad??", "?????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Cayman Islands
-}
countryKY : Country
countryKY =
    { addressFormat = ""
    , alpha2 = "KY"
    , alpha3 = "CYM"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "KYD"
    , emoji = "????????"
    , gec = "CJ"
    , internationalPrefix = "011"
    , ioc = "CAY"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Cayman Islands" ]
    , name = "Cayman Islands"
    , nanpPrefix = "1345"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Caymanian"
    , number = "136"
    , postalCode = True
    , postalCodeFormat = "KY\\d-\\d{4}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryKYSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "KY"
    , unofficialNames = [ "Cayman Islands", "Kaimaninseln", "??les Ca??mans", "Islas Caim??n", "??????????????????", "Caymaneilanden" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Central African Republic
-}
countryCF : Country
countryCF =
    { addressFormat = ""
    , alpha2 = "CF"
    , alpha3 = "CAF"
    , continent = Continent.Africa
    , countryCode = "236"
    , currencyCode = "XAF"
    , emoji = "????????"
    , gec = "CT"
    , internationalPrefix = "00"
    , ioc = "CAF"
    , languagesOfficial = [ "fr", "sg" ]
    , languagesSpoken = [ "fr", "sg" ]
    , localNames = [ "R??publique centrafricaine" ]
    , name = "Central African Republic"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Central African"
    , number = "140"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryCFSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "CF"
    , unofficialNames = [ "Central African Republic", "Zentralafrikanische Republik", "R??publique Centrafricaine", "Rep??blica Centroafricana", "???????????????????????????", "Centraal-Afrikaanse Republiek" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Chad
-}
countryTD : Country
countryTD =
    { addressFormat = ""
    , alpha2 = "TD"
    , alpha3 = "TCD"
    , continent = Continent.Africa
    , countryCode = "235"
    , currencyCode = "XAF"
    , emoji = "????????"
    , gec = "CD"
    , internationalPrefix = "15"
    , ioc = "CHA"
    , languagesOfficial = [ "ar", "fr" ]
    , languagesSpoken = [ "ar", "fr" ]
    , localNames = [ "????????", "Tchad" ]
    , name = "Chad"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Chadian"
    , number = "148"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryTDSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "TD"
    , unofficialNames = [ "Chad", "????????", "Tschad", "Tchad", "?????????", "Tsjaad" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Chile
-}
countryCL : Country
countryCL =
    { addressFormat = ""
    , alpha2 = "CL"
    , alpha3 = "CHL"
    , continent = Continent.SouthAmerica
    , countryCode = "56"
    , currencyCode = "CLP"
    , emoji = "????????"
    , gec = "CI"
    , internationalPrefix = "00"
    , ioc = "CHI"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Chile" ]
    , name = "Chile"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Chilean"
    , number = "152"
    , postalCode = True
    , postalCodeFormat = "\\d{7}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryCLSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "CL"
    , unofficialNames = [ "Chile", "??????", "Chili" ]
    , worldRegion = WorldRegion.Amer
    }


{-| China
-}
countryCN : Country
countryCN =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}} {{region_short}}
{{country}}
"""
    , alpha2 = "CN"
    , alpha3 = "CHN"
    , continent = Continent.Asia
    , countryCode = "86"
    , currencyCode = "CNY"
    , emoji = "????????"
    , gec = "CH"
    , internationalPrefix = "00"
    , ioc = "CHN"
    , languagesOfficial = [ "zh" ]
    , languagesSpoken = [ "zh" ]
    , localNames = [ "??????" ]
    , name = "China"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8, 9, 10, 11 ]
    , nationalPrefix = "0"
    , nationality = "Chinese"
    , number = "156"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryCNSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "CN"
    , unofficialNames = [ "China", "Chine", "??????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Christmas Island
-}
countryCX : Country
countryCX =
    { addressFormat = ""
    , alpha2 = "CX"
    , alpha3 = "CXR"
    , continent = Continent.Asia
    , countryCode = "61"
    , currencyCode = "AUD"
    , emoji = "????????"
    , gec = "KT"
    , internationalPrefix = "0011"
    , ioc = ""
    , languagesOfficial = [ "en", "zh", "ms" ]
    , languagesSpoken = [ "en", "zh", "ms" ]
    , localNames = [ "Christmas Island", "?????????", "Kepulauan Christmas" ]
    , name = "Christmas Island"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = "0"
    , nationality = "Christmas Island"
    , number = "162"
    , postalCode = True
    , postalCodeFormat = "6798"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.AustraliaAndNewZealand
    , unLocode = "CX"
    , unofficialNames = [ "Christmas Island", "Weihnachtsinsel", "??????????????????", "Christmaseiland" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Cocos (Keeling) Islands
-}
countryCC : Country
countryCC =
    { addressFormat = ""
    , alpha2 = "CC"
    , alpha3 = "CCK"
    , continent = Continent.Asia
    , countryCode = "61"
    , currencyCode = "AUD"
    , emoji = "????????"
    , gec = "CK"
    , internationalPrefix = "0011"
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Cocos (Keeling) Islands" ]
    , name = "Cocos (Keeling) Islands"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Cocos Islander"
    , number = "166"
    , postalCode = True
    , postalCodeFormat = "6799"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.AustraliaAndNewZealand
    , unLocode = "CC"
    , unofficialNames = [ "Cocos (Keeling) Islands", "Kokosinseln", "????????????????????????????????????", "Cocoseilanden" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Colombia
-}
countryCO : Country
countryCO =
    { addressFormat = ""
    , alpha2 = "CO"
    , alpha3 = "COL"
    , continent = Continent.SouthAmerica
    , countryCode = "57"
    , currencyCode = "COP"
    , emoji = "????????"
    , gec = "CO"
    , internationalPrefix = "005"
    , ioc = "COL"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Colombia" ]
    , name = "Colombia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9, 10 ]
    , nationalPrefix = "05"
    , nationality = "Colombian"
    , number = "170"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryCOSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "CO"
    , unofficialNames = [ "Colombia", "Kolumbien", "Colombie", "???????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Comoros
-}
countryKM : Country
countryKM =
    { addressFormat = ""
    , alpha2 = "KM"
    , alpha3 = "COM"
    , continent = Continent.Africa
    , countryCode = "269"
    , currencyCode = "KMF"
    , emoji = "????????"
    , gec = "CN"
    , internationalPrefix = "00"
    , ioc = "COM"
    , languagesOfficial = [ "ar", "fr" ]
    , languagesSpoken = [ "ar", "fr" ]
    , localNames = [ "?????? ??????????", "Comores" ]
    , name = "Comoros"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Comoran"
    , number = "174"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryKMSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "KM"
    , unofficialNames = [ "Comoros", "Union der Komoren", "Comores", "?????????", "Comoren" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Congo
-}
countryCG : Country
countryCG =
    { addressFormat = ""
    , alpha2 = "CG"
    , alpha3 = "COG"
    , continent = Continent.Africa
    , countryCode = "242"
    , currencyCode = "XAF"
    , emoji = "????????"
    , gec = "CF"
    , internationalPrefix = "00"
    , ioc = "CGO"
    , languagesOfficial = [ "fr", "ln" ]
    , languagesSpoken = [ "fr", "ln" ]
    , localNames = [ "R??publique du Congo" ]
    , name = "Congo"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Congolese"
    , number = "178"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryCGSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "CG"
    , unofficialNames = [ "Congo", "Kongo", "??????????????????", "Congo [Republiek]", "Congo, Republic of" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Congo (Democratic Republic of the)
-}
countryCD : Country
countryCD =
    { addressFormat = ""
    , alpha2 = "CD"
    , alpha3 = "COD"
    , continent = Continent.Africa
    , countryCode = "243"
    , currencyCode = "CDF"
    , emoji = "????????"
    , gec = "CG"
    , internationalPrefix = "00"
    , ioc = "COD"
    , languagesOfficial = [ "fr", "ln", "kg", "sw", "lu" ]
    , languagesSpoken = [ "fr", "ln", "kg", "sw", "lu" ]
    , localNames = [ "R??publique d??mocratique du Congo", "Congo" ]
    , name = "Congo (Democratic Republic of the)"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Congolese"
    , number = "180"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryCDSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "CD"
    , unofficialNames = [ "Congo (Dem. Rep.)", "Kongo (Dem. Rep.)", "Congo (Rep. Dem.)", "????????????????????????", "Congo [DRC]", "Congo (The Democratic Republic Of The)", "Democratic Republic of the Congo", "Congo, Democratic Republic of" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Cook Islands
-}
countryCK : Country
countryCK =
    { addressFormat = ""
    , alpha2 = "CK"
    , alpha3 = "COK"
    , continent = Continent.Australia
    , countryCode = "682"
    , currencyCode = "NZD"
    , emoji = "????????"
    , gec = "CW"
    , internationalPrefix = "00"
    , ioc = "COK"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Cook Islands" ]
    , name = "Cook Islands"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 5 ]
    , nationalPrefix = "00"
    , nationality = "Cook Islander"
    , number = "184"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryCKSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "CK"
    , unofficialNames = [ "Cook Islands", "Cookinseln", "??les Cook", "Islas Cook", "???????????????", "Cookeilanden" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Costa Rica
-}
countryCR : Country
countryCR =
    { addressFormat = ""
    , alpha2 = "CR"
    , alpha3 = "CRI"
    , continent = Continent.NorthAmerica
    , countryCode = "506"
    , currencyCode = "CRC"
    , emoji = "????????"
    , gec = "CS"
    , internationalPrefix = "00"
    , ioc = "CRC"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Costa Rica" ]
    , name = "Costa Rica"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Costa Rican"
    , number = "188"
    , postalCode = True
    , postalCodeFormat = "\\d{4,5}|\\d{3}-\\d{4}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryCRSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "CR"
    , unofficialNames = [ "Costa Rica", "???????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Croatia
-}
countryHR : Country
countryHR =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "HR"
    , alpha3 = "HRV"
    , continent = Continent.Europe
    , countryCode = "385"
    , currencyCode = "HRK"
    , emoji = "????????"
    , gec = "HR"
    , internationalPrefix = "00"
    , ioc = "CRO"
    , languagesOfficial = [ "hr" ]
    , languagesSpoken = [ "hr" ]
    , localNames = [ "Hrvatska" ]
    , name = "Croatia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Croatian"
    , number = "191"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryHRSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "HR"
    , unofficialNames = [ "Croatia", "Kroatien", "Croatie", "Croacia", "???????????????", "Kroati??", "Croatia (Hrvatska)" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Cuba
-}
countryCU : Country
countryCU =
    { addressFormat = ""
    , alpha2 = "CU"
    , alpha3 = "CUB"
    , continent = Continent.NorthAmerica
    , countryCode = "53"
    , currencyCode = "CUP"
    , emoji = "????????"
    , gec = "CU"
    , internationalPrefix = "119"
    , ioc = "CUB"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Cuba" ]
    , name = "Cuba"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Cuban"
    , number = "192"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryCUSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "CU"
    , unofficialNames = [ "Cuba", "Kuba", "????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Cura??ao
-}
countryCW : Country
countryCW =
    { addressFormat = ""
    , alpha2 = "CW"
    , alpha3 = "CUW"
    , continent = Continent.NorthAmerica
    , countryCode = "599"
    , currencyCode = "ANG"
    , emoji = "????????"
    , gec = "UC"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "nl" ]
    , languagesSpoken = [ "nl" ]
    , localNames = [ "Cura??ao" ]
    , name = "Cura??ao"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "0"
    , nationality = "Dutch"
    , number = "531"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryCWSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "CW"
    , unofficialNames = [ "Cura??ao", "??????????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Cyprus
-}
countryCY : Country
countryCY =
    { addressFormat = ""
    , alpha2 = "CY"
    , alpha3 = "CYP"
    , continent = Continent.Asia
    , countryCode = "357"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "CY"
    , internationalPrefix = "00"
    , ioc = "CYP"
    , languagesOfficial = [ "el", "tr", "hy" ]
    , languagesSpoken = [ "el", "tr", "hy" ]
    , localNames = [ "????????????", "K??br??s", "????????????" ]
    , name = "Cyprus"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Cypriot"
    , number = "196"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryCYSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "CY"
    , unofficialNames = [ "Cyprus", "Zypern", "Chypre", "Chipre", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Czech Republic
-}
countryCZ : Country
countryCZ =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "CZ"
    , alpha3 = "CZE"
    , continent = Continent.Europe
    , countryCode = "420"
    , currencyCode = "CZK"
    , emoji = "????????"
    , gec = "EZ"
    , internationalPrefix = "00"
    , ioc = "CZE"
    , languagesOfficial = [ "cs", "sk" ]
    , languagesSpoken = [ "cs", "sk" ]
    , localNames = [ "??esko", "??esko" ]
    , name = "Czech Republic"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "None"
    , nationality = "Czech"
    , number = "203"
    , postalCode = True
    , postalCodeFormat = "\\d{3} ?\\d{2}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryCZSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "CZ"
    , unofficialNames = [ "Czech Republic", "Tschechische Republik", "R??publique Tch??que", "Rep??blica Checa", "?????????", "Tsjechi??", "Czechia" ]
    , worldRegion = WorldRegion.Emea
    }


{-| C??te d'Ivoire
-}
countryCI : Country
countryCI =
    { addressFormat = ""
    , alpha2 = "CI"
    , alpha3 = "CIV"
    , continent = Continent.Africa
    , countryCode = "225"
    , currencyCode = "XOF"
    , emoji = "????????"
    , gec = "IV"
    , internationalPrefix = "00"
    , ioc = "CIV"
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "C??te d'Ivoire" ]
    , name = "C??te d'Ivoire"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Ivorian"
    , number = "384"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryCISubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "CI"
    , unofficialNames = [ "C??te D'Ivoire", "Elfenbeink??ste", "????????????????????????", "Ivoorkust", "Cote D'Ivoire (Ivory Coast)", "Cote d Ivoire (Ivory Coast)", "Ivory Coast" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Denmark
-}
countryDK : Country
countryDK =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{region}}
{{country}}
"""
    , alpha2 = "DK"
    , alpha3 = "DNK"
    , continent = Continent.Europe
    , countryCode = "45"
    , currencyCode = "DKK"
    , emoji = "????????"
    , gec = "DA"
    , internationalPrefix = "00"
    , ioc = "DEN"
    , languagesOfficial = [ "da" ]
    , languagesSpoken = [ "da" ]
    , localNames = [ "Danmark" ]
    , name = "Denmark"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Danish"
    , number = "208"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryDKSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "DK"
    , unofficialNames = [ "Denmark", "D??nemark", "Danemark", "Dinamarca", "???????????????", "Denemarken" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Djibouti
-}
countryDJ : Country
countryDJ =
    { addressFormat = ""
    , alpha2 = "DJ"
    , alpha3 = "DJI"
    , continent = Continent.Africa
    , countryCode = "253"
    , currencyCode = "DJF"
    , emoji = "????????"
    , gec = "DJ"
    , internationalPrefix = "00"
    , ioc = "DJI"
    , languagesOfficial = [ "ar", "fr" ]
    , languagesSpoken = [ "ar", "fr" ]
    , localNames = [ "????????????", "Djibouti" ]
    , name = "Djibouti"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6 ]
    , nationalPrefix = "None"
    , nationality = "Djibouti"
    , number = "262"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryDJSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "DJ"
    , unofficialNames = [ "Djibouti", "????????????", "Dschibuti", "?????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Dominica
-}
countryDM : Country
countryDM =
    { addressFormat = ""
    , alpha2 = "DM"
    , alpha3 = "DMA"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "????????"
    , gec = "DO"
    , internationalPrefix = "011"
    , ioc = "DMA"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Dominica" ]
    , name = "Dominica"
    , nanpPrefix = "1767"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Dominican"
    , number = "212"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryDMSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "DM"
    , unofficialNames = [ "Dominica", "???????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Dominican Republic
-}
countryDO : Country
countryDO =
    { addressFormat = ""
    , alpha2 = "DO"
    , alpha3 = "DOM"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "DOP"
    , emoji = "????????"
    , gec = "DR"
    , internationalPrefix = "011"
    , ioc = "DOM"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Rep??blica Dominicana" ]
    , name = "Dominican Republic"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Dominican"
    , number = "214"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryDOSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "DO"
    , unofficialNames = [ "Dominican Republic", "Dominikanische Republik", "R??publique Dominicaine", "Rep??blica Dominicana", "?????????????????????", "Dominicaanse Republiek" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Ecuador
-}
countryEC : Country
countryEC =
    { addressFormat = ""
    , alpha2 = "EC"
    , alpha3 = "ECU"
    , continent = Continent.SouthAmerica
    , countryCode = "593"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "EC"
    , internationalPrefix = "00"
    , ioc = "ECU"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Ecuador" ]
    , name = "Ecuador"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Ecuadorean"
    , number = "218"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryECSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "EC"
    , unofficialNames = [ "Ecuador", "??quateur", "???????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Egypt
-}
countryEG : Country
countryEG =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "EG"
    , alpha3 = "EGY"
    , continent = Continent.Africa
    , countryCode = "20"
    , currencyCode = "EGP"
    , emoji = "????????"
    , gec = "EG"
    , internationalPrefix = "00"
    , ioc = "EGY"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "??????" ]
    , name = "Egypt"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Egyptian"
    , number = "818"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Africa
    , startOfWeek = Time.Sun
    , subdivisions = countryEGSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "EG"
    , unofficialNames = [ "Egypt", "??????", "??gypten", "??gypte", "Egipto", "????????????", "Egypte" ]
    , worldRegion = WorldRegion.Emea
    }


{-| El Salvador
-}
countrySV : Country
countrySV =
    { addressFormat = ""
    , alpha2 = "SV"
    , alpha3 = "SLV"
    , continent = Continent.NorthAmerica
    , countryCode = "503"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "ES"
    , internationalPrefix = "00"
    , ioc = "ESA"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "El Salvador" ]
    , name = "El Salvador"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Salvadoran"
    , number = "222"
    , postalCode = True
    , postalCodeFormat = "CP [1-3][1-7][0-2]\\d"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countrySVSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "SV"
    , unofficialNames = [ "El Salvador", "Salvador", "?????????????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Equatorial Guinea
-}
countryGQ : Country
countryGQ =
    { addressFormat = ""
    , alpha2 = "GQ"
    , alpha3 = "GNQ"
    , continent = Continent.Africa
    , countryCode = "240"
    , currencyCode = "XAF"
    , emoji = "????????"
    , gec = "EK"
    , internationalPrefix = "00"
    , ioc = "GEQ"
    , languagesOfficial = [ "es", "fr" ]
    , languagesSpoken = [ "es", "fr" ]
    , localNames = [ "Guinea Ecuatorial", "Guin??e ??quatoriale" ]
    , name = "Equatorial Guinea"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6 ]
    , nationalPrefix = "None"
    , nationality = "Equatorial Guinean"
    , number = "226"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryGQSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "GQ"
    , unofficialNames = [ "Equatorial Guinea", "??quatorial-Guinea", "Guin??e ??quatoriale", "Guinea Ecuatorial", "???????????????", "Equatoriaal-Guinea" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Eritrea
-}
countryER : Country
countryER =
    { addressFormat = ""
    , alpha2 = "ER"
    , alpha3 = "ERI"
    , continent = Continent.Africa
    , countryCode = "291"
    , currencyCode = "ETB"
    , emoji = "????????"
    , gec = "ER"
    , internationalPrefix = "00"
    , ioc = "ERI"
    , languagesOfficial = [ "en", "ar", "ti" ]
    , languagesSpoken = [ "en", "ar", "ti" ]
    , localNames = [ "Eritrea", "??????????????", "????????????" ]
    , name = "Eritrea"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "0"
    , nationality = "Eritrean"
    , number = "232"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryERSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "ER"
    , unofficialNames = [ "Eritrea", "??????????????", "??rythr??e", "???????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Estonia
-}
countryEE : Country
countryEE =
    { addressFormat = ""
    , alpha2 = "EE"
    , alpha3 = "EST"
    , continent = Continent.Europe
    , countryCode = "372"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "EN"
    , internationalPrefix = "00"
    , ioc = "EST"
    , languagesOfficial = [ "et" ]
    , languagesSpoken = [ "et" ]
    , localNames = [ "Eesti" ]
    , name = "Estonia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8 ]
    , nationalPrefix = "None"
    , nationality = "Estonian"
    , number = "233"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryEESubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "EE"
    , unofficialNames = [ "Estonia", "Estland", "Estonie", "???????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Ethiopia
-}
countryET : Country
countryET =
    { addressFormat = ""
    , alpha2 = "ET"
    , alpha3 = "ETH"
    , continent = Continent.Africa
    , countryCode = "251"
    , currencyCode = "ETB"
    , emoji = "????????"
    , gec = "ET"
    , internationalPrefix = "00"
    , ioc = "ETH"
    , languagesOfficial = [ "am" ]
    , languagesSpoken = [ "am" ]
    , localNames = [ "???????????????" ]
    , name = "Ethiopia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Ethiopian"
    , number = "231"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryETSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "ET"
    , unofficialNames = [ "Ethiopia", "??thiopien", "??thiopie", "Etiop??a", "???????????????", "Ethiopi??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Falkland Islands (Malvinas)
-}
countryFK : Country
countryFK =
    { addressFormat = ""
    , alpha2 = "FK"
    , alpha3 = "FLK"
    , continent = Continent.SouthAmerica
    , countryCode = "500"
    , currencyCode = "FKP"
    , emoji = "????????"
    , gec = "FK"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Falkland Islands (Malvinas)" ]
    , name = "Falkland Islands (Malvinas)"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 5 ]
    , nationalPrefix = "None"
    , nationality = "Falkland Islander"
    , number = "238"
    , postalCode = True
    , postalCodeFormat = "FIQQ 1ZZ"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.SouthAmerica
    , unLocode = "FK"
    , unofficialNames = [ "Falkland Islands", "Falklandinseln", "??les Malouines", "Islas Malvinas", "????????????????????????????????????????????????", "Falklandeilanden [Islas Malvinas]" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Faroe Islands
-}
countryFO : Country
countryFO =
    { addressFormat = ""
    , alpha2 = "FO"
    , alpha3 = "FRO"
    , continent = Continent.Europe
    , countryCode = "298"
    , currencyCode = "DKK"
    , emoji = "????????"
    , gec = "FO"
    , internationalPrefix = "00"
    , ioc = "FRO"
    , languagesOfficial = [ "fo" ]
    , languagesSpoken = [ "fo" ]
    , localNames = [ "F??royar" ]
    , name = "Faroe Islands"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6 ]
    , nationalPrefix = "None"
    , nationality = "Faroese"
    , number = "234"
    , postalCode = True
    , postalCodeFormat = "\\d{3}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryFOSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "FO"
    , unofficialNames = [ "Faroe Islands", "F??r??er-Inseln", "??les F??ro??", "Islas Faroe", "??????????????????", "Faer??er" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Fiji
-}
countryFJ : Country
countryFJ =
    { addressFormat = ""
    , alpha2 = "FJ"
    , alpha3 = "FJI"
    , continent = Continent.Australia
    , countryCode = "679"
    , currencyCode = "FJD"
    , emoji = "????????"
    , gec = "FJ"
    , internationalPrefix = "00"
    , ioc = "FIJ"
    , languagesOfficial = [ "en", "fj", "hi", "ur" ]
    , languagesSpoken = [ "en", "fj", "hi", "ur" ]
    , localNames = [ "Fiji", "????????????", "??????" ]
    , name = "Fiji"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Fijian"
    , number = "242"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryFJSubdivisions
    , subregion = Subregion.Melanesia
    , unLocode = "FJ"
    , unofficialNames = [ "Fiji", "Fidschi", "Fidji", "????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Finland
-}
countryFI : Country
countryFI =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "FI"
    , alpha3 = "FIN"
    , continent = Continent.Europe
    , countryCode = "358"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "FI"
    , internationalPrefix = "00"
    , ioc = "FIN"
    , languagesOfficial = [ "fi", "sv" ]
    , languagesSpoken = [ "fi", "sv" ]
    , localNames = [ "Suomi", "Finland" ]
    , name = "Finland"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Finnish"
    , number = "246"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryFISubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "FI"
    , unofficialNames = [ "Finland", "Finnland", "Finlande", "Finlandia", "??????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| France
-}
countryFR : Country
countryFR =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "FR"
    , alpha3 = "FRA"
    , continent = Continent.Europe
    , countryCode = "33"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "FR"
    , internationalPrefix = "00"
    , ioc = "FRA"
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "France" ]
    , name = "France"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 1 ]
    , nationalNumberLengths = [ 9, 10 ]
    , nationalPrefix = "0"
    , nationality = "French"
    , number = "250"
    , postalCode = True
    , postalCodeFormat = "\\d{2} ?\\d{3}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryFRSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "FR"
    , unofficialNames = [ "France", "Frankreich", "the French Republic", "????????????", "Frankrijk", "Francia" ]
    , worldRegion = WorldRegion.Emea
    }


{-| French Guiana
-}
countryGF : Country
countryGF =
    { addressFormat = ""
    , alpha2 = "GF"
    , alpha3 = "GUF"
    , continent = Continent.SouthAmerica
    , countryCode = "594"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "FG"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Guyane fran??aise" ]
    , name = "French Guiana"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "None"
    , nationality = "French Guianan"
    , number = "254"
    , postalCode = True
    , postalCodeFormat = "9[78]3\\d{2}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryGFSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "GF"
    , unofficialNames = [ "French Guiana", "Franz??sisch Guyana", "Guayana Francesa", "????????????????????????", "Frans-Guyana" ]
    , worldRegion = WorldRegion.Amer
    }


{-| French Polynesia
-}
countryPF : Country
countryPF =
    { addressFormat = ""
    , alpha2 = "PF"
    , alpha3 = "PYF"
    , continent = Continent.Australia
    , countryCode = "689"
    , currencyCode = "XPF"
    , emoji = "????????"
    , gec = "FP"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Polyn??sie fran??aise" ]
    , name = "French Polynesia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6 ]
    , nationalPrefix = "None"
    , nationality = "French Polynesian"
    , number = "258"
    , postalCode = True
    , postalCodeFormat = "987\\d{2}"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryPFSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "PF"
    , unofficialNames = [ "French Polynesia", "Franz??sisch-Polynesien", "Polyn??sie Fran??aise", "Polinesia Francesa", "??????????????????????????????", "Frans-Polynesi??" ]
    , worldRegion = WorldRegion.Apac
    }


{-| French Southern Territories
-}
countryTF : Country
countryTF =
    { addressFormat = ""
    , alpha2 = "TF"
    , alpha3 = "ATF"
    , continent = Continent.Antarctica
    , countryCode = "262"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "FS"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Terres australes fran??aises" ]
    , name = "French Southern Territories"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "French"
    , number = "260"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.None
    , startOfWeek = Time.Mon
    , subdivisions = countryTFSubdivisions
    , subregion = Subregion.None
    , unLocode = "TF"
    , unofficialNames = [ "French Southern Territories", "Franz??sische S??d- und Antarktisgebiete", "Terres Australes Fran??aises", "Territorios Franceses del Sur", "????????????????????????????????????", "Franse Gebieden in de zuidelijke Indische Oceaan", "French Southern and Antarctic Lands" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Gabon
-}
countryGA : Country
countryGA =
    { addressFormat = ""
    , alpha2 = "GA"
    , alpha3 = "GAB"
    , continent = Continent.Africa
    , countryCode = "241"
    , currencyCode = "XAF"
    , emoji = "????????"
    , gec = "GB"
    , internationalPrefix = "00"
    , ioc = "GAB"
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Gabon" ]
    , name = "Gabon"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6, 7, 8 ]
    , nationalPrefix = "None"
    , nationality = "Gabonese"
    , number = "266"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryGASubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "GA"
    , unofficialNames = [ "Gabon", "Gabun", "Gab??n", "?????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Gambia
-}
countryGM : Country
countryGM =
    { addressFormat = ""
    , alpha2 = "GM"
    , alpha3 = "GMB"
    , continent = Continent.Africa
    , countryCode = "220"
    , currencyCode = "GMD"
    , emoji = "????????"
    , gec = "GA"
    , internationalPrefix = "00"
    , ioc = "GAM"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Gambia" ]
    , name = "Gambia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Gambian"
    , number = "270"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryGMSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "GM"
    , unofficialNames = [ "Gambia", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Georgia
-}
countryGE : Country
countryGE =
    { addressFormat = ""
    , alpha2 = "GE"
    , alpha3 = "GEO"
    , continent = Continent.Asia
    , countryCode = "995"
    , currencyCode = "GEL"
    , emoji = "????????"
    , gec = "GG"
    , internationalPrefix = "810"
    , ioc = "GEO"
    , languagesOfficial = [ "ka" ]
    , languagesSpoken = [ "ka" ]
    , localNames = [ "??????????????????????????????" ]
    , name = "Georgia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "8*"
    , nationality = "Georgian"
    , number = "268"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryGESubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "GE"
    , unofficialNames = [ "Georgia", "Georgien", "G??orgie", "????????????", "Georgi??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Germany
-}
countryDE : Country
countryDE =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "DE"
    , alpha3 = "DEU"
    , continent = Continent.Europe
    , countryCode = "49"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "GM"
    , internationalPrefix = "00"
    , ioc = "GER"
    , languagesOfficial = [ "de" ]
    , languagesSpoken = [ "de" ]
    , localNames = [ "Deutschland" ]
    , name = "Germany"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2, 3, 4, 5 ]
    , nationalNumberLengths = [ 6, 7, 8, 9, 10, 11 ]
    , nationalPrefix = "0"
    , nationality = "German"
    , number = "276"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryDESubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "DE"
    , unofficialNames = [ "Germany", "Deutschland", "Allemagne", "Alemania", "?????????", "Duitsland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Ghana
-}
countryGH : Country
countryGH =
    { addressFormat = ""
    , alpha2 = "GH"
    , alpha3 = "GHA"
    , continent = Continent.Africa
    , countryCode = "233"
    , currencyCode = "GHS"
    , emoji = "????????"
    , gec = "GH"
    , internationalPrefix = "00"
    , ioc = "GHA"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Ghana" ]
    , name = "Ghana"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 5, 6, 7, 8 ]
    , nationalPrefix = "None"
    , nationality = "Ghanaian"
    , number = "288"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryGHSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "GH"
    , unofficialNames = [ "Ghana", "?????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Gibraltar
-}
countryGI : Country
countryGI =
    { addressFormat = ""
    , alpha2 = "GI"
    , alpha3 = "GIB"
    , continent = Continent.Europe
    , countryCode = "350"
    , currencyCode = "GIP"
    , emoji = "????????"
    , gec = "GI"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Gibraltar" ]
    , name = "Gibraltar"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Gibraltar"
    , number = "292"
    , postalCode = True
    , postalCodeFormat = "GX11 1AA"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.SouthernEurope
    , unLocode = "GI"
    , unofficialNames = [ "Gibraltar", "??????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Greece
-}
countryGR : Country
countryGR =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "GR"
    , alpha3 = "GRC"
    , continent = Continent.Europe
    , countryCode = "30"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "GR"
    , internationalPrefix = "00"
    , ioc = "GRE"
    , languagesOfficial = [ "el" ]
    , languagesSpoken = [ "el" ]
    , localNames = [ "????????????" ]
    , name = "Greece"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "None"
    , nationality = "Greek"
    , number = "300"
    , postalCode = True
    , postalCodeFormat = "\\d{3} ?\\d{2}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryGRSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "GR"
    , unofficialNames = [ "Greece", "Griechenland", "Gr??ce", "Grecia", "????????????", "Griekenland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Greenland
-}
countryGL : Country
countryGL =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "GL"
    , alpha3 = "GRL"
    , continent = Continent.NorthAmerica
    , countryCode = "299"
    , currencyCode = "DKK"
    , emoji = "????????"
    , gec = "GL"
    , internationalPrefix = "009"
    , ioc = ""
    , languagesOfficial = [ "kl" ]
    , languagesSpoken = [ "kl" ]
    , localNames = [ "Kalaallit Nunaat" ]
    , name = "Greenland"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6 ]
    , nationalPrefix = "None"
    , nationality = "Greenlandic"
    , number = "304"
    , postalCode = True
    , postalCodeFormat = "39\\d{2}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryGLSubdivisions
    , subregion = Subregion.NorthernAmerica
    , unLocode = "GL"
    , unofficialNames = [ "Greenland", "Gr??nland", "Groenland", "Groenlandia", "?????????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Grenada
-}
countryGD : Country
countryGD =
    { addressFormat = ""
    , alpha2 = "GD"
    , alpha3 = "GRD"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "????????"
    , gec = "GJ"
    , internationalPrefix = "011"
    , ioc = "GRN"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Grenada" ]
    , name = "Grenada"
    , nanpPrefix = "1473"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Grenadian"
    , number = "308"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryGDSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "GD"
    , unofficialNames = [ "Grenada", "????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Guadeloupe
-}
countryGP : Country
countryGP =
    { addressFormat = ""
    , alpha2 = "GP"
    , alpha3 = "GLP"
    , continent = Continent.NorthAmerica
    , countryCode = "590"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "GP"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Guadeloupe" ]
    , name = "Guadeloupe"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "None"
    , nationality = "Guadeloupian"
    , number = "312"
    , postalCode = True
    , postalCodeFormat = "9[78][01]\\d{2}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryGPSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "GP"
    , unofficialNames = [ "Guadeloupe", "Guadalupe", "??????????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Guam
-}
countryGU : Country
countryGU =
    { addressFormat = ""
    , alpha2 = "GU"
    , alpha3 = "GUM"
    , continent = Continent.Australia
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "GQ"
    , internationalPrefix = "011"
    , ioc = "GUM"
    , languagesOfficial = [ "en", "ch", "es" ]
    , languagesSpoken = [ "en", "ch", "es" ]
    , localNames = [ "Guam", "Gu??h??n", "Guam" ]
    , name = "Guam"
    , nanpPrefix = "1671"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Guamanian"
    , number = "316"
    , postalCode = True
    , postalCodeFormat = "(969(?:[12]\\d|3[12]))(?:[ \\-](\\d{4}))?"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryGUSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "GU"
    , unofficialNames = [ "Guam", "?????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Guatemala
-}
countryGT : Country
countryGT =
    { addressFormat = ""
    , alpha2 = "GT"
    , alpha3 = "GTM"
    , continent = Continent.NorthAmerica
    , countryCode = "502"
    , currencyCode = "GTQ"
    , emoji = "????????"
    , gec = "GT"
    , internationalPrefix = "00"
    , ioc = "GUA"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Guatemala" ]
    , name = "Guatemala"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Guatemalan"
    , number = "320"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryGTSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "GT"
    , unofficialNames = [ "Guatemala", "???????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Guernsey
-}
countryGG : Country
countryGG =
    { addressFormat = ""
    , alpha2 = "GG"
    , alpha3 = "GGY"
    , continent = Continent.Europe
    , countryCode = "44"
    , currencyCode = "GBP"
    , emoji = "????????"
    , gec = "GK"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "en", "fr" ]
    , languagesSpoken = [ "en", "fr" ]
    , localNames = [ "Guernsey", "Guernesey" ]
    , name = "Guernsey"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "Channel Islander"
    , number = "831"
    , postalCode = True
    , postalCodeFormat = "GY\\d[\\dA-Z]? ?\\d[ABD-HJLN-UW-Z]{2}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryGGSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "GG"
    , unofficialNames = [ "Guernsey and Alderney", "Guernsey und Alderney", "Guernsey et Alderney", "Guernsey y Alderney", "???????????????", "Guernsey" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Guinea
-}
countryGN : Country
countryGN =
    { addressFormat = ""
    , alpha2 = "GN"
    , alpha3 = "GIN"
    , continent = Continent.Africa
    , countryCode = "224"
    , currencyCode = "GNF"
    , emoji = "????????"
    , gec = "GV"
    , internationalPrefix = "00"
    , ioc = "GUI"
    , languagesOfficial = [ "fr", "ff" ]
    , languagesSpoken = [ "fr", "ff" ]
    , localNames = [ "Guin??e", "Gine" ]
    , name = "Guinea"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Guinean"
    , number = "324"
    , postalCode = True
    , postalCodeFormat = "\\d{3}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryGNSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "GN"
    , unofficialNames = [ "Guinea", "Guin??e", "?????????", "Guinee" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Guinea-Bissau
-}
countryGW : Country
countryGW =
    { addressFormat = ""
    , alpha2 = "GW"
    , alpha3 = "GNB"
    , continent = Continent.Africa
    , countryCode = "245"
    , currencyCode = "XOF"
    , emoji = "????????"
    , gec = "PU"
    , internationalPrefix = "00"
    , ioc = "GBS"
    , languagesOfficial = [ "pt" ]
    , languagesSpoken = [ "pt" ]
    , localNames = [ "Guin??-Biss??u" ]
    , name = "Guinea-Bissau"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Guinea-Bissauan"
    , number = "624"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryGWSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "GW"
    , unofficialNames = [ "Guinea-Bissau", "Guin??e-Bissau", "??????????????????", "Guinee-Bissau", "Guinea Bissau" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Guyana
-}
countryGY : Country
countryGY =
    { addressFormat = ""
    , alpha2 = "GY"
    , alpha3 = "GUY"
    , continent = Continent.SouthAmerica
    , countryCode = "592"
    , currencyCode = "GYD"
    , emoji = "????????"
    , gec = "GY"
    , internationalPrefix = "00"
    , ioc = "GUY"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Guyana" ]
    , name = "Guyana"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6, 7 ]
    , nationalPrefix = "None"
    , nationality = "Guyanese"
    , number = "328"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryGYSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "GY"
    , unofficialNames = [ "Guyana", "????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Haiti
-}
countryHT : Country
countryHT =
    { addressFormat = ""
    , alpha2 = "HT"
    , alpha3 = "HTI"
    , continent = Continent.NorthAmerica
    , countryCode = "509"
    , currencyCode = "HTG"
    , emoji = "????????"
    , gec = "HA"
    , internationalPrefix = "00"
    , ioc = "HAI"
    , languagesOfficial = [ "fr", "ht" ]
    , languagesSpoken = [ "fr", "ht" ]
    , localNames = [ "Ha??ti", "Ayiti" ]
    , name = "Haiti"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Haitian"
    , number = "332"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryHTSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "HT"
    , unofficialNames = [ "Haiti", "?????????", "Ha??ti" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Heard Island and McDonald Islands
-}
countryHM : Country
countryHM =
    { addressFormat = ""
    , alpha2 = "HM"
    , alpha3 = "HMD"
    , continent = Continent.Antarctica
    , countryCode = "672"
    , currencyCode = "AUD"
    , emoji = "????????"
    , gec = "HM"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Heard Island and McDonald Islands" ]
    , name = "Heard Island and McDonald Islands"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "Heard and McDonald Islander"
    , number = "334"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.None
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.None
    , unLocode = "HM"
    , unofficialNames = [ "Heard and McDonald Islands", "Heard und die McDonaldinseln", "???????????????????????????????????????", "Heard- en McDonaldeilanden", "Heard Island and McDonald Islands" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Holy See
-}
countryVA : Country
countryVA =
    { addressFormat = ""
    , alpha2 = "VA"
    , alpha3 = "VAT"
    , continent = Continent.Europe
    , countryCode = "39"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "VT"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "it", "la" ]
    , languagesSpoken = [ "it", "la" ]
    , localNames = [ "Santa Sede (Stato della Citt?? del Vaticano)" ]
    , name = "Holy See"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "None"
    , nationality = "Italian"
    , number = "336"
    , postalCode = True
    , postalCodeFormat = "00120"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.SouthernEurope
    , unLocode = "VA"
    , unofficialNames = [ "Vatican City", "Vatikan", "Cit?? du Vatican", "Ciudad del Vaticano", "??????????????????", "Vaticaanstad", "Vatican City State (Holy See)" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Honduras
-}
countryHN : Country
countryHN =
    { addressFormat = ""
    , alpha2 = "HN"
    , alpha3 = "HND"
    , continent = Continent.NorthAmerica
    , countryCode = "504"
    , currencyCode = "HNL"
    , emoji = "????????"
    , gec = "HO"
    , internationalPrefix = "00"
    , ioc = "HON"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Honduras" ]
    , name = "Honduras"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8 ]
    , nationalPrefix = "None"
    , nationality = "Honduran"
    , number = "340"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryHNSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "HN"
    , unofficialNames = [ "Honduras", "??????????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Hong Kong
-}
countryHK : Country
countryHK =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}} {{region_short}}
{{country}}
"""
    , alpha2 = "HK"
    , alpha3 = "HKG"
    , continent = Continent.Asia
    , countryCode = "852"
    , currencyCode = "HKD"
    , emoji = "????????"
    , gec = "HK"
    , internationalPrefix = "001"
    , ioc = "HKG"
    , languagesOfficial = [ "en", "zh" ]
    , languagesSpoken = [ "en", "zh" ]
    , localNames = [ "Hong Kong", "??????" ]
    , name = "Hong Kong"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Hong Kongese"
    , number = "344"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryHKSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "HK"
    , unofficialNames = [ "Hong Kong", "??????", "Hongkong" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Hungary
-}
countryHU : Country
countryHU =
    { addressFormat = """{{recipient}}
{{city}}
{{street}}
{{postalcode}}
{{country}}
"""
    , alpha2 = "HU"
    , alpha3 = "HUN"
    , continent = Continent.Europe
    , countryCode = "36"
    , currencyCode = "HUF"
    , emoji = "????????"
    , gec = "HU"
    , internationalPrefix = "00"
    , ioc = "HUN"
    , languagesOfficial = [ "hu" ]
    , languagesSpoken = [ "hu" ]
    , localNames = [ "Magyarorsz??g" ]
    , name = "Hungary"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "06"
    , nationality = "Hungarian"
    , number = "348"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryHUSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "HU"
    , unofficialNames = [ "Hungary", "Ungarn", "Hongrie", "Hungr??a", "???????????????", "Hongarije" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Iceland
-}
countryIS : Country
countryIS =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "IS"
    , alpha3 = "ISL"
    , continent = Continent.Europe
    , countryCode = "354"
    , currencyCode = "ISK"
    , emoji = "????????"
    , gec = "IC"
    , internationalPrefix = "00"
    , ioc = "ISL"
    , languagesOfficial = [ "is" ]
    , languagesSpoken = [ "is" ]
    , localNames = [ "??sland" ]
    , name = "Iceland"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Icelander"
    , number = "352"
    , postalCode = True
    , postalCodeFormat = "\\d{3}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryISSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "IS"
    , unofficialNames = [ "Iceland", "Island", "Islande", "Islandia", "??????????????????", "IJsland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| India
-}
countryIN : Country
countryIN =
    { addressFormat = """{{recipient}}
{{street}}
{{region}}
{{city}} {{postalcode}}
{{country}}
"""
    , alpha2 = "IN"
    , alpha3 = "IND"
    , continent = Continent.Asia
    , countryCode = "91"
    , currencyCode = "INR"
    , emoji = "????????"
    , gec = "IN"
    , internationalPrefix = "00"
    , ioc = "IND"
    , languagesOfficial = [ "hi", "en" ]
    , languagesSpoken = [ "hi", "en" ]
    , localNames = [ "????????????", "India" ]
    , name = "India"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "0"
    , nationality = "Indian"
    , number = "356"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryINSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "IN"
    , unofficialNames = [ "India", "Indien", "Inde", "?????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Indonesia
-}
countryID : Country
countryID =
    { addressFormat = """{{recipient}}
{{street}}
{{city}}
{{region}} {{postalcode}}
{{country}}
"""
    , alpha2 = "ID"
    , alpha3 = "IDN"
    , continent = Continent.Asia
    , countryCode = "62"
    , currencyCode = "IDR"
    , emoji = "????????"
    , gec = "ID"
    , internationalPrefix = "001"
    , ioc = "INA"
    , languagesOfficial = [ "id" ]
    , languagesSpoken = [ "id" ]
    , localNames = [ "Indonesia" ]
    , name = "Indonesia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9, 10, 11 ]
    , nationalPrefix = "0"
    , nationality = "Indonesian"
    , number = "360"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryIDSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "ID"
    , unofficialNames = [ "Indonesia", "Indonesien", "Indon??sie", "??????????????????", "Indonesi??" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Iran (Islamic Republic of)
-}
countryIR : Country
countryIR =
    { addressFormat = ""
    , alpha2 = "IR"
    , alpha3 = "IRN"
    , continent = Continent.Asia
    , countryCode = "98"
    , currencyCode = "IRR"
    , emoji = "????????"
    , gec = "IR"
    , internationalPrefix = "00"
    , ioc = "IRI"
    , languagesOfficial = [ "fa" ]
    , languagesSpoken = [ "fa" ]
    , localNames = [ "??????????" ]
    , name = "Iran (Islamic Republic of)"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "0"
    , nationality = "Iranian"
    , number = "364"
    , postalCode = True
    , postalCodeFormat = "\\d{5}-?\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Sat
    , subdivisions = countryIRSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "IR"
    , unofficialNames = [ "Iran", "Ir??n", "Iran (Islamic Republic Of)", "?????????????????????????????????", "Islamic Republic of Iran" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Iraq
-}
countryIQ : Country
countryIQ =
    { addressFormat = ""
    , alpha2 = "IQ"
    , alpha3 = "IRQ"
    , continent = Continent.Asia
    , countryCode = "964"
    , currencyCode = "IQD"
    , emoji = "????????"
    , gec = "IZ"
    , internationalPrefix = "00"
    , ioc = "IRQ"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "????????????" ]
    , name = "Iraq"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9, 10 ]
    , nationalPrefix = "None"
    , nationality = "Iraqi"
    , number = "368"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryIQSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "IQ"
    , unofficialNames = [ "Iraq", "????????????", "Irak", "?????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Ireland
-}
countryIE : Country
countryIE =
    { addressFormat = """{{recipient}}
{{street}}
{{city}} {{region_short}} {{postalcode}}
{{country}}
"""
    , alpha2 = "IE"
    , alpha3 = "IRL"
    , continent = Continent.Europe
    , countryCode = "353"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "EI"
    , internationalPrefix = "00"
    , ioc = "IRL"
    , languagesOfficial = [ "en", "ga" ]
    , languagesSpoken = [ "en", "ga" ]
    , localNames = [ "Ireland", "??ire" ]
    , name = "Ireland"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Irish"
    , number = "372"
    , postalCode = True
    , postalCodeFormat = "[\\dA-Z]{3} ?[\\dA-Z]{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryIESubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "IE"
    , unofficialNames = [ "Ireland", "Irland", "Irlande", "Irlanda", "??????????????????", "Ierland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Isle of Man
-}
countryIM : Country
countryIM =
    { addressFormat = ""
    , alpha2 = "IM"
    , alpha3 = "IMN"
    , continent = Continent.Europe
    , countryCode = "44"
    , currencyCode = "IMP"
    , emoji = "????????"
    , gec = "IM"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "en", "gv" ]
    , languagesSpoken = [ "en", "gv" ]
    , localNames = [ "Isle of Man", "Mannin" ]
    , name = "Isle of Man"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "Manx"
    , number = "833"
    , postalCode = True
    , postalCodeFormat = "IM\\d[\\dA-Z]? ?\\d[ABD-HJLN-UW-Z]{2}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryIMSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "IM"
    , unofficialNames = [ "Isle of Man", "Insel Man", "??le de Man", "Isla de Man", "?????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Israel
-}
countryIL : Country
countryIL =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "IL"
    , alpha3 = "ISR"
    , continent = Continent.Asia
    , countryCode = "972"
    , currencyCode = "ILS"
    , emoji = "????????"
    , gec = "IS"
    , internationalPrefix = "00"
    , ioc = "ISR"
    , languagesOfficial = [ "he", "ar" ]
    , languagesSpoken = [ "he", "ar" ]
    , localNames = [ "??????????", "??????????????" ]
    , name = "Israel"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Israeli"
    , number = "376"
    , postalCode = True
    , postalCodeFormat = "\\d{5}(?:\\d{2})?"
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryILSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "IL"
    , unofficialNames = [ "Israel", "Isra??l", "???????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Italy
-}
countryIT : Country
countryIT =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}} {{region_short}}
{{country}}
"""
    , alpha2 = "IT"
    , alpha3 = "ITA"
    , continent = Continent.Europe
    , countryCode = "39"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "IT"
    , internationalPrefix = "00"
    , ioc = "ITA"
    , languagesOfficial = [ "it" ]
    , languagesSpoken = [ "it" ]
    , localNames = [ "Italia" ]
    , name = "Italy"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 9, 11 ]
    , nationalPrefix = "None"
    , nationality = "Italian"
    , number = "380"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryITSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "IT"
    , unofficialNames = [ "Italy", "Italien", "Italie", "Italia", "????????????", "Itali??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Jamaica
-}
countryJM : Country
countryJM =
    { addressFormat = ""
    , alpha2 = "JM"
    , alpha3 = "JAM"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "JMD"
    , emoji = "????????"
    , gec = "JM"
    , internationalPrefix = "011"
    , ioc = "JAM"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Jamaica" ]
    , name = "Jamaica"
    , nanpPrefix = "1876"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Jamaican"
    , number = "388"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryJMSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "JM"
    , unofficialNames = [ "Jamaica", "Jamaika", "Jama??que", "???????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Japan
-}
countryJP : Country
countryJP =
    { addressFormat = """???{{postalcode}}
{{region_short}}{{city}}{{street}}
{{recipient}}
{{country}}
"""
    , alpha2 = "JP"
    , alpha3 = "JPN"
    , continent = Continent.Asia
    , countryCode = "81"
    , currencyCode = "JPY"
    , emoji = "????????"
    , gec = "JA"
    , internationalPrefix = "010"
    , ioc = "JPN"
    , languagesOfficial = [ "ja" ]
    , languagesSpoken = [ "ja" ]
    , localNames = [ "??????" ]
    , name = "Japan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9, 10 ]
    , nationalPrefix = "0"
    , nationality = "Japanese"
    , number = "392"
    , postalCode = True
    , postalCodeFormat = "\\d{3}-?\\d{4}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryJPSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "JP"
    , unofficialNames = [ "Japan", "Japon", "Jap??n", "??????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Jersey
-}
countryJE : Country
countryJE =
    { addressFormat = ""
    , alpha2 = "JE"
    , alpha3 = "JEY"
    , continent = Continent.Europe
    , countryCode = "44"
    , currencyCode = "JEP"
    , emoji = "????????"
    , gec = "JE"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "en", "fr" ]
    , languagesSpoken = [ "en", "fr" ]
    , localNames = [ "Jersey", "Jersey" ]
    , name = "Jersey"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "Channel Islander"
    , number = "832"
    , postalCode = True
    , postalCodeFormat = "JE\\d[\\dA-Z]? ?\\d[ABD-HJLN-UW-Z]{2}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryJESubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "JE"
    , unofficialNames = [ "Jersey", "???????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Jordan
-}
countryJO : Country
countryJO =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "JO"
    , alpha3 = "JOR"
    , continent = Continent.Asia
    , countryCode = "962"
    , currencyCode = "JOD"
    , emoji = "????????"
    , gec = "JO"
    , internationalPrefix = "00"
    , ioc = "JOR"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "????????????" ]
    , name = "Jordan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Jordanian"
    , number = "400"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryJOSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "JO"
    , unofficialNames = [ "Jordan", "????????????", "Jordanien", "Jordanie", "Jordania", "????????????", "Jordani??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Kazakhstan
-}
countryKZ : Country
countryKZ =
    { addressFormat = ""
    , alpha2 = "KZ"
    , alpha3 = "KAZ"
    , continent = Continent.Asia
    , countryCode = "7"
    , currencyCode = "KZT"
    , emoji = "????????"
    , gec = "KZ"
    , internationalPrefix = "810"
    , ioc = "KAZ"
    , languagesOfficial = [ "kk", "ru" ]
    , languagesSpoken = [ "kk", "ru" ]
    , localNames = [ "??????????????????", "??????????????????" ]
    , name = "Kazakhstan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "8"
    , nationality = "Kazakhstani"
    , number = "398"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryKZSubdivisions
    , subregion = Subregion.CentralAsia
    , unLocode = "KZ"
    , unofficialNames = [ "Kazakhstan", "Kasachstan", "Kazajist??n", "??????????????????", "Kazachstan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Kenya
-}
countryKE : Country
countryKE =
    { addressFormat = ""
    , alpha2 = "KE"
    , alpha3 = "KEN"
    , continent = Continent.Africa
    , countryCode = "254"
    , currencyCode = "KES"
    , emoji = "????????"
    , gec = "KE"
    , internationalPrefix = "000"
    , ioc = "KEN"
    , languagesOfficial = [ "en", "sw" ]
    , languagesSpoken = [ "en", "sw" ]
    , localNames = [ "Kenya", "Kenya" ]
    , name = "Kenya"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Kenyan"
    , number = "404"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryKESubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "KE"
    , unofficialNames = [ "Kenya", "Kenia", "?????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Kiribati
-}
countryKI : Country
countryKI =
    { addressFormat = ""
    , alpha2 = "KI"
    , alpha3 = "KIR"
    , continent = Continent.Australia
    , countryCode = "686"
    , currencyCode = "AUD"
    , emoji = "????????"
    , gec = "KR"
    , internationalPrefix = "00"
    , ioc = "KIR"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Kiribati" ]
    , name = "Kiribati"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 5 ]
    , nationalPrefix = "None"
    , nationality = "I-Kiribati"
    , number = "296"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryKISubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "KI"
    , unofficialNames = [ "Kiribati", "????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Korea (Democratic People's Republic of)
-}
countryKP : Country
countryKP =
    { addressFormat = ""
    , alpha2 = "KP"
    , alpha3 = "PRK"
    , continent = Continent.Asia
    , countryCode = "850"
    , currencyCode = "KPW"
    , emoji = "????????"
    , gec = "KN"
    , internationalPrefix = "00"
    , ioc = "PRK"
    , languagesOfficial = [ "ko" ]
    , languagesSpoken = [ "ko" ]
    , localNames = [ "?????????????????????????????????" ]
    , name = "Korea (Democratic People's Republic of)"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "North Korean"
    , number = "408"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryKPSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "KP"
    , unofficialNames = [ "Korea (North)", "North Korea", "Nordkorea", "Cor??e du Nord", "Corea del Norte", "?????????????????????????????????", "Noord-Korea", "Korea Democratic People's Republic", "Korea (Democratic People s Republic of)" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Korea (Republic of)
-}
countryKR : Country
countryKR =
    { addressFormat = """{{recipient}}
{{street}}
{{city}} {{region_short}}
{{postalcode}}
{{country}}
"""
    , alpha2 = "KR"
    , alpha3 = "KOR"
    , continent = Continent.Asia
    , countryCode = "82"
    , currencyCode = "KRW"
    , emoji = "????????"
    , gec = "KS"
    , internationalPrefix = "001"
    , ioc = "KOR"
    , languagesOfficial = [ "ko" ]
    , languagesSpoken = [ "ko" ]
    , localNames = [ "????????????" ]
    , name = "Korea (Republic of)"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "South Korean"
    , number = "410"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryKRSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "KR"
    , unofficialNames = [ "South Korea", "Korea (South)", "S??dkorea", "Cor??e du Sud", "Corea del Sur", "????????????", "Zuid-Korea", "Korea (Republic of)" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Kuwait
-}
countryKW : Country
countryKW =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{region}}
{{country}}
"""
    , alpha2 = "KW"
    , alpha3 = "KWT"
    , continent = Continent.Asia
    , countryCode = "965"
    , currencyCode = "KWD"
    , emoji = "????????"
    , gec = "KU"
    , internationalPrefix = "00"
    , ioc = "KUW"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "????????????" ]
    , name = "Kuwait"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Kuwaiti"
    , number = "414"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryKWSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "KW"
    , unofficialNames = [ "Kuwait", "????????????", "Kowe??t", "???????????????", "Koeweit" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Kyrgyzstan
-}
countryKG : Country
countryKG =
    { addressFormat = ""
    , alpha2 = "KG"
    , alpha3 = "KGZ"
    , continent = Continent.Asia
    , countryCode = "996"
    , currencyCode = "KGS"
    , emoji = "????????"
    , gec = "KG"
    , internationalPrefix = "00"
    , ioc = "KGZ"
    , languagesOfficial = [ "ky", "ru" ]
    , languagesSpoken = [ "ky", "ru" ]
    , localNames = [ "????????????????????", "????????????????" ]
    , name = "Kyrgyzstan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Kirghiz"
    , number = "417"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryKGSubdivisions
    , subregion = Subregion.CentralAsia
    , unLocode = "KG"
    , unofficialNames = [ "Kyrgyzstan", "Kirgisistan", "Kirghizistan", "Kirguizist??n", "????????????", "Kirgizi??", "Kyrgzstan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Lao People's Democratic Republic
-}
countryLA : Country
countryLA =
    { addressFormat = ""
    , alpha2 = "LA"
    , alpha3 = "LAO"
    , continent = Continent.Asia
    , countryCode = "856"
    , currencyCode = "LAK"
    , emoji = "????????"
    , gec = "LA"
    , internationalPrefix = "00"
    , ioc = "LAO"
    , languagesOfficial = [ "lo" ]
    , languagesSpoken = [ "lo" ]
    , localNames = [ "Lao People's Democratic Republic" ]
    , name = "Lao People's Democratic Republic"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Laotian"
    , number = "418"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryLASubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "LA"
    , unofficialNames = [ "Laos", "??????????????????????????????", "Lao People s Democratic Republic" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Latvia
-}
countryLV : Country
countryLV =
    { addressFormat = """{{recipient}}
{{street}}
{{region}}
{{city}} {{postalcode}}
{{country}}
"""
    , alpha2 = "LV"
    , alpha3 = "LVA"
    , continent = Continent.Europe
    , countryCode = "371"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "LG"
    , internationalPrefix = "00"
    , ioc = "LAT"
    , languagesOfficial = [ "lv" ]
    , languagesSpoken = [ "lv" ]
    , localNames = [ "Latvija" ]
    , name = "Latvia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "8"
    , nationality = "Latvian"
    , number = "428"
    , postalCode = True
    , postalCodeFormat = "LV-\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryLVSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "LV"
    , unofficialNames = [ "Latvia", "Lettland", "Lettonie", "Letonia", "????????????", "Letland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Lebanon
-}
countryLB : Country
countryLB =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "LB"
    , alpha3 = "LBN"
    , continent = Continent.Asia
    , countryCode = "961"
    , currencyCode = "LBP"
    , emoji = "????????"
    , gec = "LE"
    , internationalPrefix = "00"
    , ioc = "LIB"
    , languagesOfficial = [ "ar", "fr" ]
    , languagesSpoken = [ "ar", "fr" ]
    , localNames = [ "??????????", "Liban" ]
    , name = "Lebanon"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Lebanese"
    , number = "422"
    , postalCode = True
    , postalCodeFormat = "(?:\\d{4})(?: ?(?:\\d{4}))?"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryLBSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "LB"
    , unofficialNames = [ "Lebanon", "??????????", "Libanon", "Liban", "L??bano", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Lesotho
-}
countryLS : Country
countryLS =
    { addressFormat = ""
    , alpha2 = "LS"
    , alpha3 = "LSO"
    , continent = Continent.Africa
    , countryCode = "266"
    , currencyCode = "LSL"
    , emoji = "????????"
    , gec = "LT"
    , internationalPrefix = "00"
    , ioc = "LES"
    , languagesOfficial = [ "en", "st" ]
    , languagesSpoken = [ "en", "st" ]
    , localNames = [ "Lesotho" ]
    , name = "Lesotho"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Mosotho"
    , number = "426"
    , postalCode = True
    , postalCodeFormat = "\\d{3}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryLSSubdivisions
    , subregion = Subregion.SouthernAfrica
    , unLocode = "LS"
    , unofficialNames = [ "Lesotho", "?????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Liberia
-}
countryLR : Country
countryLR =
    { addressFormat = ""
    , alpha2 = "LR"
    , alpha3 = "LBR"
    , continent = Continent.Africa
    , countryCode = "231"
    , currencyCode = "LRD"
    , emoji = "????????"
    , gec = "LI"
    , internationalPrefix = "00"
    , ioc = "LBR"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Liberia" ]
    , name = "Liberia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6, 7, 8 ]
    , nationalPrefix = "22"
    , nationality = "Liberian"
    , number = "430"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryLRSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "LR"
    , unofficialNames = [ "Liberia", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Libya
-}
countryLY : Country
countryLY =
    { addressFormat = ""
    , alpha2 = "LY"
    , alpha3 = "LBY"
    , continent = Continent.Africa
    , countryCode = "218"
    , currencyCode = "LYD"
    , emoji = "????????"
    , gec = "LY"
    , internationalPrefix = "00"
    , ioc = "LBA"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "??????????" ]
    , name = "Libya"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Libyan"
    , number = "434"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Sun
    , subdivisions = countryLYSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "LY"
    , unofficialNames = [ "Libya", "??????????", "Libyen", "Libye", "Libia", "?????????", "Libi??", "Libyan Arab Jamahiriya" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Liechtenstein
-}
countryLI : Country
countryLI =
    { addressFormat = ""
    , alpha2 = "LI"
    , alpha3 = "LIE"
    , continent = Continent.Europe
    , countryCode = "423"
    , currencyCode = "CHF"
    , emoji = "????????"
    , gec = "LS"
    , internationalPrefix = "00"
    , ioc = "LIE"
    , languagesOfficial = [ "de" ]
    , languagesSpoken = [ "de" ]
    , localNames = [ "Liechtenstein" ]
    , name = "Liechtenstein"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Liechtensteiner"
    , number = "438"
    , postalCode = True
    , postalCodeFormat = "948[5-9]|949[0-8]"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryLISubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "LI"
    , unofficialNames = [ "Liechtenstein", "???????????????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Lithuania
-}
countryLT : Country
countryLT =
    { addressFormat = ""
    , alpha2 = "LT"
    , alpha3 = "LTU"
    , continent = Continent.Europe
    , countryCode = "370"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "LH"
    , internationalPrefix = "00"
    , ioc = "LTU"
    , languagesOfficial = [ "lt" ]
    , languagesSpoken = [ "lt" ]
    , localNames = [ "Lietuva" ]
    , name = "Lithuania"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "8"
    , nationality = "Lithuanian"
    , number = "440"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryLTSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "LT"
    , unofficialNames = [ "Lithuania", "Litauen", "Lituanie", "Lituania", "???????????????", "Litouwen", "??????????", "Lietuva" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Luxembourg
-}
countryLU : Country
countryLU =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "LU"
    , alpha3 = "LUX"
    , continent = Continent.Europe
    , countryCode = "352"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "LU"
    , internationalPrefix = "00"
    , ioc = "LUX"
    , languagesOfficial = [ "fr", "de", "lb" ]
    , languagesSpoken = [ "fr", "de", "lb" ]
    , localNames = [ "Luxembourg", "Luxemburg" ]
    , name = "Luxembourg"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "None"
    , nationality = "Luxembourger"
    , number = "442"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryLUSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "LU"
    , unofficialNames = [ "Luxembourg", "Luxemburg", "Luxemburgo", "?????????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Macao
-}
countryMO : Country
countryMO =
    { addressFormat = ""
    , alpha2 = "MO"
    , alpha3 = "MAC"
    , continent = Continent.Asia
    , countryCode = "853"
    , currencyCode = "MOP"
    , emoji = "????????"
    , gec = "MC"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "zh", "pt" ]
    , languagesSpoken = [ "zh", "pt" ]
    , localNames = [ "??????", "Macau" ]
    , name = "Macao"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Chinese"
    , number = "446"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryMOSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "MO"
    , unofficialNames = [ "Macao", "Macau", "?????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Madagascar
-}
countryMG : Country
countryMG =
    { addressFormat = ""
    , alpha2 = "MG"
    , alpha3 = "MDG"
    , continent = Continent.Africa
    , countryCode = "261"
    , currencyCode = "MGA"
    , emoji = "????????"
    , gec = "MA"
    , internationalPrefix = "00"
    , ioc = "MAD"
    , languagesOfficial = [ "fr", "mg" ]
    , languagesSpoken = [ "fr", "mg" ]
    , localNames = [ "Madagascar" ]
    , name = "Madagascar"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "None"
    , nationality = "Malagasy"
    , number = "450"
    , postalCode = True
    , postalCodeFormat = "\\d{3}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryMGSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "MG"
    , unofficialNames = [ "Madagascar", "Madagaskar", "the Republic of Madagascar", "??????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Malawi
-}
countryMW : Country
countryMW =
    { addressFormat = ""
    , alpha2 = "MW"
    , alpha3 = "MWI"
    , continent = Continent.Africa
    , countryCode = "265"
    , currencyCode = "MWK"
    , emoji = "????????"
    , gec = "MI"
    , internationalPrefix = "00"
    , ioc = "MAW"
    , languagesOfficial = [ "en", "ny" ]
    , languagesSpoken = [ "en", "ny" ]
    , localNames = [ "Malawi" ]
    , name = "Malawi"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Malawian"
    , number = "454"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryMWSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "MW"
    , unofficialNames = [ "Malawi", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Malaysia
-}
countryMY : Country
countryMY =
    { addressFormat = ""
    , alpha2 = "MY"
    , alpha3 = "MYS"
    , continent = Continent.Asia
    , countryCode = "60"
    , currencyCode = "MYR"
    , emoji = "????????"
    , gec = "MY"
    , internationalPrefix = "00"
    , ioc = "MAS"
    , languagesOfficial = [ "ms", "en" ]
    , languagesSpoken = [ "ms", "en" ]
    , localNames = [ "Malaysia", "Malaysia" ]
    , name = "Malaysia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9, 10 ]
    , nationalPrefix = "0"
    , nationality = "Malaysian"
    , number = "458"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryMYSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "MY"
    , unofficialNames = [ "Malaysia", "Malaisie", "Malasia", "???????????????", "Maleisi??" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Maldives
-}
countryMV : Country
countryMV =
    { addressFormat = ""
    , alpha2 = "MV"
    , alpha3 = "MDV"
    , continent = Continent.Asia
    , countryCode = "960"
    , currencyCode = "MVR"
    , emoji = "????????"
    , gec = "MV"
    , internationalPrefix = "00"
    , ioc = "MDV"
    , languagesOfficial = [ "dv" ]
    , languagesSpoken = [ "dv" ]
    , localNames = [ "????????????????????????" ]
    , name = "Maldives"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Maldivan"
    , number = "462"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryMVSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "MV"
    , unofficialNames = [ "Maldives", "Malediven", "Maldivas", "???????????????", "Maldiven" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Mali
-}
countryML : Country
countryML =
    { addressFormat = ""
    , alpha2 = "ML"
    , alpha3 = "MLI"
    , continent = Continent.Africa
    , countryCode = "223"
    , currencyCode = "XOF"
    , emoji = "????????"
    , gec = "ML"
    , internationalPrefix = "00"
    , ioc = "MLI"
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Mali" ]
    , name = "Mali"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Malian"
    , number = "466"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryMLSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "ML"
    , unofficialNames = [ "Mali", "??????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Malta
-}
countryMT : Country
countryMT =
    { addressFormat = ""
    , alpha2 = "MT"
    , alpha3 = "MLT"
    , continent = Continent.Europe
    , countryCode = "356"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "MT"
    , internationalPrefix = "00"
    , ioc = "MLT"
    , languagesOfficial = [ "mt", "en" ]
    , languagesSpoken = [ "mt", "en" ]
    , localNames = [ "Malta", "Malta" ]
    , name = "Malta"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "21"
    , nationality = "Maltese"
    , number = "470"
    , postalCode = True
    , postalCodeFormat = "[A-Z]{3} ?\\d{2,4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryMTSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "MT"
    , unofficialNames = [ "Malta", "Malte", "?????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Marshall Islands
-}
countryMH : Country
countryMH =
    { addressFormat = ""
    , alpha2 = "MH"
    , alpha3 = "MHL"
    , continent = Continent.Australia
    , countryCode = "692"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "RM"
    , internationalPrefix = "00"
    , ioc = "MHL"
    , languagesOfficial = [ "en", "mh" ]
    , languagesSpoken = [ "en", "mh" ]
    , localNames = [ "Marshall Islands" ]
    , name = "Marshall Islands"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "1"
    , nationality = "Marshallese"
    , number = "584"
    , postalCode = True
    , postalCodeFormat = "(969[67]\\d)(?:[ \\-](\\d{4}))?"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryMHSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "MH"
    , unofficialNames = [ "Marshall Islands", "Marshallinseln", "??les Marshall", "Islas Marshall", "?????????????????????", "Marshalleilanden" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Martinique
-}
countryMQ : Country
countryMQ =
    { addressFormat = ""
    , alpha2 = "MQ"
    , alpha3 = "MTQ"
    , continent = Continent.NorthAmerica
    , countryCode = "596"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "MB"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Martinique" ]
    , name = "Martinique"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "None"
    , nationality = "French"
    , number = "474"
    , postalCode = True
    , postalCodeFormat = "9[78]2\\d{2}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryMQSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "MQ"
    , unofficialNames = [ "Martinique", "Martinica", "?????????????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Mauritania
-}
countryMR : Country
countryMR =
    { addressFormat = ""
    , alpha2 = "MR"
    , alpha3 = "MRT"
    , continent = Continent.Africa
    , countryCode = "222"
    , currencyCode = "MRU"
    , emoji = "????????"
    , gec = "MR"
    , internationalPrefix = "00"
    , ioc = "MTN"
    , languagesOfficial = [ "ar", "fr" ]
    , languagesSpoken = [ "ar", "fr" ]
    , localNames = [ "??????????????????", "Mauritanie" ]
    , name = "Mauritania"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "0"
    , nationality = "Mauritanian"
    , number = "478"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryMRSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "MR"
    , unofficialNames = [ "Mauritania", "??????????????????", "Mauretanien", "Mauritanie", "??????????????????", "Mauritani??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Mauritius
-}
countryMU : Country
countryMU =
    { addressFormat = ""
    , alpha2 = "MU"
    , alpha3 = "MUS"
    , continent = Continent.Africa
    , countryCode = "230"
    , currencyCode = "MUR"
    , emoji = "????????"
    , gec = "MP"
    , internationalPrefix = "020"
    , ioc = "MRI"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Mauritius" ]
    , name = "Mauritius"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Mauritian"
    , number = "480"
    , postalCode = True
    , postalCodeFormat = "\\d{3}(?:\\d{2}|[A-Z]{2}\\d{3})"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryMUSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "MU"
    , unofficialNames = [ "Mauritius", "??le Maurice", "Mauricio", "??????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Mayotte
-}
countryYT : Country
countryYT =
    { addressFormat = ""
    , alpha2 = "YT"
    , alpha3 = "MYT"
    , continent = Continent.Africa
    , countryCode = "262"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "MF"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Mayotte" ]
    , name = "Mayotte"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "French"
    , number = "175"
    , postalCode = True
    , postalCodeFormat = "976\\d{2}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryYTSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "YT"
    , unofficialNames = [ "Mayotte", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Mexico
-}
countryMX : Country
countryMX =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}} {{region_short}}
{{country}}
"""
    , alpha2 = "MX"
    , alpha3 = "MEX"
    , continent = Continent.NorthAmerica
    , countryCode = "52"
    , currencyCode = "MXN"
    , emoji = "????????"
    , gec = "MX"
    , internationalPrefix = "00"
    , ioc = "MEX"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "M??xico" ]
    , name = "Mexico"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9, 10 ]
    , nationalPrefix = "01"
    , nationality = "Mexican"
    , number = "484"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryMXSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "MX"
    , unofficialNames = [ "Mexico", "Mexiko", "Mexique", "M??xico", "????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Micronesia (Federated States of)
-}
countryFM : Country
countryFM =
    { addressFormat = ""
    , alpha2 = "FM"
    , alpha3 = "FSM"
    , continent = Continent.Australia
    , countryCode = "691"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "FM"
    , internationalPrefix = "011"
    , ioc = "FSM"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Micronesia, Federated States of" ]
    , name = "Micronesia (Federated States of)"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "1"
    , nationality = "Micronesian"
    , number = "583"
    , postalCode = True
    , postalCodeFormat = "(9694[1-4])(?:[ \\-](\\d{4}))?"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryFMSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "FM"
    , unofficialNames = [ "Micronesia", "Mikronesien", "Micron??sie", "????????????????????????", "Micronesi??" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Moldova (Republic of)
-}
countryMD : Country
countryMD =
    { addressFormat = ""
    , alpha2 = "MD"
    , alpha3 = "MDA"
    , continent = Continent.Europe
    , countryCode = "373"
    , currencyCode = "MDL"
    , emoji = "????????"
    , gec = "MD"
    , internationalPrefix = "00"
    , ioc = "MDA"
    , languagesOfficial = [ "ro" ]
    , languagesSpoken = [ "ro" ]
    , localNames = [ "Moldova" ]
    , name = "Moldova (Republic of)"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Moldovan"
    , number = "498"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryMDSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "MD"
    , unofficialNames = [ "Moldova", "Moldawien", "Moldavie", "Moldavia", "the Republic of Moldova", "?????????????????????", "Moldavi??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Monaco
-}
countryMC : Country
countryMC =
    { addressFormat = ""
    , alpha2 = "MC"
    , alpha3 = "MCO"
    , continent = Continent.Europe
    , countryCode = "377"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "MN"
    , internationalPrefix = "00"
    , ioc = "MON"
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Monaco" ]
    , name = "Monaco"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Monegasque"
    , number = "492"
    , postalCode = True
    , postalCodeFormat = "980\\d{2}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryMCSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "MC"
    , unofficialNames = [ "Monaco", "M??naco", "?????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Mongolia
-}
countryMN : Country
countryMN =
    { addressFormat = ""
    , alpha2 = "MN"
    , alpha3 = "MNG"
    , continent = Continent.Asia
    , countryCode = "976"
    , currencyCode = "MNT"
    , emoji = "????????"
    , gec = "MG"
    , internationalPrefix = "001"
    , ioc = "MGL"
    , languagesOfficial = [ "mn" ]
    , languagesSpoken = [ "mn" ]
    , localNames = [ "????????????" ]
    , name = "Mongolia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8, 9, 10 ]
    , nationalPrefix = "0"
    , nationality = "Mongolian"
    , number = "496"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryMNSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "MN"
    , unofficialNames = [ "Mongolia", "Mongolei", "Mongolie", "????????????", "Mongoli??" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Montenegro
-}
countryME : Country
countryME =
    { addressFormat = ""
    , alpha2 = "ME"
    , alpha3 = "MNE"
    , continent = Continent.Europe
    , countryCode = "382"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "MJ"
    , internationalPrefix = "99"
    , ioc = "MNE"
    , languagesOfficial = [ "sr", "bs", "sq", "hr" ]
    , languagesSpoken = [ "sr", "bs", "sq", "hr" ]
    , localNames = [ "???????? ????????", "Crna Gora", "Mali i Zi", "Crna Gora" ]
    , name = "Montenegro"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Montenegrin"
    , number = "499"
    , postalCode = True
    , postalCodeFormat = "8\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryMESubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "ME"
    , unofficialNames = [ "Crna Gora", "Montenegro", "??????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Montserrat
-}
countryMS : Country
countryMS =
    { addressFormat = ""
    , alpha2 = "MS"
    , alpha3 = "MSR"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "????????"
    , gec = "MH"
    , internationalPrefix = "011"
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Montserrat" ]
    , name = "Montserrat"
    , nanpPrefix = "1664"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Montserratian"
    , number = "500"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryMSSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "MS"
    , unofficialNames = [ "Montserrat", "??????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Morocco
-}
countryMA : Country
countryMA =
    { addressFormat = ""
    , alpha2 = "MA"
    , alpha3 = "MAR"
    , continent = Continent.Africa
    , countryCode = "212"
    , currencyCode = "MAD"
    , emoji = "????????"
    , gec = "MO"
    , internationalPrefix = "00"
    , ioc = "MAR"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "????????????" ]
    , name = "Morocco"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Moroccan"
    , number = "504"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryMASubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "MA"
    , unofficialNames = [ "Morocco", "????????????", "Marokko", "Maroc", "Marruecos", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Mozambique
-}
countryMZ : Country
countryMZ =
    { addressFormat = ""
    , alpha2 = "MZ"
    , alpha3 = "MOZ"
    , continent = Continent.Africa
    , countryCode = "258"
    , currencyCode = "MZN"
    , emoji = "????????"
    , gec = "MZ"
    , internationalPrefix = "00"
    , ioc = "MOZ"
    , languagesOfficial = [ "pt" ]
    , languagesSpoken = [ "pt" ]
    , localNames = [ "Mo??ambique" ]
    , name = "Mozambique"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Mozambican"
    , number = "508"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryMZSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "MZ"
    , unofficialNames = [ "Mozambique", "Mosambik", "??????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Myanmar
-}
countryMM : Country
countryMM =
    { addressFormat = ""
    , alpha2 = "MM"
    , alpha3 = "MMR"
    , continent = Continent.Asia
    , countryCode = "95"
    , currencyCode = "MMK"
    , emoji = "????????"
    , gec = "BM"
    , internationalPrefix = "00"
    , ioc = "MYA"
    , languagesOfficial = [ "my" ]
    , languagesSpoken = [ "my" ]
    , localNames = [ "???????????????????????????????????????" ]
    , name = "Myanmar"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8 ]
    , nationalPrefix = "None"
    , nationality = "Myanmarian"
    , number = "104"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryMMSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "MM"
    , unofficialNames = [ "Myanmar", "???????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Namibia
-}
countryNA : Country
countryNA =
    { addressFormat = ""
    , alpha2 = "NA"
    , alpha3 = "NAM"
    , continent = Continent.Africa
    , countryCode = "264"
    , currencyCode = "NAD"
    , emoji = "????????"
    , gec = "WA"
    , internationalPrefix = "00"
    , ioc = "NAM"
    , languagesOfficial = [ "en", "af" ]
    , languagesSpoken = [ "en", "af" ]
    , localNames = [ "Namibia", "Namibi??" ]
    , name = "Namibia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6, 7 ]
    , nationalPrefix = "0"
    , nationality = "Namibian"
    , number = "516"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryNASubdivisions
    , subregion = Subregion.SouthernAfrica
    , unLocode = "NA"
    , unofficialNames = [ "Namibia", "Namibie", "????????????", "Namibi??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Nauru
-}
countryNR : Country
countryNR =
    { addressFormat = ""
    , alpha2 = "NR"
    , alpha3 = "NRU"
    , continent = Continent.Australia
    , countryCode = "674"
    , currencyCode = "AUD"
    , emoji = "????????"
    , gec = "NR"
    , internationalPrefix = "00"
    , ioc = "NRU"
    , languagesOfficial = [ "en", "na" ]
    , languagesSpoken = [ "en", "na" ]
    , localNames = [ "Nauru", "Naoero" ]
    , name = "Nauru"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "0"
    , nationality = "Nauruan"
    , number = "520"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryNRSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "NR"
    , unofficialNames = [ "Nauru", "?????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Nepal
-}
countryNP : Country
countryNP =
    { addressFormat = """{{recipient}}
{{street}}
{{city}}
{{region}} {{postalcode}}
{{country}}
"""
    , alpha2 = "NP"
    , alpha3 = "NPL"
    , continent = Continent.Asia
    , countryCode = "977"
    , currencyCode = "NPR"
    , emoji = "????????"
    , gec = "NP"
    , internationalPrefix = "00"
    , ioc = "NEP"
    , languagesOfficial = [ "ne" ]
    , languagesSpoken = [ "ne", "mai", "bho", "new", "urd" ]
    , localNames = [ "???????????????" ]
    , name = "Nepal"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8 ]
    , nationalPrefix = "0"
    , nationality = "Nepalese"
    , number = "524"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryNPSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "NP"
    , unofficialNames = [ "Nepal", "N??pal", "the Federal Democratic Republic of Nepal", "????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Netherlands
-}
countryNL : Country
countryNL =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "NL"
    , alpha3 = "NLD"
    , continent = Continent.Europe
    , countryCode = "31"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "NL"
    , internationalPrefix = "00"
    , ioc = "NED"
    , languagesOfficial = [ "nl" ]
    , languagesSpoken = [ "nl" ]
    , localNames = [ "Nederland" ]
    , name = "Netherlands"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Dutch"
    , number = "528"
    , postalCode = True
    , postalCodeFormat = "\\d{4} ?[A-Z]{2}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryNLSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "NL"
    , unofficialNames = [ "Netherlands", "The Netherlands", "Niederlande", "Pays-Bas", "Pa??ses Bajos", "????????????", "Nederland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| New Caledonia
-}
countryNC : Country
countryNC =
    { addressFormat = ""
    , alpha2 = "NC"
    , alpha3 = "NCL"
    , continent = Continent.Australia
    , countryCode = "687"
    , currencyCode = "XPF"
    , emoji = "????????"
    , gec = "NC"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Nouvelle-Cal??donie" ]
    , name = "New Caledonia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6 ]
    , nationalPrefix = "None"
    , nationality = "New Caledonian"
    , number = "540"
    , postalCode = True
    , postalCodeFormat = "988\\d{2}"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryNCSubdivisions
    , subregion = Subregion.Melanesia
    , unLocode = "NC"
    , unofficialNames = [ "New Caledonia", "Neukaledonien", "Nouvelle-Cal??donie", "Nueva Caledonia", "????????????????????????", "Nieuw-Caledoni??" ]
    , worldRegion = WorldRegion.Apac
    }


{-| New Zealand
-}
countryNZ : Country
countryNZ =
    { addressFormat = """{{recipient}}
{{street}}
{{region}}
{{city}} {{postalcode}}
{{country}}
"""
    , alpha2 = "NZ"
    , alpha3 = "NZL"
    , continent = Continent.Australia
    , countryCode = "64"
    , currencyCode = "NZD"
    , emoji = "????????"
    , gec = "NZ"
    , internationalPrefix = "00"
    , ioc = "NZL"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "New Zealand" ]
    , name = "New Zealand"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 1 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "New Zealander"
    , number = "554"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryNZSubdivisions
    , subregion = Subregion.AustraliaAndNewZealand
    , unLocode = "NZ"
    , unofficialNames = [ "New Zealand", "Neuseeland", "Nouvelle Z??lande", "Nueva Zelanda", "????????????????????????", "Nieuw-Zeeland" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Nicaragua
-}
countryNI : Country
countryNI =
    { addressFormat = ""
    , alpha2 = "NI"
    , alpha3 = "NIC"
    , continent = Continent.NorthAmerica
    , countryCode = "505"
    , currencyCode = "NIO"
    , emoji = "????????"
    , gec = "NU"
    , internationalPrefix = "00"
    , ioc = "NCA"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Nicaragua" ]
    , name = "Nicaragua"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Nicaraguan"
    , number = "558"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryNISubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "NI"
    , unofficialNames = [ "Nicaragua", "???????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Niger
-}
countryNE : Country
countryNE =
    { addressFormat = ""
    , alpha2 = "NE"
    , alpha3 = "NER"
    , continent = Continent.Africa
    , countryCode = "227"
    , currencyCode = "XOF"
    , emoji = "????????"
    , gec = "NG"
    , internationalPrefix = "00"
    , ioc = "NIG"
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Niger" ]
    , name = "Niger"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Nigerian"
    , number = "562"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryNESubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "NE"
    , unofficialNames = [ "Niger", "N??ger", "???????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Nigeria
-}
countryNG : Country
countryNG =
    { addressFormat = ""
    , alpha2 = "NG"
    , alpha3 = "NGA"
    , continent = Continent.Africa
    , countryCode = "234"
    , currencyCode = "NGN"
    , emoji = "????????"
    , gec = "NI"
    , internationalPrefix = "009"
    , ioc = "NGR"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Nigeria" ]
    , name = "Nigeria"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8 ]
    , nationalPrefix = "0"
    , nationality = "Nigerian"
    , number = "566"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryNGSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "NG"
    , unofficialNames = [ "Nigeria", "Nig??ria", "the Federal Republic of Nigeria", "??????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Niue
-}
countryNU : Country
countryNU =
    { addressFormat = ""
    , alpha2 = "NU"
    , alpha3 = "NIU"
    , continent = Continent.Australia
    , countryCode = "683"
    , currencyCode = "NZD"
    , emoji = "????????"
    , gec = "NE"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Niue" ]
    , name = "Niue"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 4 ]
    , nationalPrefix = "None"
    , nationality = "Niuean"
    , number = "570"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.Polynesia
    , unLocode = "NU"
    , unofficialNames = [ "Niue", "?????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Norfolk Island
-}
countryNF : Country
countryNF =
    { addressFormat = ""
    , alpha2 = "NF"
    , alpha3 = "NFK"
    , continent = Continent.Australia
    , countryCode = "672"
    , currencyCode = "AUD"
    , emoji = "????????"
    , gec = "NF"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Norfolk Island" ]
    , name = "Norfolk Island"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6 ]
    , nationalPrefix = "None"
    , nationality = "Norfolk Islander"
    , number = "574"
    , postalCode = True
    , postalCodeFormat = "2899"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.AustraliaAndNewZealand
    , unLocode = "NF"
    , unofficialNames = [ "Norfolk Island", "Norfolkinsel", "??le de Norfolk", "Isla de Norfolk", "?????????????????????", "Norfolkeiland" ]
    , worldRegion = WorldRegion.Apac
    }


{-| North Macedonia
-}
countryMK : Country
countryMK =
    { addressFormat = """{{recipient}}
{{street}}
{{city}} {{postalcode}}
{{country}}
"""
    , alpha2 = "MK"
    , alpha3 = "MKD"
    , continent = Continent.Europe
    , countryCode = "389"
    , currencyCode = "MKD"
    , emoji = "????????"
    , gec = "MK"
    , internationalPrefix = "00"
    , ioc = "MKD"
    , languagesOfficial = [ "mk" ]
    , languagesSpoken = [ "mk" ]
    , localNames = [ "???????? ????????????????????" ]
    , name = "North Macedonia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8 ]
    , nationalPrefix = "0"
    , nationality = "Macedonian"
    , number = "807"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryMKSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "MK"
    , unofficialNames = [ "Macedonia", "Mazedonien", "Mac??doine", "F.Y.R.O.M (Macedonia)", "????????????????????????????????????????????????", "Macedoni?? [FYROM]", "Macedonia (The Former Yugoslav Republic of)", "North Macedonia" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Northern Mariana Islands
-}
countryMP : Country
countryMP =
    { addressFormat = ""
    , alpha2 = "MP"
    , alpha3 = "MNP"
    , continent = Continent.Australia
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "CQ"
    , internationalPrefix = "011"
    , ioc = ""
    , languagesOfficial = [ "en", "ch" ]
    , languagesSpoken = [ "en", "ch" ]
    , localNames = [ "Northern Mariana Islands", "Notte Mari??nas" ]
    , name = "Northern Mariana Islands"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "American"
    , number = "580"
    , postalCode = True
    , postalCodeFormat = "(9695[012])(?:[ \\-](\\d{4}))?"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryMPSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "MP"
    , unofficialNames = [ "Northern Mariana Islands", "N??rdliche Marianen", "Mariannes du Nord", "Islas Marianas del Norte", "?????????????????????", "Noordelijke Marianeneilanden" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Norway
-}
countryNO : Country
countryNO =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "NO"
    , alpha3 = "NOR"
    , continent = Continent.Europe
    , countryCode = "47"
    , currencyCode = "NOK"
    , emoji = "????????"
    , gec = "NO"
    , internationalPrefix = "00"
    , ioc = "NOR"
    , languagesOfficial = [ "nb", "nn" ]
    , languagesSpoken = [ "nb", "nn" ]
    , localNames = [ "Norge", "Noreg" ]
    , name = "Norway"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Norwegian"
    , number = "578"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryNOSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "NO"
    , unofficialNames = [ "Norway", "Norwegen", "Norv??ge", "Noruega", "???????????????", "Noorwegen" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Oman
-}
countryOM : Country
countryOM =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{region}}
{{country}}
"""
    , alpha2 = "OM"
    , alpha3 = "OMN"
    , continent = Continent.Asia
    , countryCode = "968"
    , currencyCode = "OMR"
    , emoji = "????????"
    , gec = "MU"
    , internationalPrefix = "00"
    , ioc = "OMA"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "????????" ]
    , name = "Oman"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Omani"
    , number = "512"
    , postalCode = True
    , postalCodeFormat = "(?:PC )?\\d{3}"
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryOMSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "OM"
    , unofficialNames = [ "Oman", "????????", "Om??n", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Pakistan
-}
countryPK : Country
countryPK =
    { addressFormat = ""
    , alpha2 = "PK"
    , alpha3 = "PAK"
    , continent = Continent.Asia
    , countryCode = "92"
    , currencyCode = "PKR"
    , emoji = "????????"
    , gec = "PK"
    , internationalPrefix = "00"
    , ioc = "PAK"
    , languagesOfficial = [ "en", "ur" ]
    , languagesSpoken = [ "en", "ur" ]
    , localNames = [ "Pakistan", "??????????????" ]
    , name = "Pakistan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9, 10 ]
    , nationalPrefix = "0"
    , nationality = "Pakistani"
    , number = "586"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryPKSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "PK"
    , unofficialNames = [ "Pakistan", "Paquist??n", "???????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Palau
-}
countryPW : Country
countryPW =
    { addressFormat = ""
    , alpha2 = "PW"
    , alpha3 = "PLW"
    , continent = Continent.Australia
    , countryCode = "680"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "PS"
    , internationalPrefix = "00"
    , ioc = "PLW"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Palau" ]
    , name = "Palau"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Palauan"
    , number = "585"
    , postalCode = True
    , postalCodeFormat = "(969(?:39|40))(?:[ \\-](\\d{4}))?"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryPWSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "PW"
    , unofficialNames = [ "Palau", "?????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Palestine, State of
-}
countryPS : Country
countryPS =
    { addressFormat = ""
    , alpha2 = "PS"
    , alpha3 = "PSE"
    , continent = Continent.Asia
    , countryCode = "970"
    , currencyCode = "ILS"
    , emoji = "????????"
    , gec = "WE"
    , internationalPrefix = "00"
    , ioc = "PLE"
    , languagesOfficial = [ "ar", "he", "en" ]
    , languagesSpoken = [ "ar", "he", "en" ]
    , localNames = [ "????????????", "????????????, ??????????", "Palestine, State of" ]
    , name = "Palestine, State of"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Palestinian"
    , number = "275"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryPSSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "PS"
    , unofficialNames = [ "Palestine", "????????????", "Pal??stina", "Palestina", "the Occupied Palestinian Territory", "???????????????", "Palestijnse gebieden", "Palestinian Territory Occupied", "Palestinian Authority" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Panama
-}
countryPA : Country
countryPA =
    { addressFormat = ""
    , alpha2 = "PA"
    , alpha3 = "PAN"
    , continent = Continent.NorthAmerica
    , countryCode = "507"
    , currencyCode = "PAB"
    , emoji = "????????"
    , gec = "PM"
    , internationalPrefix = "00"
    , ioc = "PAN"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Panam??" ]
    , name = "Panama"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Panamanian"
    , number = "591"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryPASubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "PA"
    , unofficialNames = [ "Panama", "Panam??", "?????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Papua New Guinea
-}
countryPG : Country
countryPG =
    { addressFormat = ""
    , alpha2 = "PG"
    , alpha3 = "PNG"
    , continent = Continent.Australia
    , countryCode = "675"
    , currencyCode = "PGK"
    , emoji = "????????"
    , gec = "PP"
    , internationalPrefix = "05"
    , ioc = "PNG"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Papua New Guinea" ]
    , name = "Papua New Guinea"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Papua New Guinean"
    , number = "598"
    , postalCode = True
    , postalCodeFormat = "\\d{3}"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryPGSubdivisions
    , subregion = Subregion.Melanesia
    , unLocode = "PG"
    , unofficialNames = [ "Papua New Guinea", "Papua-Neuguinea", "Papouasie Nouvelle-Guin??e", "Pap??a Nueva Guinea", "???????????????????????????", "Papoea-Nieuw-Guinea" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Paraguay
-}
countryPY : Country
countryPY =
    { addressFormat = ""
    , alpha2 = "PY"
    , alpha3 = "PRY"
    , continent = Continent.SouthAmerica
    , countryCode = "595"
    , currencyCode = "PYG"
    , emoji = "????????"
    , gec = "PA"
    , internationalPrefix = "002"
    , ioc = "PAR"
    , languagesOfficial = [ "es", "gn" ]
    , languagesSpoken = [ "es", "gn" ]
    , localNames = [ "Paraguay", "Paraguay" ]
    , name = "Paraguay"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Paraguayan"
    , number = "600"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryPYSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "PY"
    , unofficialNames = [ "Paraguay", "???????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Peru
-}
countryPE : Country
countryPE =
    { addressFormat = ""
    , alpha2 = "PE"
    , alpha3 = "PER"
    , continent = Continent.SouthAmerica
    , countryCode = "51"
    , currencyCode = "PEN"
    , emoji = "????????"
    , gec = "PE"
    , internationalPrefix = "00"
    , ioc = "PER"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Per??" ]
    , name = "Peru"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Peruvian"
    , number = "604"
    , postalCode = True
    , postalCodeFormat = "(?:LIMA \\d{1,2}|CALLAO 0?\\d)|[0-2]\\d{4}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryPESubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "PE"
    , unofficialNames = [ "Peru", "P??rou", "Per??", "?????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Philippines
-}
countryPH : Country
countryPH =
    { addressFormat = """{{recipient}}
{{street}} {{region_short}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "PH"
    , alpha3 = "PHL"
    , continent = Continent.Asia
    , countryCode = "63"
    , currencyCode = "PHP"
    , emoji = "????????"
    , gec = "RP"
    , internationalPrefix = "00"
    , ioc = "PHI"
    , languagesOfficial = [ "tl", "en" ]
    , languagesSpoken = [ "tl", "en" ]
    , localNames = [ "Pilipinas", "Philippines" ]
    , name = "Philippines"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9, 10 ]
    , nationalPrefix = "0"
    , nationality = "Filipino"
    , number = "608"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryPHSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "PH"
    , unofficialNames = [ "Philippines", "Philippinen", "Filipinas", "???????????????", "Filipijnen" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Pitcairn
-}
countryPN : Country
countryPN =
    { addressFormat = ""
    , alpha2 = "PN"
    , alpha3 = "PCN"
    , continent = Continent.Australia
    , countryCode = "64"
    , currencyCode = "NZD"
    , emoji = "????????"
    , gec = "PC"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Pitcairn" ]
    , name = "Pitcairn"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Pitcairn Islander"
    , number = "612"
    , postalCode = True
    , postalCodeFormat = "PCRN 1ZZ"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.Polynesia
    , unLocode = "PN"
    , unofficialNames = [ "Pitcairn", "???????????????", "Pitcairneilanden", "Pitcairn Islands" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Poland
-}
countryPL : Country
countryPL =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{region}}
{{country}}
"""
    , alpha2 = "PL"
    , alpha3 = "POL"
    , continent = Continent.Europe
    , countryCode = "48"
    , currencyCode = "PLN"
    , emoji = "????????"
    , gec = "PL"
    , internationalPrefix = "00"
    , ioc = "POL"
    , languagesOfficial = [ "pl" ]
    , languagesSpoken = [ "pl" ]
    , localNames = [ "Polska" ]
    , name = "Poland"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Polish"
    , number = "616"
    , postalCode = True
    , postalCodeFormat = "\\d{2}-\\d{3}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryPLSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "PL"
    , unofficialNames = [ "Poland", "Polen", "Pologne", "Polonia", "???????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Portugal
-}
countryPT : Country
countryPT =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}} {{region_short}}
{{country}}
"""
    , alpha2 = "PT"
    , alpha3 = "PRT"
    , continent = Continent.Europe
    , countryCode = "351"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "PO"
    , internationalPrefix = "00"
    , ioc = "POR"
    , languagesOfficial = [ "pt" ]
    , languagesSpoken = [ "pt" ]
    , localNames = [ "Portugal" ]
    , name = "Portugal"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "None"
    , nationality = "Portuguese"
    , number = "620"
    , postalCode = True
    , postalCodeFormat = "\\d{4}-\\d{3}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryPTSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "PT"
    , unofficialNames = [ "Portugal", "???????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Puerto Rico
-}
countryPR : Country
countryPR =
    { addressFormat = ""
    , alpha2 = "PR"
    , alpha3 = "PRI"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "RQ"
    , internationalPrefix = "011"
    , ioc = "PUR"
    , languagesOfficial = [ "es", "en" ]
    , languagesSpoken = [ "es", "en" ]
    , localNames = [ "Puerto Rico", "Puerto Rico" ]
    , name = "Puerto Rico"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Puerto Rican"
    , number = "630"
    , postalCode = True
    , postalCodeFormat = "(00[679]\\d{2})(?:[ \\-](\\d{4}))?"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryPRSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "PR"
    , unofficialNames = [ "Puerto Rico", "??????????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Qatar
-}
countryQA : Country
countryQA =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "QA"
    , alpha3 = "QAT"
    , continent = Continent.Asia
    , countryCode = "974"
    , currencyCode = "QAR"
    , emoji = "????????"
    , gec = "QA"
    , internationalPrefix = "00"
    , ioc = "QAT"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "??????" ]
    , name = "Qatar"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Qatari"
    , number = "634"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryQASubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "QA"
    , unofficialNames = [ "Qatar", "??????", "Katar", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Romania
-}
countryRO : Country
countryRO =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "RO"
    , alpha3 = "ROU"
    , continent = Continent.Europe
    , countryCode = "40"
    , currencyCode = "RON"
    , emoji = "????????"
    , gec = "RO"
    , internationalPrefix = "00"
    , ioc = "ROU"
    , languagesOfficial = [ "ro" ]
    , languagesSpoken = [ "ro" ]
    , localNames = [ "Rom??nia" ]
    , name = "Romania"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Romanian"
    , number = "642"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryROSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "RO"
    , unofficialNames = [ "Romania", "Rum??nien", "Roumanie", "Rumania", "???????????????", "Roemeni??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Russian Federation
-}
countryRU : Country
countryRU =
    { addressFormat = """{{recipient}}
{{postalcode}} {{city}}
{{street}}
{{country}}
"""
    , alpha2 = "RU"
    , alpha3 = "RUS"
    , continent = Continent.Europe
    , countryCode = "7"
    , currencyCode = "RUB"
    , emoji = "????????"
    , gec = "RS"
    , internationalPrefix = "810"
    , ioc = "RUS"
    , languagesOfficial = [ "ru" ]
    , languagesSpoken = [ "ru" ]
    , localNames = [ "???????????????????? ??????????????????" ]
    , name = "Russian Federation"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "8"
    , nationality = "Russian"
    , number = "643"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryRUSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "RU"
    , unofficialNames = [ "Russia", "Russland", "Russie", "Rusia", "???????????????", "Rusland", "????????????", "??????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Rwanda
-}
countryRW : Country
countryRW =
    { addressFormat = ""
    , alpha2 = "RW"
    , alpha3 = "RWA"
    , continent = Continent.Africa
    , countryCode = "250"
    , currencyCode = "RWF"
    , emoji = "????????"
    , gec = "RW"
    , internationalPrefix = "00"
    , ioc = "RWA"
    , languagesOfficial = [ "rw", "en", "fr" ]
    , languagesSpoken = [ "rw", "en", "fr" ]
    , localNames = [ "Rwanda", "Rwanda", "Rwanda" ]
    , name = "Rwanda"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Rwandan"
    , number = "646"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryRWSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "RW"
    , unofficialNames = [ "Rwanda", "Ruanda", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| R??union
-}
countryRE : Country
countryRE =
    { addressFormat = ""
    , alpha2 = "RE"
    , alpha3 = "REU"
    , continent = Continent.Africa
    , countryCode = "262"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "RE"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "R??union, ??le de la" ]
    , name = "R??union"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "None"
    , nationality = "French"
    , number = "638"
    , postalCode = True
    , postalCodeFormat = "9[78]4\\d{2}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryRESubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "RE"
    , unofficialNames = [ "R??union", "Reuni??n", "Reunion", "???????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Saint Barth??lemy
-}
countryBL : Country
countryBL =
    { addressFormat = ""
    , alpha2 = "BL"
    , alpha3 = "BLM"
    , continent = Continent.NorthAmerica
    , countryCode = "590"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "TB"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Saint-Barth??lemy" ]
    , name = "Saint Barth??lemy"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "Saint Barth??lemy Islander"
    , number = "652"
    , postalCode = True
    , postalCodeFormat = "9[78][01]\\d{2}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryBLSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "BL"
    , unofficialNames = [ "Saint Barth??lemy", "Saint-Barth??lemy", "???????????????????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Saint Helena, Ascension and Tristan da Cunha
-}
countrySH : Country
countrySH =
    { addressFormat = ""
    , alpha2 = "SH"
    , alpha3 = "SHN"
    , continent = Continent.Africa
    , countryCode = "290"
    , currencyCode = "SHP"
    , emoji = "????????"
    , gec = "SH"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Saint Helena, Ascension and Tristan da Cunha" ]
    , name = "Saint Helena, Ascension and Tristan da Cunha"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 4 ]
    , nationalPrefix = "None"
    , nationality = "Saint Helenian"
    , number = "654"
    , postalCode = True
    , postalCodeFormat = "(?:ASCN|STHL) 1ZZ"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countrySHSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "SH"
    , unofficialNames = [ "Saint Helena", "Sankt Helena", "Sainte H??l??ne", "Santa Helena", "??????????????????????????????????????????????????????????????????????????????", "Sint-Helena", "Saint Helena, Ascension and Tristan da Cunha" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Saint Kitts and Nevis
-}
countryKN : Country
countryKN =
    { addressFormat = ""
    , alpha2 = "KN"
    , alpha3 = "KNA"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "????????"
    , gec = "SC"
    , internationalPrefix = "011"
    , ioc = "SKN"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Saint Kitts and Nevis" ]
    , name = "Saint Kitts and Nevis"
    , nanpPrefix = "1869"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Kittian and Nevisian"
    , number = "659"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryKNSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "KN"
    , unofficialNames = [ "Saint Kitts and Nevis", "F??deration St. Kitts und Nevis", "Saint Kitts et Nevis", "Saint Kitts y Nevis", "?????????????????????????????????????????????", "Saint Kitts en Nevis", "St. Kitts and Nevis", "St Kitts and Nevis" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Saint Lucia
-}
countryLC : Country
countryLC =
    { addressFormat = ""
    , alpha2 = "LC"
    , alpha3 = "LCA"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "????????"
    , gec = "ST"
    , internationalPrefix = "011"
    , ioc = "LCA"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Saint Lucia" ]
    , name = "Saint Lucia"
    , nanpPrefix = "1758"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Saint Lucian"
    , number = "662"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryLCSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "LC"
    , unofficialNames = [ "Saint Lucia", "Saint-Lucie", "Santa Luc??a", "??????????????????", "St. Lucia", "St Lucia" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Saint Martin (French part)
-}
countryMF : Country
countryMF =
    { addressFormat = ""
    , alpha2 = "MF"
    , alpha3 = "MAF"
    , continent = Continent.NorthAmerica
    , countryCode = "590"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "RN"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "en", "fr", "nl" ]
    , languagesSpoken = [ "en", "fr", "nl" ]
    , localNames = [ "Saint Martin (French part)", "Saint-Martin (partie fran??aise)", "Sint-Maarten" ]
    , name = "Saint Martin (French part)"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "Saint Martin Islander"
    , number = "663"
    , postalCode = True
    , postalCodeFormat = "9[78][01]\\d{2}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryMFSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "MF"
    , unofficialNames = [ "Saint Martin", "??????????????????????????????????????????", "Saint-Martin" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Saint Pierre and Miquelon
-}
countryPM : Country
countryPM =
    { addressFormat = ""
    , alpha2 = "PM"
    , alpha3 = "SPM"
    , continent = Continent.NorthAmerica
    , countryCode = "508"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "SB"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Saint-Pierre-et-Miquelon" ]
    , name = "Saint Pierre and Miquelon"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6 ]
    , nationalPrefix = "0"
    , nationality = "French"
    , number = "666"
    , postalCode = True
    , postalCodeFormat = "9[78]5\\d{2}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryPMSubdivisions
    , subregion = Subregion.NorthernAmerica
    , unLocode = "PM"
    , unofficialNames = [ "Saint Pierre and Miquelon", "Saint-Pierre und Miquelon", "Saint-Pierre-et-Miquelon", "San Pedro y Miquel??n", "???????????????????????????????????????", "Saint Pierre en Miquelon" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Saint Vincent and the Grenadines
-}
countryVC : Country
countryVC =
    { addressFormat = ""
    , alpha2 = "VC"
    , alpha3 = "VCT"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "????????"
    , gec = "VC"
    , internationalPrefix = "011"
    , ioc = "VIN"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Saint Vincent and the Grenadines" ]
    , name = "Saint Vincent and the Grenadines"
    , nanpPrefix = "1784"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Saint Vincentian"
    , number = "670"
    , postalCode = True
    , postalCodeFormat = "VC\\d{4}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryVCSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "VC"
    , unofficialNames = [ "Saint Vincent and the Grenadines", "Saint Vincent und die Grenadinen", "Saint-Vincent et les Grenadines", "San Vicente y Granadinas", "????????????????????????????????????????????????????????????", "Saint Vincent en de Grenadines", "St. Vincent Grenadines", "St Vincent Grenadines" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Samoa
-}
countryWS : Country
countryWS =
    { addressFormat = ""
    , alpha2 = "WS"
    , alpha3 = "WSM"
    , continent = Continent.Australia
    , countryCode = "685"
    , currencyCode = "WST"
    , emoji = "????????"
    , gec = "WS"
    , internationalPrefix = "00"
    , ioc = "SAM"
    , languagesOfficial = [ "sm", "en" ]
    , languagesSpoken = [ "sm", "en" ]
    , localNames = [ "Samoa" ]
    , name = "Samoa"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6, 7 ]
    , nationalPrefix = "None"
    , nationality = "Samoan"
    , number = "882"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryWSSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "WS"
    , unofficialNames = [ "Samoa", "?????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| San Marino
-}
countrySM : Country
countrySM =
    { addressFormat = ""
    , alpha2 = "SM"
    , alpha3 = "SMR"
    , continent = Continent.Europe
    , countryCode = "378"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "SM"
    , internationalPrefix = "00"
    , ioc = "SMR"
    , languagesOfficial = [ "it" ]
    , languagesSpoken = [ "it" ]
    , localNames = [ "San Marino" ]
    , name = "San Marino"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9, 10, 11, 12 ]
    , nationalPrefix = "None"
    , nationality = "Sammarinese"
    , number = "674"
    , postalCode = True
    , postalCodeFormat = "4789\\d"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countrySMSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "SM"
    , unofficialNames = [ "San Marino", "Saint-Marin", "???????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Sao Tome and Principe
-}
countryST : Country
countryST =
    { addressFormat = ""
    , alpha2 = "ST"
    , alpha3 = "STP"
    , continent = Continent.Africa
    , countryCode = "239"
    , currencyCode = "STD"
    , emoji = "????????"
    , gec = "TP"
    , internationalPrefix = "00"
    , ioc = "STP"
    , languagesOfficial = [ "pt" ]
    , languagesSpoken = [ "pt" ]
    , localNames = [ "S??o Tom?? e Pr??ncipe" ]
    , name = "Sao Tome and Principe"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6, 7 ]
    , nationalPrefix = "0"
    , nationality = "Sao Tomean"
    , number = "678"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countrySTSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "ST"
    , unofficialNames = [ "S??o Tom?? and Pr??ncipe", "S??o Tom?? und Pr??ncipe", "S??o Tom?? et Pr??ncipe", "Santo Tom?? y Pr??ncipe", "??????????????????????????????", "Sao Tom?? en Principe" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Saudi Arabia
-}
countrySA : Country
countrySA =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "SA"
    , alpha3 = "SAU"
    , continent = Continent.Asia
    , countryCode = "966"
    , currencyCode = "SAR"
    , emoji = "????????"
    , gec = "SA"
    , internationalPrefix = "00"
    , ioc = "KSA"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "????????????????" ]
    , name = "Saudi Arabia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Saudi Arabian"
    , number = "682"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countrySASubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "SA"
    , unofficialNames = [ "Saudi Arabia", "Kingdom of Saudi Arabia", "????????????????", "Saudi-Arabien", "Arabie Saoudite", "Arabia Saud??", "?????????????????????", "Saoedi-Arabi??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Senegal
-}
countrySN : Country
countrySN =
    { addressFormat = ""
    , alpha2 = "SN"
    , alpha3 = "SEN"
    , continent = Continent.Africa
    , countryCode = "221"
    , currencyCode = "XOF"
    , emoji = "????????"
    , gec = "SG"
    , internationalPrefix = "00"
    , ioc = "SEN"
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "S??n??gal" ]
    , name = "Senegal"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Senegalese"
    , number = "686"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countrySNSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "SN"
    , unofficialNames = [ "Senegal", "S??n??gal", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Serbia
-}
countryRS : Country
countryRS =
    { addressFormat = ""
    , alpha2 = "RS"
    , alpha3 = "SRB"
    , continent = Continent.Europe
    , countryCode = "381"
    , currencyCode = "RSD"
    , emoji = "????????"
    , gec = "RI"
    , internationalPrefix = "99"
    , ioc = "SRB"
    , languagesOfficial = [ "sr" ]
    , languagesSpoken = [ "sr" ]
    , localNames = [ "????????????" ]
    , name = "Serbia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Serbian"
    , number = "688"
    , postalCode = True
    , postalCodeFormat = "\\d{5,6}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryRSSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "RS"
    , unofficialNames = [ "Serbia", "Serbien", "Serbie", "????????????", "Servi??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Seychelles
-}
countrySC : Country
countrySC =
    { addressFormat = ""
    , alpha2 = "SC"
    , alpha3 = "SYC"
    , continent = Continent.Africa
    , countryCode = "248"
    , currencyCode = "SCR"
    , emoji = "????????"
    , gec = "SE"
    , internationalPrefix = "00"
    , ioc = "SEY"
    , languagesOfficial = [ "fr", "en" ]
    , languagesSpoken = [ "fr", "en" ]
    , localNames = [ "Seychelles", "Seychelles" ]
    , name = "Seychelles"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6 ]
    , nationalPrefix = "None"
    , nationality = "Seychellois"
    , number = "690"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countrySCSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "SC"
    , unofficialNames = [ "Seychelles", "Seychellen", "???????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Sierra Leone
-}
countrySL : Country
countrySL =
    { addressFormat = ""
    , alpha2 = "SL"
    , alpha3 = "SLE"
    , continent = Continent.Africa
    , countryCode = "232"
    , currencyCode = "SLL"
    , emoji = "????????"
    , gec = "SL"
    , internationalPrefix = "00"
    , ioc = "SLE"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Sierra Leone" ]
    , name = "Sierra Leone"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Sierra Leonean"
    , number = "694"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countrySLSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "SL"
    , unofficialNames = [ "Sierra Leone", "??????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Singapore
-}
countrySG : Country
countrySG =
    { addressFormat = """{{recipient}}
{{street}}
{{city}} {{postalcode}}
{{country}}
"""
    , alpha2 = "SG"
    , alpha3 = "SGP"
    , continent = Continent.Asia
    , countryCode = "65"
    , currencyCode = "SGD"
    , emoji = "????????"
    , gec = "SN"
    , internationalPrefix = "001"
    , ioc = "SGP"
    , languagesOfficial = [ "en", "ms", "ta" ]
    , languagesSpoken = [ "en", "ms", "ta" ]
    , localNames = [ "Singapore", "Singapura", "?????????????????????????????????" ]
    , name = "Singapore"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "None"
    , nationality = "Singaporean"
    , number = "702"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countrySGSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "SG"
    , unofficialNames = [ "Singapore", "Singapur", "Singapour", "??????????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Sint Maarten (Dutch part)
-}
countrySX : Country
countrySX =
    { addressFormat = ""
    , alpha2 = "SX"
    , alpha3 = "SXM"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "ANG"
    , emoji = "????????"
    , gec = "NN"
    , internationalPrefix = "011"
    , ioc = ""
    , languagesOfficial = [ "nl", "en" ]
    , languagesSpoken = [ "nl", "en" ]
    , localNames = [ "Sint Maarten (Nederlands deel)", "Sint Maarten (Dutch part)" ]
    , name = "Sint Maarten (Dutch part)"
    , nanpPrefix = "1721"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "0"
    , nationality = "Dutch"
    , number = "534"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countrySXSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "SX"
    , unofficialNames = [ "Sint Maarten", "???????????????????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Slovakia
-}
countrySK : Country
countrySK =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "SK"
    , alpha3 = "SVK"
    , continent = Continent.Europe
    , countryCode = "421"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "LO"
    , internationalPrefix = "00"
    , ioc = "SVK"
    , languagesOfficial = [ "sk" ]
    , languagesSpoken = [ "sk" ]
    , localNames = [ "Slovensko" ]
    , name = "Slovakia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Slovak"
    , number = "703"
    , postalCode = True
    , postalCodeFormat = "\\d{3} ?\\d{2}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countrySKSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "SK"
    , unofficialNames = [ "Slovakia", "Slowakei", "Slovaquie", "Rep??blica Eslovaca", "???????????????", "Slowakije" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Slovenia
-}
countrySI : Country
countrySI =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "SI"
    , alpha3 = "SVN"
    , continent = Continent.Europe
    , countryCode = "386"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "SI"
    , internationalPrefix = "00"
    , ioc = "SLO"
    , languagesOfficial = [ "sl" ]
    , languagesSpoken = [ "sl" ]
    , localNames = [ "Slovenija" ]
    , name = "Slovenia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "0"
    , nationality = "Slovene"
    , number = "705"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countrySISubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "SI"
    , unofficialNames = [ "Slovenia", "Slowenien", "Slov??nie", "Eslovenia", "???????????????", "Sloveni??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Solomon Islands
-}
countrySB : Country
countrySB =
    { addressFormat = ""
    , alpha2 = "SB"
    , alpha3 = "SLB"
    , continent = Continent.Australia
    , countryCode = "677"
    , currencyCode = "SBD"
    , emoji = "????????"
    , gec = "BP"
    , internationalPrefix = "00"
    , ioc = "SOL"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Solomon Islands" ]
    , name = "Solomon Islands"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 5 ]
    , nationalPrefix = "None"
    , nationality = "Solomon Islander"
    , number = "090"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countrySBSubdivisions
    , subregion = Subregion.Melanesia
    , unLocode = "SB"
    , unofficialNames = [ "Solomon Islands", "Salomonen", "??les Salomon", "Islas Salom??n", "??????????????????", "Salomonseilanden" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Somalia
-}
countrySO : Country
countrySO =
    { addressFormat = ""
    , alpha2 = "SO"
    , alpha3 = "SOM"
    , continent = Continent.Africa
    , countryCode = "252"
    , currencyCode = "SOS"
    , emoji = "????????"
    , gec = "SO"
    , internationalPrefix = "00"
    , ioc = "SOM"
    , languagesOfficial = [ "so", "ar" ]
    , languagesSpoken = [ "so", "ar" ]
    , localNames = [ "Soomaaliya", "??????????????\u{200E}" ]
    , name = "Somalia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8 ]
    , nationalPrefix = "None"
    , nationality = "Somali"
    , number = "706"
    , postalCode = True
    , postalCodeFormat = "[A-Z]{2} ?\\d{5}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countrySOSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "SO"
    , unofficialNames = [ "Somalia", "??????????????", "????????????", "Somali??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| South Africa
-}
countryZA : Country
countryZA =
    { addressFormat = """{{recipient}}
{{street}}
{{city}}
{{region}}
{{postalcode}}
{{country}}
"""
    , alpha2 = "ZA"
    , alpha3 = "ZAF"
    , continent = Continent.Africa
    , countryCode = "27"
    , currencyCode = "ZAR"
    , emoji = "????????"
    , gec = "SF"
    , internationalPrefix = "09"
    , ioc = "RSA"
    , languagesOfficial = [ "af", "en", "nr", "st", "ss", "tn", "ts", "ve", "xh", "zu" ]
    , languagesSpoken = [ "af", "en", "nr", "st", "ss", "tn", "ts", "ve", "xh", "zu" ]
    , localNames = [ "Suid-Afrika", "South Africa", "Afurika Tshipembe", "Mzantsi Afrika", "IRiphabliki yaseNingizimu Afrika" ]
    , name = "South Africa"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "South African"
    , number = "710"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryZASubdivisions
    , subregion = Subregion.SouthernAfrica
    , unLocode = "ZA"
    , unofficialNames = [ "South Africa", "Republik S??dafrika", "Afrique du Sud", "Rep??blica de Sud??frica", "???????????????", "Zuid-Afrika" ]
    , worldRegion = WorldRegion.Emea
    }


{-| South Georgia and the South Sandwich Islands
-}
countryGS : Country
countryGS =
    { addressFormat = ""
    , alpha2 = "GS"
    , alpha3 = "SGS"
    , continent = Continent.Antarctica
    , countryCode = "500"
    , currencyCode = "GBP"
    , emoji = "????????"
    , gec = "SX"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "South Georgia and the South Sandwich Islands" ]
    , name = "South Georgia and the South Sandwich Islands"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "South Georgia and the South Sandwich Islander"
    , number = "239"
    , postalCode = True
    , postalCodeFormat = "SIQQ 1ZZ"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.SouthAmerica
    , unLocode = "GS"
    , unofficialNames = [ "South Georgia", "South Georgia and the South Sandwich Islands", "S??dgeorgien und die S??dlichen Sandwichinseln", "???????????????????????????????????????????????????????????????", "Zuid-Georgia en Zuidelijke Sandwicheilanden" ]
    , worldRegion = WorldRegion.Amer
    }


{-| South Sudan
-}
countrySS : Country
countrySS =
    { addressFormat = ""
    , alpha2 = "SS"
    , alpha3 = "SSD"
    , continent = Continent.Africa
    , countryCode = "211"
    , currencyCode = "SSP"
    , emoji = "????????"
    , gec = "OD"
    , internationalPrefix = "0"
    , ioc = ""
    , languagesOfficial = [ "ar", "en" ]
    , languagesSpoken = [ "ar", "en" ]
    , localNames = [ "???????? ????????????????", "South Sudan" ]
    , name = "South Sudan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "South Sudanese"
    , number = "728"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Sun
    , subdivisions = countrySSSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "SS"
    , unofficialNames = [ "South Sudan", "S??dsudan", "???????????????", "Zuid-Soedan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Spain
-}
countryES : Country
countryES =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{region}}
{{country}}
"""
    , alpha2 = "ES"
    , alpha3 = "ESP"
    , continent = Continent.Europe
    , countryCode = "34"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = "SP"
    , internationalPrefix = "00"
    , ioc = "ESP"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Espa??a" ]
    , name = "Spain"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "None"
    , nationality = "Spanish"
    , number = "724"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryESSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "ES"
    , unofficialNames = [ "Spain", "Spanien", "Espagne", "Espa??a", "????????????", "Spanje" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Sri Lanka
-}
countryLK : Country
countryLK =
    { addressFormat = ""
    , alpha2 = "LK"
    , alpha3 = "LKA"
    , continent = Continent.Asia
    , countryCode = "94"
    , currencyCode = "LKR"
    , emoji = "????????"
    , gec = "CE"
    , internationalPrefix = "00"
    , ioc = "SRI"
    , languagesOfficial = [ "si", "ta" ]
    , languagesSpoken = [ "si", "ta" ]
    , localNames = [ "??????\u{200D}?????? ???????????????", "??????????????????" ]
    , name = "Sri Lanka"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "0"
    , nationality = "Sri Lankan"
    , number = "144"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryLKSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "LK"
    , unofficialNames = [ "Sri Lanka", "???????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Sudan
-}
countrySD : Country
countrySD =
    { addressFormat = ""
    , alpha2 = "SD"
    , alpha3 = "SDN"
    , continent = Continent.Africa
    , countryCode = "249"
    , currencyCode = "SDG"
    , emoji = "????????"
    , gec = "SU"
    , internationalPrefix = "00"
    , ioc = "SUD"
    , languagesOfficial = [ "ar", "en" ]
    , languagesSpoken = [ "ar", "en" ]
    , localNames = [ "??????????????", "Sudan" ]
    , name = "Sudan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Sudanese"
    , number = "729"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countrySDSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "SD"
    , unofficialNames = [ "Sudan", "??????????????", "Soudan", "Sud??n", "????????????", "Soedan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Suriname
-}
countrySR : Country
countrySR =
    { addressFormat = ""
    , alpha2 = "SR"
    , alpha3 = "SUR"
    , continent = Continent.SouthAmerica
    , countryCode = "597"
    , currencyCode = "SRD"
    , emoji = "????????"
    , gec = "NS"
    , internationalPrefix = "00"
    , ioc = "SUR"
    , languagesOfficial = [ "nl" ]
    , languagesSpoken = [ "nl" ]
    , localNames = [ "Suriname" ]
    , name = "Suriname"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6 ]
    , nationalPrefix = "0"
    , nationality = "Surinamer"
    , number = "740"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countrySRSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "SR"
    , unofficialNames = [ "Suriname", "Surinam", "????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Svalbard and Jan Mayen
-}
countrySJ : Country
countrySJ =
    { addressFormat = ""
    , alpha2 = "SJ"
    , alpha3 = "SJM"
    , continent = Continent.Europe
    , countryCode = "47"
    , currencyCode = "NOK"
    , emoji = "????????"
    , gec = "SV"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "no" ]
    , languagesSpoken = [ "no" ]
    , localNames = [ "" ]
    , name = "Svalbard and Jan Mayen"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Norwegian"
    , number = "744"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countrySJSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "SJ"
    , unofficialNames = [ "Svalbard and Jan Mayen", "Svalbard und Jan Mayen", "??les Svalbard et Jan Mayen", "Islas Svalbard y Jan Mayen", "?????????????????????????????????????????????????????????", "Svalbard en Jan Mayen" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Sweden
-}
countrySE : Country
countrySE =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "SE"
    , alpha3 = "SWE"
    , continent = Continent.Europe
    , countryCode = "46"
    , currencyCode = "SEK"
    , emoji = "????????"
    , gec = "SW"
    , internationalPrefix = "00"
    , ioc = "SWE"
    , languagesOfficial = [ "sv" ]
    , languagesSpoken = [ "sv" ]
    , localNames = [ "Sverige" ]
    , name = "Sweden"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Swedish"
    , number = "752"
    , postalCode = True
    , postalCodeFormat = "\\d{3} ?\\d{2}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countrySESubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "SE"
    , unofficialNames = [ "Sweden", "Schweden", "Su??de", "Suecia", "??????????????????", "Zweden" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Switzerland
-}
countryCH : Country
countryCH =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "CH"
    , alpha3 = "CHE"
    , continent = Continent.Europe
    , countryCode = "41"
    , currencyCode = "CHF"
    , emoji = "????????"
    , gec = "SZ"
    , internationalPrefix = "00"
    , ioc = "SUI"
    , languagesOfficial = [ "de", "fr", "it" ]
    , languagesSpoken = [ "de", "fr", "it" ]
    , localNames = [ "Schweiz", "Suisse", "Svizzera" ]
    , name = "Switzerland"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9, 10 ]
    , nationalPrefix = "0"
    , nationality = "Swiss"
    , number = "756"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryCHSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "CH"
    , unofficialNames = [ "Switzerland", "Schweiz", "Suisse", "Suiza", "?????????", "Zwitserland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Syrian Arab Republic
-}
countrySY : Country
countrySY =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "SY"
    , alpha3 = "SYR"
    , continent = Continent.Asia
    , countryCode = "963"
    , currencyCode = "SYP"
    , emoji = "????????"
    , gec = "SY"
    , internationalPrefix = "00"
    , ioc = "SYR"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "??????????" ]
    , name = "Syrian Arab Republic"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8 ]
    , nationalPrefix = "0"
    , nationality = "Syrian"
    , number = "760"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countrySYSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "SY"
    , unofficialNames = [ "Syria", "??????????", "??????????", "Syrien", "Syrie", "Siria", "??????????????????????????????", "Syri??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Taiwan, Province of China
-}
countryTW : Country
countryTW =
    { addressFormat = """{{recipient}}
{{street}}
{{city}} {{region_short}} {{postalcode}}
{{country}}
"""
    , alpha2 = "TW"
    , alpha3 = "TWN"
    , continent = Continent.Asia
    , countryCode = "886"
    , currencyCode = "TWD"
    , emoji = "????????"
    , gec = "TW"
    , internationalPrefix = "002"
    , ioc = "TPE"
    , languagesOfficial = [ "zh" ]
    , languagesSpoken = [ "zh" ]
    , localNames = [ "??????" ]
    , name = "Taiwan, Province of China"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8 ]
    , nationalPrefix = "0"
    , nationality = "Taiwanese"
    , number = "158"
    , postalCode = True
    , postalCodeFormat = "\\d{3}(?:\\d{2})?"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryTWSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "TW"
    , unofficialNames = [ "Taiwan", "Taiw??n", "??????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Tajikistan
-}
countryTJ : Country
countryTJ =
    { addressFormat = ""
    , alpha2 = "TJ"
    , alpha3 = "TJK"
    , continent = Continent.Asia
    , countryCode = "992"
    , currencyCode = "TJS"
    , emoji = "????????"
    , gec = "TI"
    , internationalPrefix = "810"
    , ioc = "TJK"
    , languagesOfficial = [ "tg", "ru" ]
    , languagesSpoken = [ "tg", "ru" ]
    , localNames = [ "????????????????????", "??????????????????????" ]
    , name = "Tajikistan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "8"
    , nationality = "Tadzhik"
    , number = "762"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryTJSubdivisions
    , subregion = Subregion.CentralAsia
    , unLocode = "TJ"
    , unofficialNames = [ "Tajikistan", "Tadschikistan", "Tayikist??n", "??????????????????", "Tadzjikistan", "Tajikstan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Tanzania, United Republic of
-}
countryTZ : Country
countryTZ =
    { addressFormat = ""
    , alpha2 = "TZ"
    , alpha3 = "TZA"
    , continent = Continent.Africa
    , countryCode = "255"
    , currencyCode = "TZS"
    , emoji = "????????"
    , gec = "TZ"
    , internationalPrefix = "000"
    , ioc = "TAN"
    , languagesOfficial = [ "sw", "en" ]
    , languagesSpoken = [ "sw", "en" ]
    , localNames = [ "Tanzania", "Tanzania" ]
    , name = "Tanzania, United Republic of"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Tanzanian"
    , number = "834"
    , postalCode = True
    , postalCodeFormat = "\\d{4,5}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryTZSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "TZ"
    , unofficialNames = [ "Tanzania", "Tansania", "Tanzanie", "???????????????", "Tanzania United Republic" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Thailand
-}
countryTH : Country
countryTH =
    { addressFormat = ""
    , alpha2 = "TH"
    , alpha3 = "THA"
    , continent = Continent.Asia
    , countryCode = "66"
    , currencyCode = "THB"
    , emoji = "????????"
    , gec = "TH"
    , internationalPrefix = "001"
    , ioc = "THA"
    , languagesOfficial = [ "th" ]
    , languagesSpoken = [ "th" ]
    , localNames = [ "?????????" ]
    , name = "Thailand"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9, 10 ]
    , nationalPrefix = "0"
    , nationality = "Thai"
    , number = "764"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryTHSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "TH"
    , unofficialNames = [ "Thailand", "Tha??lande", "Tailandia", "??????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Timor-Leste
-}
countryTL : Country
countryTL =
    { addressFormat = ""
    , alpha2 = "TL"
    , alpha3 = "TLS"
    , continent = Continent.Asia
    , countryCode = "670"
    , currencyCode = "IDR"
    , emoji = "????????"
    , gec = "TT"
    , internationalPrefix = "None"
    , ioc = "TLS"
    , languagesOfficial = [ "pt" ]
    , languagesSpoken = [ "pt" ]
    , localNames = [ "Timor-Leste" ]
    , name = "Timor-Leste"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "East Timorese"
    , number = "626"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryTLSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "TL"
    , unofficialNames = [ "East Timor", "Timor-Leste", "Timor oriental", "Timor Oriental", "??????????????????", "Oost-Timor" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Togo
-}
countryTG : Country
countryTG =
    { addressFormat = ""
    , alpha2 = "TG"
    , alpha3 = "TGO"
    , continent = Continent.Africa
    , countryCode = "228"
    , currencyCode = "XOF"
    , emoji = "????????"
    , gec = "TO"
    , internationalPrefix = "00"
    , ioc = "TOG"
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Togo" ]
    , name = "Togo"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Togolese"
    , number = "768"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryTGSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "TG"
    , unofficialNames = [ "Togo", "?????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Tokelau
-}
countryTK : Country
countryTK =
    { addressFormat = ""
    , alpha2 = "TK"
    , alpha3 = "TKL"
    , continent = Continent.Australia
    , countryCode = "690"
    , currencyCode = "NZD"
    , emoji = "????????"
    , gec = "TL"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Tokelau" ]
    , name = "Tokelau"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 4 ]
    , nationalPrefix = "None"
    , nationality = "Tokelauan"
    , number = "772"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryTKSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "TK"
    , unofficialNames = [ "Tokelau", "??les Tokelau", "Islas Tokelau", "????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Tonga
-}
countryTO : Country
countryTO =
    { addressFormat = ""
    , alpha2 = "TO"
    , alpha3 = "TON"
    , continent = Continent.Australia
    , countryCode = "676"
    , currencyCode = "TOP"
    , emoji = "????????"
    , gec = "TN"
    , internationalPrefix = "00"
    , ioc = "TGA"
    , languagesOfficial = [ "en", "to" ]
    , languagesSpoken = [ "en", "to" ]
    , localNames = [ "Tonga" ]
    , name = "Tonga"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 5, 6, 7 ]
    , nationalPrefix = "None"
    , nationality = "Tongan"
    , number = "776"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryTOSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "TO"
    , unofficialNames = [ "Tonga", "?????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Trinidad and Tobago
-}
countryTT : Country
countryTT =
    { addressFormat = ""
    , alpha2 = "TT"
    , alpha3 = "TTO"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "TTD"
    , emoji = "????????"
    , gec = "TD"
    , internationalPrefix = "011"
    , ioc = "TRI"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Trinidad and Tobago" ]
    , name = "Trinidad and Tobago"
    , nanpPrefix = "1868"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Trinidadian"
    , number = "780"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryTTSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "TT"
    , unofficialNames = [ "Trinidad and Tobago", "Trinidad und Tobago", "Trinit?? et Tobago", "Trinidad y Tobago", "??????????????????????????????", "Trinidad en Tobago" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Tunisia
-}
countryTN : Country
countryTN =
    { addressFormat = ""
    , alpha2 = "TN"
    , alpha3 = "TUN"
    , continent = Continent.Africa
    , countryCode = "216"
    , currencyCode = "TND"
    , emoji = "????????"
    , gec = "TS"
    , internationalPrefix = "00"
    , ioc = "TUN"
    , languagesOfficial = [ "ar", "fr" ]
    , languagesSpoken = [ "ar", "fr" ]
    , localNames = [ "????????", "Tunisie" ]
    , name = "Tunisia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "None"
    , nationality = "Tunisian"
    , number = "788"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryTNSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "TN"
    , unofficialNames = [ "Tunisia", "????????", "Tunesien", "Tunisie", "T??nez", "???????????????", "Tunesi??" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Turkey
-}
countryTR : Country
countryTR =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "TR"
    , alpha3 = "TUR"
    , continent = Continent.Europe
    , countryCode = "90"
    , currencyCode = "TRY"
    , emoji = "????????"
    , gec = "TU"
    , internationalPrefix = "00"
    , ioc = "TUR"
    , languagesOfficial = [ "tr" ]
    , languagesSpoken = [ "tr" ]
    , localNames = [ "T??rkiye" ]
    , name = "Turkey"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "0"
    , nationality = "Turkish"
    , number = "792"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryTRSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "TR"
    , unofficialNames = [ "Turkey", "T??rkei", "Turquie", "Turqu??a", "?????????", "Turkije" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Turkmenistan
-}
countryTM : Country
countryTM =
    { addressFormat = ""
    , alpha2 = "TM"
    , alpha3 = "TKM"
    , continent = Continent.Asia
    , countryCode = "993"
    , currencyCode = "TMT"
    , emoji = "????????"
    , gec = "TX"
    , internationalPrefix = "810"
    , ioc = "TKM"
    , languagesOfficial = [ "tk", "ru" ]
    , languagesSpoken = [ "tk", "ru" ]
    , localNames = [ "T??rkmenistan", "????????????????????????" ]
    , name = "Turkmenistan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8 ]
    , nationalPrefix = "8"
    , nationality = "Turkmen"
    , number = "795"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryTMSubdivisions
    , subregion = Subregion.CentralAsia
    , unLocode = "TM"
    , unofficialNames = [ "Turkmenistan", "Turkm??nistan", "Turkmenist??n", "????????????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Turks and Caicos Islands
-}
countryTC : Country
countryTC =
    { addressFormat = ""
    , alpha2 = "TC"
    , alpha3 = "TCA"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "TK"
    , internationalPrefix = "011"
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Turks and Caicos Islands" ]
    , name = "Turks and Caicos Islands"
    , nanpPrefix = "1649"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Turks and Caicos Islander"
    , number = "796"
    , postalCode = True
    , postalCodeFormat = "TKCA 1ZZ"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.Caribbean
    , unLocode = "TC"
    , unofficialNames = [ "Turks and Caicos Islands", "Turks- und Caicosinseln", "??les Turks et Ca??cos", "Islas Turks y Caicos", "?????????????????????????????????", "Turks- en Caicoseilanden", "Turks and Caicos" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Tuvalu
-}
countryTV : Country
countryTV =
    { addressFormat = ""
    , alpha2 = "TV"
    , alpha3 = "TUV"
    , continent = Continent.Australia
    , countryCode = "688"
    , currencyCode = "AUD"
    , emoji = "????????"
    , gec = "TV"
    , internationalPrefix = "00"
    , ioc = "TUV"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Tuvalu" ]
    , name = "Tuvalu"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 5 ]
    , nationalPrefix = "None"
    , nationality = "Tuvaluan"
    , number = "798"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryTVSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "TV"
    , unofficialNames = [ "Tuvalu", "?????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Uganda
-}
countryUG : Country
countryUG =
    { addressFormat = ""
    , alpha2 = "UG"
    , alpha3 = "UGA"
    , continent = Continent.Africa
    , countryCode = "256"
    , currencyCode = "UGX"
    , emoji = "????????"
    , gec = "UG"
    , internationalPrefix = "000"
    , ioc = "UGA"
    , languagesOfficial = [ "en", "sw" ]
    , languagesSpoken = [ "en", "sw" ]
    , localNames = [ "Uganda", "Uganda" ]
    , name = "Uganda"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Ugandan"
    , number = "800"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryUGSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "UG"
    , unofficialNames = [ "Uganda", "????????????", "Oeganda" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Ukraine
-}
countryUA : Country
countryUA =
    { addressFormat = """{{recipient}}
{{street}}
{{city}} {{region_short}}
{{postalcode}}
{{country}}
"""
    , alpha2 = "UA"
    , alpha3 = "UKR"
    , continent = Continent.Europe
    , countryCode = "380"
    , currencyCode = "UAH"
    , emoji = "????????"
    , gec = "UP"
    , internationalPrefix = "810"
    , ioc = "UKR"
    , languagesOfficial = [ "uk" ]
    , languagesSpoken = [ "uk" ]
    , localNames = [ "??????????????" ]
    , name = "Ukraine"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9 ]
    , nationalPrefix = "8"
    , nationality = "Ukrainian"
    , number = "804"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryUASubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "UA"
    , unofficialNames = [ "Ukraine", "Ucrania", "???????????????", "Oekra??ne", "??????????????", "??????????????", "??????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| United Arab Emirates
-}
countryAE : Country
countryAE =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "AE"
    , alpha3 = "ARE"
    , continent = Continent.Asia
    , countryCode = "971"
    , currencyCode = "AED"
    , emoji = "????????"
    , gec = "AE"
    , internationalPrefix = "00"
    , ioc = "UAE"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "???????????????? ???????????????? ????????????????" ]
    , name = "United Arab Emirates"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Emirian"
    , number = "784"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryAESubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "AE"
    , unofficialNames = [ "United Arab Emirates", "???????????????? ?????????????? ??????????????", "Vereinigte Arabische Emirate", "??mirats Arabes Unis", "Emiratos ??rabes Unidos", "????????????????????????", "Verenigde Arabische Emiraten" ]
    , worldRegion = WorldRegion.Emea
    }


{-| United Kingdom of Great Britain and Northern Ireland
-}
countryGB : Country
countryGB =
    { addressFormat = """{{recipient}}
{{street}}
{{city}}
{{region}}
{{postalcode}}
{{country}}
"""
    , alpha2 = "GB"
    , alpha3 = "GBR"
    , continent = Continent.Europe
    , countryCode = "44"
    , currencyCode = "GBP"
    , emoji = "????????"
    , gec = "UK"
    , internationalPrefix = "00"
    , ioc = "GBR"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "United Kingdom" ]
    , name = "United Kingdom of Great Britain and Northern Ireland"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 10, 11 ]
    , nationalPrefix = "0"
    , nationality = "British"
    , number = "826"
    , postalCode = True
    , postalCodeFormat = "GIR ?0AA|(?:(?:AB|AL|B|BA|BB|BD|BF|BH|BL|BN|BR|BS|BT|BX|CA|CB|CF|CH|CM|CO|CR|CT|CV|CW|DA|DD|DE|DG|DH|DL|DN|DT|DY|E|EC|EH|EN|EX|FK|FY|G|GL|GY|GU|HA|HD|HG|HP|HR|HS|HU|HX|IG|IM|IP|IV|JE|KA|KT|KW|KY|L|LA|LD|LE|LL|LN|LS|LU|M|ME|MK|ML|N|NE|NG|NN|NP|NR|NW|OL|OX|PA|PE|PH|PL|PO|PR|RG|RH|RM|S|SA|SE|SG|SK|SL|SM|SN|SO|SP|SR|SS|ST|SW|SY|TA|TD|TF|TN|TQ|TR|TS|TW|UB|W|WA|WC|WD|WF|WN|WR|WS|WV|YO|ZE)(?:\\d[\\dA-Z]? ?\\d[ABD-HJLN-UW-Z]{2}))|BFPO ?\\d{1,4}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryGBSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "GB"
    , unofficialNames = [ "United Kingdom", "The United Kingdom", "Vereinigtes K??nigreich", "Royaume-Uni", "Reino Unido", "????????????", "Verenigd Koninkrijk", "Great Britain (UK)", "UK", "????????????????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| United States Minor Outlying Islands
-}
countryUM : Country
countryUM =
    { addressFormat = ""
    , alpha2 = "UM"
    , alpha3 = "UMI"
    , continent = Continent.Australia
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = ""
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "United States Minor Outlying Islands" ]
    , name = "United States Minor Outlying Islands"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "American"
    , number = "581"
    , postalCode = True
    , postalCodeFormat = "96898"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryUMSubdivisions
    , subregion = Subregion.NorthernAmerica
    , unLocode = "UM"
    , unofficialNames = [ "United States Minor Outlying Islands", "US-Amerikanische Hoheitsgebiete", "D??pendances am??ricaines", "Islas menores de Estados Unidos", "????????????????????????", "Kleine afgelegen eilanden van de Verenigde Staten" ]
    , worldRegion = WorldRegion.Amer
    }


{-| United States of America
-}
countryUS : Country
countryUS =
    { addressFormat = """{{recipient}}
{{street}}
{{city}} {{region_short}} {{postalcode}}
{{country}}
"""
    , alpha2 = "US"
    , alpha3 = "USA"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "US"
    , internationalPrefix = "011"
    , ioc = "USA"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "United States" ]
    , name = "United States of America"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "American"
    , number = "840"
    , postalCode = True
    , postalCodeFormat = "(\\d{5})(?:[ \\-](\\d{4}))?"
    , region = Region.Americas
    , startOfWeek = Time.Sun
    , subdivisions = countryUSSubdivisions
    , subregion = Subregion.NorthernAmerica
    , unLocode = "US"
    , unofficialNames = [ "United States", "Murica", "Vereinigte Staaten von Amerika", "??tats-Unis", "Estados Unidos", "?????????????????????", "Verenigde Staten" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Uruguay
-}
countryUY : Country
countryUY =
    { addressFormat = ""
    , alpha2 = "UY"
    , alpha3 = "URY"
    , continent = Continent.SouthAmerica
    , countryCode = "598"
    , currencyCode = "UYU"
    , emoji = "????????"
    , gec = "UY"
    , internationalPrefix = "00"
    , ioc = "URU"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Uruguay" ]
    , name = "Uruguay"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8 ]
    , nationalPrefix = "0"
    , nationality = "Uruguayan"
    , number = "858"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryUYSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "UY"
    , unofficialNames = [ "Uruguay", "???????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Uzbekistan
-}
countryUZ : Country
countryUZ =
    { addressFormat = ""
    , alpha2 = "UZ"
    , alpha3 = "UZB"
    , continent = Continent.Asia
    , countryCode = "998"
    , currencyCode = "UZS"
    , emoji = "????????"
    , gec = "UZ"
    , internationalPrefix = "810"
    , ioc = "UZB"
    , languagesOfficial = [ "uz", "ru" ]
    , languagesSpoken = [ "uz", "ru" ]
    , localNames = [ "O??zbekiston", "????????????????????" ]
    , name = "Uzbekistan"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "8"
    , nationality = "Uzbekistani"
    , number = "860"
    , postalCode = True
    , postalCodeFormat = "\\d{6}"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryUZSubdivisions
    , subregion = Subregion.CentralAsia
    , unLocode = "UZ"
    , unofficialNames = [ "Uzbekistan", "Usbekistan", "Ouzb??kistan", "Uzbekist??n", "?????????????????????", "Oezbekistan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Vanuatu
-}
countryVU : Country
countryVU =
    { addressFormat = ""
    , alpha2 = "VU"
    , alpha3 = "VUT"
    , continent = Continent.Australia
    , countryCode = "678"
    , currencyCode = "VUV"
    , emoji = "????????"
    , gec = "NH"
    , internationalPrefix = "00"
    , ioc = "VAN"
    , languagesOfficial = [ "bi", "en", "fr" ]
    , languagesSpoken = [ "bi", "en", "fr" ]
    , localNames = [ "Vanuatu", "Vanuatu", "Vanuatu" ]
    , name = "Vanuatu"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 5, 6, 7 ]
    , nationalPrefix = "None"
    , nationality = "Ni-Vanuatu"
    , number = "548"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryVUSubdivisions
    , subregion = Subregion.Melanesia
    , unLocode = "VU"
    , unofficialNames = [ "Vanuatu", "????????????" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Venezuela (Bolivarian Republic of)
-}
countryVE : Country
countryVE =
    { addressFormat = ""
    , alpha2 = "VE"
    , alpha3 = "VEN"
    , continent = Continent.SouthAmerica
    , countryCode = "58"
    , currencyCode = "VES"
    , emoji = "????????"
    , gec = "VE"
    , internationalPrefix = "00"
    , ioc = "VEN"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Venezuela" ]
    , name = "Venezuela (Bolivarian Republic of)"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "0"
    , nationality = "Venezuelan"
    , number = "862"
    , postalCode = True
    , postalCodeFormat = "\\d{4}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryVESubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "VE"
    , unofficialNames = [ "Venezuela", "???????????????????????????????????????" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Viet Nam
-}
countryVN : Country
countryVN =
    { addressFormat = """{{recipient}}
{{street}}
{{city}}
{{region}}
{{country}}
"""
    , alpha2 = "VN"
    , alpha3 = "VNM"
    , continent = Continent.Asia
    , countryCode = "84"
    , currencyCode = "VND"
    , emoji = "????????"
    , gec = "VM"
    , internationalPrefix = "00"
    , ioc = "VIE"
    , languagesOfficial = [ "vi" ]
    , languagesSpoken = [ "vi" ]
    , localNames = [ "Vi???t Nam" ]
    , name = "Viet Nam"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8, 9, 10 ]
    , nationalPrefix = "0"
    , nationality = "Vietnamese"
    , number = "704"
    , postalCode = True
    , postalCodeFormat = "\\d{5}\\d?"
    , region = Region.Asia
    , startOfWeek = Time.Mon
    , subdivisions = countryVNSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "VN"
    , unofficialNames = [ "Vietnam", "????????????", "Viet Nam" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Virgin Islands (British)
-}
countryVG : Country
countryVG =
    { addressFormat = ""
    , alpha2 = "VG"
    , alpha3 = "VGB"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "VI"
    , internationalPrefix = "011"
    , ioc = "IVB"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Virgin Islands, British" ]
    , name = "Virgin Islands (British)"
    , nanpPrefix = "1284"
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Virgin Islander"
    , number = "092"
    , postalCode = True
    , postalCodeFormat = "VG\\d{4}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = []
    , subregion = Subregion.Caribbean
    , unLocode = "VG"
    , unofficialNames = [ "British Virgin Islands", "Britische Jungferninseln", "??les Vierges britanniques", "Islas V??rgenes del Reino Unido", "????????????????????????????????????", "Britse Maagdeneilanden", "Virgin Islands (British)" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Virgin Islands (U.S.)
-}
countryVI : Country
countryVI =
    { addressFormat = ""
    , alpha2 = "VI"
    , alpha3 = "VIR"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "VQ"
    , internationalPrefix = "011"
    , ioc = "ISV"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Virgin Islands, U.S." ]
    , name = "Virgin Islands (U.S.)"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 3 ]
    , nationalNumberLengths = [ 10 ]
    , nationalPrefix = "1"
    , nationality = "Virgin Islander"
    , number = "850"
    , postalCode = True
    , postalCodeFormat = "(008(?:(?:[0-4]\\d)|(?:5[01])))(?:[ \\-](\\d{4}))?"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = countryVISubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "VI"
    , unofficialNames = [ "Virgin Islands of the United States", "Amerikanische Jungferninseln", "??les Vierges am??ricaines", "Islas V??rgenes de los Estados Unidos", "????????????????????????????????????", "Amerikaanse Maagdeneilanden", "Virgin Islands (U.S.)", "United States Virgin Islands" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Wallis and Futuna
-}
countryWF : Country
countryWF =
    { addressFormat = ""
    , alpha2 = "WF"
    , alpha3 = "WLF"
    , continent = Continent.Australia
    , countryCode = "681"
    , currencyCode = "XPF"
    , emoji = "????????"
    , gec = "WF"
    , internationalPrefix = "19"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Wallis et Futuna" ]
    , name = "Wallis and Futuna"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 6 ]
    , nationalPrefix = "None"
    , nationality = "Wallis and Futuna Islander"
    , number = "876"
    , postalCode = True
    , postalCodeFormat = "986\\d{2}"
    , region = Region.Oceania
    , startOfWeek = Time.Mon
    , subdivisions = countryWFSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "WF"
    , unofficialNames = [ "Wallis and Futuna", "Wallis und Futuna", "Wallis et Futuna", "Wallis y Futuna", "????????????????????????", "Wallis en Futuna" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Western Sahara
-}
countryEH : Country
countryEH =
    { addressFormat = ""
    , alpha2 = "EH"
    , alpha3 = "ESH"
    , continent = Continent.Africa
    , countryCode = "212"
    , currencyCode = "MAD"
    , emoji = "????????"
    , gec = "WI"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "es", "fr" ]
    , languagesSpoken = [ "es", "fr" ]
    , localNames = [ "Sahara Occidental", "Sahara occidental" ]
    , name = "Western Sahara"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "Sahrawi"
    , number = "732"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryEHSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "EH"
    , unofficialNames = [ "Western Sahara", "?????????????? ??????????????", "Westsahara", "Sahara Occidental", "????????????", "Westelijke Sahara" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Yemen
-}
countryYE : Country
countryYE =
    { addressFormat = """{{recipient}}
{{street}}
{{postalcode}} {{city}}
{{country}}
"""
    , alpha2 = "YE"
    , alpha3 = "YEM"
    , continent = Continent.Asia
    , countryCode = "967"
    , currencyCode = "YER"
    , emoji = "????????"
    , gec = "YM"
    , internationalPrefix = "00"
    , ioc = "YEM"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "??????????" ]
    , name = "Yemen"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7, 8, 9 ]
    , nationalPrefix = "0"
    , nationality = "Yemeni"
    , number = "887"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Asia
    , startOfWeek = Time.Sun
    , subdivisions = countryYESubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "YE"
    , unofficialNames = [ "Yemen", "??????????", "Jemen", "Y??men", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Zambia
-}
countryZM : Country
countryZM =
    { addressFormat = ""
    , alpha2 = "ZM"
    , alpha3 = "ZMB"
    , continent = Continent.Africa
    , countryCode = "260"
    , currencyCode = "ZMW"
    , emoji = "????????"
    , gec = "ZA"
    , internationalPrefix = "00"
    , ioc = "ZAM"
    , languagesOfficial = [ "en" ]
    , languagesSpoken = [ "en" ]
    , localNames = [ "Zambia" ]
    , name = "Zambia"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 9 ]
    , nationalPrefix = "0"
    , nationality = "Zambian"
    , number = "894"
    , postalCode = True
    , postalCodeFormat = "\\d{5}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryZMSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "ZM"
    , unofficialNames = [ "Zambia", "Sambia", "Zambie", "????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Zimbabwe
-}
countryZW : Country
countryZW =
    { addressFormat = ""
    , alpha2 = "ZW"
    , alpha3 = "ZWE"
    , continent = Continent.Africa
    , countryCode = "263"
    , currencyCode = "USD"
    , emoji = "????????"
    , gec = "ZI"
    , internationalPrefix = "00"
    , ioc = "ZIM"
    , languagesOfficial = [ "en", "sn", "nd" ]
    , languagesSpoken = [ "en", "sn", "nd" ]
    , localNames = [ "Zimbabwe" ]
    , name = "Zimbabwe"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 8, 9, 10, 11 ]
    , nationalPrefix = "0"
    , nationality = "Zimbabwean"
    , number = "716"
    , postalCode = False
    , postalCodeFormat = ""
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countryZWSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "ZW"
    , unofficialNames = [ "Zimbabwe", "Simbabwe", "Zimbabue", "???????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| eSwatini
-}
countrySZ : Country
countrySZ =
    { addressFormat = ""
    , alpha2 = "SZ"
    , alpha3 = "SWZ"
    , continent = Continent.Africa
    , countryCode = "268"
    , currencyCode = "SZL"
    , emoji = "????????"
    , gec = "WZ"
    , internationalPrefix = "00"
    , ioc = "SWZ"
    , languagesOfficial = [ "en", "ss" ]
    , languagesSpoken = [ "en", "ss" ]
    , localNames = [ "Eswatini" ]
    , name = "eSwatini"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = [ 2 ]
    , nationalNumberLengths = [ 7 ]
    , nationalPrefix = "None"
    , nationality = "Swazi"
    , number = "748"
    , postalCode = True
    , postalCodeFormat = "[HLMS]\\d{3}"
    , region = Region.Africa
    , startOfWeek = Time.Mon
    , subdivisions = countrySZSubdivisions
    , subregion = Subregion.SouthernAfrica
    , unLocode = "SZ"
    , unofficialNames = [ "Swaziland", "Swasiland", "Suazilandia", "??????????????????" ]
    , worldRegion = WorldRegion.Emea
    }


{-| ??land Islands
-}
countryAX : Country
countryAX =
    { addressFormat = ""
    , alpha2 = "AX"
    , alpha3 = "ALA"
    , continent = Continent.Europe
    , countryCode = "358"
    , currencyCode = "EUR"
    , emoji = "????????"
    , gec = ""
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "sv" ]
    , languagesSpoken = [ "sv" ]
    , localNames = [ "??land" ]
    , name = "??land Islands"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "Swedish"
    , number = "248"
    , postalCode = True
    , postalCodeFormat = "22\\d{3}"
    , region = Region.Europe
    , startOfWeek = Time.Mon
    , subdivisions = countryAXSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "AX"
    , unofficialNames = [ "??land Islands", "??land", "?????????????????????", "??landeilanden" ]
    , worldRegion = WorldRegion.Emea
    }


{-| -}
countryADSubdivisions : List Subdivision
countryADSubdivisions =
    [ { name = "Canillo"
      , code = "02"
      , unofficialNames = [ "Canillo" ]
      }
    , { name = "Encamp"
      , code = "03"
      , unofficialNames = [ "Encamp" ]
      }
    , { name = "La Massana"
      , code = "04"
      , unofficialNames = [ "La Massana" ]
      }
    , { name = "Ordino"
      , code = "05"
      , unofficialNames = [ "Ordino" ]
      }
    , { name = "Sant Juli?? de L??ria"
      , code = "06"
      , unofficialNames = [ "Saint Julia de Loria" ]
      }
    , { name = "Andorra la Vella"
      , code = "07"
      , unofficialNames = [ "Andorra la Vieja", "Andorre-la-Vieille" ]
      }
    , { name = "Escaldes-Engordany"
      , code = "08"
      , unofficialNames = [ "Les Escaldes" ]
      }
    ]


{-| -}
countryAESubdivisions : List Subdivision
countryAESubdivisions =
    [ { name = "'Ajm??n"
      , code = "AJ"
      , unofficialNames = [ "-?????????? ???????????? - Ujman" ]
      }
    , { name = "Ab?? Z??aby [Abu Dhabi]"
      , code = "AZ"
      , unofficialNames = [ "?????? ??????", "Abu Zabi", "Abu Zaby", "Ab?? Z??ab??", "Abu Dhabi", "Abu Dhabi" ]
      }
    , { name = "Dubayy"
      , code = "DU"
      , unofficialNames = [ "??????", "Dubai" ]
      }
    , { name = "Al Fujayrah"
      , code = "FU"
      , unofficialNames = [ "??????????????", "Al Fujayrah", "Fujairah" ]
      }
    , { name = "Ra's al Khaymah"
      , code = "RK"
      , unofficialNames = [ "?????????? ?????? ????????????", "Ras al-Khaimah" ]
      }
    , { name = "Ash Shariqah [Sharjah]"
      , code = "SH"
      , unofficialNames = [ "?????????? ????????????????", "Ash Shariqah" ]
      }
    , { name = "Umm al Qaywayn"
      , code = "UQ"
      , unofficialNames = [ "?????? ??????????????", "Umm al-Quwain" ]
      }
    ]


{-| -}
countryAFSubdivisions : List Subdivision
countryAFSubdivisions =
    [ { name = "Balkh"
      , code = "BAL"
      , unofficialNames = [ "Balkh" ]
      }
    , { name = "Bamian"
      , code = "BAM"
      , unofficialNames = [ "Bamian", "Bamiyan", "B??m????n" ]
      }
    , { name = "Badghis"
      , code = "BDG"
      , unofficialNames = [ "Badghis", "Badgis", "B??dgh??s" ]
      }
    , { name = "Badakhshan"
      , code = "BDS"
      , unofficialNames = [ "Badah????an" ]
      }
    , { name = "Baghlan"
      , code = "BGL"
      , unofficialNames = [ "Baghlan", "Baghl??n", "Baglan" ]
      }
    , { name = "Daykondi"
      , code = "DAY"
      , unofficialNames = [ "Daikondi" ]
      }
    , { name = "Farah"
      , code = "FRA"
      , unofficialNames = [ "Fahrah" ]
      }
    , { name = "Faryab"
      , code = "FYB"
      , unofficialNames = [ "Fariab" ]
      }
    , { name = "Ghazni"
      , code = "GHA"
      , unofficialNames = [ "Gazni", "Ghazni" ]
      }
    , { name = "Ghowr"
      , code = "GHO"
      , unofficialNames = [ "Ghawr", "Ghor", "Ghowr", "G??r" ]
      }
    , { name = "Helmand"
      , code = "HEL"
      , unofficialNames = [ "Helmand", "Hilmend" ]
      }
    , { name = "Herat"
      , code = "HER"
      , unofficialNames = [ "Herat" ]
      }
    , { name = "Jowzjan"
      , code = "JOW"
      , unofficialNames = [ "Jawzjan", "Jowzjan", "Jowzj??n", "Jozjan", "Juzjan" ]
      }
    , { name = "Kabul [Kabol]"
      , code = "KAB"
      , unofficialNames = [ "Kabol", "K??bol", "K??bul", "Kabul" ]
      }
    , { name = "Kandahar"
      , code = "KAN"
      , unofficialNames = [ "Kandahar" ]
      }
    , { name = "Kapisa"
      , code = "KAP"
      , unofficialNames = [ "Kapesa", "Kapisa", "Kapissa" ]
      }
    , { name = "Kondoz [Kunduz]"
      , code = "KDZ"
      , unofficialNames = [ "Kondoz", "Kond??z", "K??nduz", "Qond??z" ]
      }
    , { name = "Khowst"
      , code = "KHO"
      , unofficialNames = [ "H????st", "Khawst", "Khost", "Matun", "Mat??n", "H??awst" ]
      }
    , { name = "Konar [Kunar]"
      , code = "KNR"
      , unofficialNames = [ "Konar", "Konarh??" ]
      }
    , { name = "Laghman"
      , code = "LAG"
      , unofficialNames = [ "Laghman", "Laghm??n", "Lagman" ]
      }
    , { name = "Lowgar"
      , code = "LOW"
      , unofficialNames = [ "Lawgar", "Logar", "Loghar", "Lowgar", "Lowghar" ]
      }
    , { name = "Nangrahar [Nangarhar]"
      , code = "NAN"
      , unofficialNames = [ "Nangarhar", "Ningarhar" ]
      }
    , { name = "Nimruz"
      , code = "NIM"
      , unofficialNames = [ "Chakh??nsur", "Neemroze", "Nimroz", "Nimroze" ]
      }
    , { name = "Nurestan"
      , code = "NUR"
      , unofficialNames = [ "Nooristan", "Nouristan", "Nurestan" ]
      }
    , { name = "Oruzgan [Uruzgan]"
      , code = "ORU"
      , unofficialNames = [ "Oruzgan", "Oruzghan", "Or??zgh??n", "Uruzgan", "Uruzghan", "Ur??zgh??n" ]
      }
    , { name = "Panjshir"
      , code = "PAN"
      , unofficialNames = [ "Panjshir" ]
      }
    , { name = "Parwan"
      , code = "PAR"
      , unofficialNames = [ "Parvan", "Parv??n", "Parwan" ]
      }
    , { name = "Paktia"
      , code = "PIA"
      , unofficialNames = [ "Paktia", "Paktiya", "Pakt????" ]
      }
    , { name = "Paktika"
      , code = "PKA"
      , unofficialNames = [ "Paktika" ]
      }
    , { name = "Samangan"
      , code = "SAM"
      , unofficialNames = [ "Samangan" ]
      }
    , { name = "Sar-e Pol"
      , code = "SAR"
      , unofficialNames = [ "Sar-e Pol", "Sar-i Pol", "Sari Pol" ]
      }
    , { name = "Takhar"
      , code = "TAK"
      , unofficialNames = [ "Tahar", "Takhar", "Takh??r" ]
      }
    , { name = "Wardak [Wardag]"
      , code = "WAR"
      , unofficialNames = [ "Vardak", "Wardagh", "Wardak" ]
      }
    , { name = "Zabol [Zabul]"
      , code = "ZAB"
      , unofficialNames = [ "Zabol", "Zabul", "Z??bol" ]
      }
    ]


{-| -}
countryAGSubdivisions : List Subdivision
countryAGSubdivisions =
    [ { name = "Saint George"
      , code = "03"
      , unofficialNames = [ "Saint George" ]
      }
    , { name = "Saint John???s"
      , code = "04"
      , unofficialNames = [ "Saint John???s" ]
      }
    , { name = "Saint Mary"
      , code = "05"
      , unofficialNames = [ "Saint Mary" ]
      }
    , { name = "Saint Paul"
      , code = "06"
      , unofficialNames = [ "Saint Paul" ]
      }
    , { name = "Saint Peter"
      , code = "07"
      , unofficialNames = [ "Saint Peter" ]
      }
    , { name = "Saint Philip"
      , code = "08"
      , unofficialNames = [ "Saint Philip" ]
      }
    , { name = "Barbuda"
      , code = "10"
      , unofficialNames = [ "Barbuda" ]
      }
    , { name = "Redonda"
      , code = "X2~"
      , unofficialNames = [ "Redonda" ]
      }
    ]


{-| -}
countryAISubdivisions : List Subdivision
countryAISubdivisions =
    [ { name = "Blowing Point"
      , code = "BP"
      , unofficialNames = [ "Blowing Point" ]
      }
    , { name = "East End"
      , code = "EE"
      , unofficialNames = [ "East End" ]
      }
    , { name = "George Hill"
      , code = "GH"
      , unofficialNames = [ "George Hill" ]
      }
    , { name = "Island Harbour"
      , code = "IH"
      , unofficialNames = [ "Island Harbour" ]
      }
    , { name = "North Hill"
      , code = "NH"
      , unofficialNames = [ "North Hill" ]
      }
    , { name = "North Side"
      , code = "NS"
      , unofficialNames = [ "North Side" ]
      }
    , { name = "Sandy Ground"
      , code = "SG"
      , unofficialNames = [ "Sandy Ground" ]
      }
    , { name = "Sandy Hill"
      , code = "SH"
      , unofficialNames = [ "Sandy Hill" ]
      }
    , { name = "South Hill"
      , code = "SO"
      , unofficialNames = [ "South Hill" ]
      }
    , { name = "Stoney Ground"
      , code = "ST"
      , unofficialNames = [ "Stoney Ground" ]
      }
    , { name = "The Farrington"
      , code = "TF"
      , unofficialNames = [ "The Farrington" ]
      }
    , { name = "The Quarter"
      , code = "TQ"
      , unofficialNames = [ "The Quarter" ]
      }
    , { name = "The Valley"
      , code = "TV"
      , unofficialNames = [ "The Valley" ]
      }
    , { name = "West End"
      , code = "WE"
      , unofficialNames = [ "West End" ]
      }
    ]


{-| -}
countryALSubdivisions : List Subdivision
countryALSubdivisions =
    [ { name = "Berat"
      , code = "BR"
      , unofficialNames = [ "Berat" ]
      }
    , { name = "Bulqiz??"
      , code = "BU"
      , unofficialNames = [ "Bulqiz??" ]
      }
    , { name = "Dib??r"
      , code = "DI"
      , unofficialNames = [ "Dib??r" ]
      }
    , { name = "Delvin??"
      , code = "DL"
      , unofficialNames = [ "Delvin??" ]
      }
    , { name = "Durr??s"
      , code = "DR"
      , unofficialNames = [ "Durr??s" ]
      }
    , { name = "Devoll"
      , code = "DV"
      , unofficialNames = [ "Devoli" ]
      }
    , { name = "Elbasan"
      , code = "EL"
      , unofficialNames = [ "Elbasan" ]
      }
    , { name = "Kolonj??"
      , code = "ER"
      , unofficialNames = [ "Kolonj??" ]
      }
    , { name = "Fier"
      , code = "FR"
      , unofficialNames = [ "Fier" ]
      }
    , { name = "Gjirokast??r"
      , code = "GJ"
      , unofficialNames = [ "Gjirokast??r" ]
      }
    , { name = "Gramsh"
      , code = "GR"
      , unofficialNames = [ "Gramsh" ]
      }
    , { name = "Has"
      , code = "HA"
      , unofficialNames = [ "Has" ]
      }
    , { name = "Kavaj??"
      , code = "KA"
      , unofficialNames = [ "Kavaj??" ]
      }
    , { name = "Kurbin"
      , code = "KB"
      , unofficialNames = [ "Kurbin" ]
      }
    , { name = "Ku??ov??"
      , code = "KC"
      , unofficialNames = [ "Ku??ov??" ]
      }
    , { name = "Kor????"
      , code = "KO"
      , unofficialNames = [ "Kor????" ]
      }
    , { name = "Kruj??"
      , code = "KR"
      , unofficialNames = [ "Kruj??" ]
      }
    , { name = "Kuk??s"
      , code = "KU"
      , unofficialNames = [ "Kuk??s" ]
      }
    , { name = "Librazhd"
      , code = "LB"
      , unofficialNames = [ "Librazhd" ]
      }
    , { name = "Lezh??"
      , code = "LE"
      , unofficialNames = [ "Lezh??" ]
      }
    , { name = "Lushnj??"
      , code = "LU"
      , unofficialNames = [ "Lushnj??" ]
      }
    , { name = "Mallakast??r"
      , code = "MK"
      , unofficialNames = [ "Mallakast??r" ]
      }
    , { name = "Mal??si e Madhe"
      , code = "MM"
      , unofficialNames = [ "Malesia e Madhe" ]
      }
    , { name = "Mirdit??"
      , code = "MR"
      , unofficialNames = [ "Mirdit??" ]
      }
    , { name = "Mat"
      , code = "MT"
      , unofficialNames = [ "Mat" ]
      }
    , { name = "Pogradec"
      , code = "PG"
      , unofficialNames = [ "Pogradec" ]
      }
    , { name = "Peqin"
      , code = "PQ"
      , unofficialNames = [ "Peqin" ]
      }
    , { name = "P??rmet"
      , code = "PR"
      , unofficialNames = [ "P??rmet" ]
      }
    , { name = "Puk??"
      , code = "PU"
      , unofficialNames = [ "Puk??" ]
      }
    , { name = "Shkod??r"
      , code = "SH"
      , unofficialNames = [ "Shkod??r" ]
      }
    , { name = "Skrapar"
      , code = "SK"
      , unofficialNames = [ "Skrapar" ]
      }
    , { name = "Sarand??"
      , code = "SR"
      , unofficialNames = [ "Sarand??" ]
      }
    , { name = "Tepelen??"
      , code = "TE"
      , unofficialNames = [ "Tepelen??" ]
      }
    , { name = "Tropoj??"
      , code = "TP"
      , unofficialNames = [ "Tropoj??" ]
      }
    , { name = "Tiran??"
      , code = "TR"
      , unofficialNames = [ "Tiran??", "Tirana", "Tirana" ]
      }
    , { name = "Vlor??"
      , code = "VL"
      , unofficialNames = [ "Vlor??" ]
      }
    ]


{-| -}
countryAMSubdivisions : List Subdivision
countryAMSubdivisions =
    [ { name = "Aragacotn"
      , code = "AG"
      , unofficialNames = [ "Aragacotn" ]
      }
    , { name = "Ararat"
      , code = "AR"
      , unofficialNames = [ "Ararat" ]
      }
    , { name = "Armavir"
      , code = "AV"
      , unofficialNames = [ "Armavir" ]
      }
    , { name = "Erevan"
      , code = "ER"
      , unofficialNames = [ "Erevan" ]
      }
    , { name = "Gegark'unik'"
      , code = "GR"
      , unofficialNames = [ "Gegharkunick" ]
      }
    , { name = "Kotayk'"
      , code = "KT"
      , unofficialNames = [ "Kotaik" ]
      }
    , { name = "Lory"
      , code = "LO"
      , unofficialNames = [ "Lorri" ]
      }
    , { name = "??irak"
      , code = "SH"
      , unofficialNames = [ "??irak" ]
      }
    , { name = "Syunik'"
      , code = "SU"
      , unofficialNames = [ "Syunik'" ]
      }
    , { name = "Tavu??"
      , code = "TV"
      , unofficialNames = [ "Tavoush" ]
      }
    , { name = "Vayoc Jor"
      , code = "VD"
      , unofficialNames = [ "Vayoc Jor" ]
      }
    ]


{-| -}
countryAOSubdivisions : List Subdivision
countryAOSubdivisions =
    [ { name = "Bengo"
      , code = "BGO"
      , unofficialNames = [ "Bengo" ]
      }
    , { name = "Benguela"
      , code = "BGU"
      , unofficialNames = [ "Benguela" ]
      }
    , { name = "Bi??"
      , code = "BIE"
      , unofficialNames = [ "Bi??" ]
      }
    , { name = "Cabinda"
      , code = "CAB"
      , unofficialNames = [ "Kabinda" ]
      }
    , { name = "Cuando-Cubango"
      , code = "CCU"
      , unofficialNames = [ "Cuando-Cubango" ]
      }
    , { name = "Cunene"
      , code = "CNN"
      , unofficialNames = [ "Cunene" ]
      }
    , { name = "Cuanza Norte"
      , code = "CNO"
      , unofficialNames = [ "Cuanza-Norte" ]
      }
    , { name = "Cuanza Sul"
      , code = "CUS"
      , unofficialNames = [ "Cuanza-Sul" ]
      }
    , { name = "Huambo"
      , code = "HUA"
      , unofficialNames = [ "Huambo" ]
      }
    , { name = "Hu??la"
      , code = "HUI"
      , unofficialNames = [ "Hu??la" ]
      }
    , { name = "Lunda Norte"
      , code = "LNO"
      , unofficialNames = [ "Lunda Norte" ]
      }
    , { name = "Lunda Sul"
      , code = "LSU"
      , unofficialNames = [ "Lunda Sul" ]
      }
    , { name = "Luanda"
      , code = "LUA"
      , unofficialNames = [ "Luanda" ]
      }
    , { name = "Malange"
      , code = "MAL"
      , unofficialNames = [ "Malange" ]
      }
    , { name = "Moxico"
      , code = "MOX"
      , unofficialNames = [ "Moxico" ]
      }
    , { name = "Namibe"
      , code = "NAM"
      , unofficialNames = [ "Namibe" ]
      }
    , { name = "U??ge"
      , code = "UIG"
      , unofficialNames = [ "U??ge" ]
      }
    , { name = "Zaire"
      , code = "ZAI"
      , unofficialNames = [ "Zaire" ]
      }
    ]


{-| -}
countryARSubdivisions : List Subdivision
countryARSubdivisions =
    [ { name = "Salta"
      , code = "A"
      , unofficialNames = [ "Salta" ]
      }
    , { name = "Buenos Aires"
      , code = "B"
      , unofficialNames = [ "Buenos Aires" ]
      }
    , { name = "Capital federal"
      , code = "C"
      , unofficialNames = [ "Capital federal" ]
      }
    , { name = "San Luis"
      , code = "D"
      , unofficialNames = [ "San Luis" ]
      }
    , { name = "Entre R??os"
      , code = "E"
      , unofficialNames = [ "Entre R??os" ]
      }
    , { name = "La Rioja"
      , code = "F"
      , unofficialNames = [ "La Rioja" ]
      }
    , { name = "Santiago del Estero"
      , code = "G"
      , unofficialNames = [ "Santiago del Estero" ]
      }
    , { name = "Chaco"
      , code = "H"
      , unofficialNames = [ "Chaco" ]
      }
    , { name = "San Juan"
      , code = "J"
      , unofficialNames = [ "San Juan" ]
      }
    , { name = "Catamarca"
      , code = "K"
      , unofficialNames = [ "Catamarca" ]
      }
    , { name = "La Pampa"
      , code = "L"
      , unofficialNames = [ "Pampa" ]
      }
    , { name = "Mendoza"
      , code = "M"
      , unofficialNames = [ "Mendoza" ]
      }
    , { name = "Misiones"
      , code = "N"
      , unofficialNames = [ "Misiones" ]
      }
    , { name = "Formosa"
      , code = "P"
      , unofficialNames = [ "Formosa" ]
      }
    , { name = "Neuqu??n"
      , code = "Q"
      , unofficialNames = [ "Neuqu??n" ]
      }
    , { name = "R??o Negro"
      , code = "R"
      , unofficialNames = [ "R??o Negro" ]
      }
    , { name = "Santa Fe"
      , code = "S"
      , unofficialNames = [ "Santa Fe" ]
      }
    , { name = "Tucum??n"
      , code = "T"
      , unofficialNames = [ "Tucum??n" ]
      }
    , { name = "Chubut"
      , code = "U"
      , unofficialNames = [ "Chubut" ]
      }
    , { name = "Tierra del Fuego"
      , code = "V"
      , unofficialNames = [ "Tierra del Fuego" ]
      }
    , { name = "Corrientes"
      , code = "W"
      , unofficialNames = [ "Corrientes" ]
      }
    , { name = "C??rdoba"
      , code = "X"
      , unofficialNames = [ "C??rdoba" ]
      }
    , { name = "Jujuy"
      , code = "Y"
      , unofficialNames = [ "Jujuy" ]
      }
    , { name = "Santa Cruz"
      , code = "Z"
      , unofficialNames = [ "Santa Cruz" ]
      }
    ]


{-| -}
countryASSubdivisions : List Subdivision
countryASSubdivisions =
    [ { name = "Eastern District"
      , code = "010"
      , unofficialNames = [ "Eastern District" ]
      }
    , { name = "Manu'a District"
      , code = "020"
      , unofficialNames = [ "Manu'a District" ]
      }
    , { name = "Rose Atoll"
      , code = "030"
      , unofficialNames = [ "Rose Atoll" ]
      }
    , { name = "Swains Island"
      , code = "040"
      , unofficialNames = [ "Swains Island" ]
      }
    , { name = "Western District"
      , code = "050"
      , unofficialNames = [ "Western District" ]
      }
    ]


{-| -}
countryATSubdivisions : List Subdivision
countryATSubdivisions =
    [ { name = "Burgenland"
      , code = "1"
      , unofficialNames = [ "Burgenland" ]
      }
    , { name = "K??rnten"
      , code = "2"
      , unofficialNames = [ "Carinthia", "Koro??ka" ]
      }
    , { name = "Nieder??sterreich"
      , code = "3"
      , unofficialNames = [ "Lower Austria" ]
      }
    , { name = "Ober??sterreich"
      , code = "4"
      , unofficialNames = [ "Upper Austria" ]
      }
    , { name = "Salzburg"
      , code = "5"
      , unofficialNames = [ "Salzbourg" ]
      }
    , { name = "Steiermark"
      , code = "6"
      , unofficialNames = [ "Styria" ]
      }
    , { name = "Tirol"
      , code = "7"
      , unofficialNames = [ "Tyrol" ]
      }
    , { name = "Vorarlberg"
      , code = "8"
      , unofficialNames = [ "Vorarlberg" ]
      }
    , { name = "Wien"
      , code = "9"
      , unofficialNames = [ "Vienna" ]
      }
    ]


{-| -}
countryAUSubdivisions : List Subdivision
countryAUSubdivisions =
    [ { name = "Australian Capital Territory"
      , code = "ACT"
      , unofficialNames = [ "Australian Capital Territory" ]
      }
    , { name = "New South Wales"
      , code = "NSW"
      , unofficialNames = [ "New South Wales" ]
      }
    , { name = "Northern Territory"
      , code = "NT"
      , unofficialNames = [ "Northern Territory" ]
      }
    , { name = "Queensland"
      , code = "QLD"
      , unofficialNames = [ "Queensland" ]
      }
    , { name = "South Australia"
      , code = "SA"
      , unofficialNames = [ "South Australia" ]
      }
    , { name = "Tasmania"
      , code = "TAS"
      , unofficialNames = [ "Tasmania" ]
      }
    , { name = "Victoria"
      , code = "VIC"
      , unofficialNames = [ "Victoria" ]
      }
    , { name = "Western Australia"
      , code = "WA"
      , unofficialNames = [ "Western Australia" ]
      }
    ]


{-| -}
countryAWSubdivisions : List Subdivision
countryAWSubdivisions =
    []


{-| -}
countryAXSubdivisions : List Subdivision
countryAXSubdivisions =
    [ { name = "Mariehamn"
      , code = "211"
      , unofficialNames = [ "Mariehamn" ]
      }
    , { name = "Alands landsbygd"
      , code = "212"
      , unofficialNames = [ "Alands landsbygd" ]
      }
    , { name = "Alands skaergard"
      , code = "213"
      , unofficialNames = [ "Alands skaergard" ]
      }
    ]


{-| -}
countryAZSubdivisions : List Subdivision
countryAZSubdivisions =
    [ { name = "??li Bayramli"
      , code = "AB"
      , unofficialNames = [ "??li Bayramli" ]
      }
    , { name = "Abseron"
      , code = "ABS"
      , unofficialNames = [ "Abseron" ]
      }
    , { name = "Agstafa"
      , code = "AGA"
      , unofficialNames = [ "Agstafa" ]
      }
    , { name = "Agcab??di"
      , code = "AGC"
      , unofficialNames = [ "Agcab??di" ]
      }
    , { name = "Agdam"
      , code = "AGM"
      , unofficialNames = [ "Agdam" ]
      }
    , { name = "Agdas"
      , code = "AGS"
      , unofficialNames = [ "Agdas" ]
      }
    , { name = "Agsu"
      , code = "AGU"
      , unofficialNames = [ "Agsu" ]
      }
    , { name = "Astara"
      , code = "AST"
      , unofficialNames = [ "Astara" ]
      }
    , { name = "Baki"
      , code = "BA"
      , unofficialNames = [ "Baki" ]
      }
    , { name = "Bab??k"
      , code = "BAB"
      , unofficialNames = [ "Bab??k" ]
      }
    , { name = "Balak??n"
      , code = "BAL"
      , unofficialNames = [ "Balak??n" ]
      }
    , { name = "B??rd??"
      , code = "BAR"
      , unofficialNames = [ "B??rd??" ]
      }
    , { name = "Beyl??qan"
      , code = "BEY"
      , unofficialNames = [ "Beyl??qan" ]
      }
    , { name = "Bil??suvar"
      , code = "BIL"
      , unofficialNames = [ "Bil??suvar" ]
      }
    , { name = "C??brayil"
      , code = "CAB"
      , unofficialNames = [ "C??brayil" ]
      }
    , { name = "C??lilabab"
      , code = "CAL"
      , unofficialNames = [ "C??lilabab" ]
      }
    , { name = "Culfa"
      , code = "CUL"
      , unofficialNames = [ "Culfa" ]
      }
    , { name = "Dask??s??n"
      , code = "DAS"
      , unofficialNames = [ "Dask??s??n" ]
      }
    , { name = "D??v????i"
      , code = "DAV"
      , unofficialNames = [ "D??v????i" ]
      }
    , { name = "F??zuli"
      , code = "FUZ"
      , unofficialNames = [ "F??zuli" ]
      }
    , { name = "G??nc??"
      , code = "GA"
      , unofficialNames = [ "G??nc??" ]
      }
    , { name = "G??d??b??y"
      , code = "GAD"
      , unofficialNames = [ "G??d??b??y" ]
      }
    , { name = "Goranboy"
      , code = "GOR"
      , unofficialNames = [ "Goranboy" ]
      }
    , { name = "G??y??ay"
      , code = "GOY"
      , unofficialNames = [ "G??y??ay" ]
      }
    , { name = "Haciqabul"
      , code = "HAC"
      , unofficialNames = [ "Haciqabul" ]
      }
    , { name = "Imisli"
      , code = "IMI"
      , unofficialNames = [ "Imisli" ]
      }
    , { name = "Ismayilli"
      , code = "ISM"
      , unofficialNames = [ "Ismayilli" ]
      }
    , { name = "K??lb??c??r"
      , code = "KAL"
      , unofficialNames = [ "K??lb??c??r" ]
      }
    , { name = "K??rd??mir"
      , code = "KUR"
      , unofficialNames = [ "K??rd??mir" ]
      }
    , { name = "L??nk??ran City"
      , code = "LA"
      , unofficialNames = [ "L??nk??ran City" ]
      }
    , { name = "La??in"
      , code = "LAC"
      , unofficialNames = [ "La??in" ]
      }
    , { name = "L??nk??ran"
      , code = "LAN"
      , unofficialNames = [ "L??nk??ran" ]
      }
    , { name = "Lerik"
      , code = "LER"
      , unofficialNames = [ "Lerik" ]
      }
    , { name = "Masalli"
      , code = "MAS"
      , unofficialNames = [ "Masalli" ]
      }
    , { name = "Ming????evir"
      , code = "MI"
      , unofficialNames = [ "Ming????evir" ]
      }
    , { name = "Naftalan"
      , code = "NA"
      , unofficialNames = [ "Naftalan" ]
      }
    , { name = "Neft??ala"
      , code = "NEF"
      , unofficialNames = [ "Neft??ala" ]
      }
    , { name = "Nax??ivan"
      , code = "NX"
      , unofficialNames = [ "Nax??ivan" ]
      }
    , { name = "Oguz"
      , code = "OGU"
      , unofficialNames = [ "Oguz" ]
      }
    , { name = "Ordubad"
      , code = "ORD"
      , unofficialNames = [ "Ordubad" ]
      }
    , { name = "Q??b??l??"
      , code = "QAB"
      , unofficialNames = [ "Q??b??l??" ]
      }
    , { name = "Qax"
      , code = "QAX"
      , unofficialNames = [ "Qax" ]
      }
    , { name = "Qazax"
      , code = "QAZ"
      , unofficialNames = [ "Qazax" ]
      }
    , { name = "Quba"
      , code = "QBA"
      , unofficialNames = [ "Quba" ]
      }
    , { name = "Qubadli"
      , code = "QBI"
      , unofficialNames = [ "Qubadli" ]
      }
    , { name = "Qobustan"
      , code = "QOB"
      , unofficialNames = [ "Qobustan" ]
      }
    , { name = "Qusar"
      , code = "QUS"
      , unofficialNames = [ "Qusar" ]
      }
    , { name = "S??ki City"
      , code = "SA"
      , unofficialNames = [ "S??ki City" ]
      }
    , { name = "Sabirabad"
      , code = "SAB"
      , unofficialNames = [ "Sabirabad" ]
      }
    , { name = "S??d??r??k"
      , code = "SAD"
      , unofficialNames = [ "S??d??r??k" ]
      }
    , { name = "Sahbuz"
      , code = "SAH"
      , unofficialNames = [ "Sahbuz" ]
      }
    , { name = "S??ki"
      , code = "SAK"
      , unofficialNames = [ "S??ki" ]
      }
    , { name = "Salyan"
      , code = "SAL"
      , unofficialNames = [ "Salyan" ]
      }
    , { name = "S??rur"
      , code = "SAR"
      , unofficialNames = [ "S??rur" ]
      }
    , { name = "Saatli"
      , code = "SAT"
      , unofficialNames = [ "Saatli" ]
      }
    , { name = "Siy??z??n"
      , code = "SIY"
      , unofficialNames = [ "Siy??z??n" ]
      }
    , { name = "S??mkir"
      , code = "SKR"
      , unofficialNames = [ "S??mkir" ]
      }
    , { name = "Sumqayit"
      , code = "SM"
      , unofficialNames = [ "Sumqayit" ]
      }
    , { name = "Samaxi"
      , code = "SMI"
      , unofficialNames = [ "Samaxi" ]
      }
    , { name = "Samux"
      , code = "SMX"
      , unofficialNames = [ "Samux" ]
      }
    , { name = "Susa City"
      , code = "SS"
      , unofficialNames = [ "Susa City" ]
      }
    , { name = "Susa"
      , code = "SUS"
      , unofficialNames = [ "Susa" ]
      }
    , { name = "T??rt??r"
      , code = "TAR"
      , unofficialNames = [ "T??rt??r" ]
      }
    , { name = "Tovuz"
      , code = "TOV"
      , unofficialNames = [ "Tovuz" ]
      }
    , { name = "Ucar"
      , code = "UCA"
      , unofficialNames = [ "Ucar" ]
      }
    , { name = "Xank??ndi"
      , code = "XA"
      , unofficialNames = [ "Xank??ndi" ]
      }
    , { name = "Xa??maz"
      , code = "XAC"
      , unofficialNames = [ "Xa??maz" ]
      }
    , { name = "Xanlar"
      , code = "XAN"
      , unofficialNames = [ "Xanlar" ]
      }
    , { name = "Xocali"
      , code = "XCI"
      , unofficialNames = [ "Xocali" ]
      }
    , { name = "Xizi"
      , code = "XIZ"
      , unofficialNames = [ "Xizi" ]
      }
    , { name = "Xocav??nd"
      , code = "XVD"
      , unofficialNames = [ "Xocav??nd" ]
      }
    , { name = "Yardimli"
      , code = "YAR"
      , unofficialNames = [ "Yardimli" ]
      }
    , { name = "Yevlax City"
      , code = "YE"
      , unofficialNames = [ "Yevlax City" ]
      }
    , { name = "Yevlax"
      , code = "YEV"
      , unofficialNames = [ "Yevlax" ]
      }
    , { name = "Z??ngilan"
      , code = "ZAN"
      , unofficialNames = [ "Z??ngilan" ]
      }
    , { name = "Zaqatala"
      , code = "ZAQ"
      , unofficialNames = [ "Zaqatala" ]
      }
    , { name = "Z??rdab"
      , code = "ZAR"
      , unofficialNames = [ "Z??rdab" ]
      }
    ]


{-| -}
countryBASubdivisions : List Subdivision
countryBASubdivisions =
    [ { name = "Federacija Bosna i Hercegovina"
      , code = "BIH"
      , unofficialNames = [ "Federacija Bosna i Hercegovina" ]
      }
    , { name = "Republika Srpska"
      , code = "SRP"
      , unofficialNames = [ "Republika Srpska" ]
      }
    ]


{-| -}
countryBBSubdivisions : List Subdivision
countryBBSubdivisions =
    [ { name = "Christ Church"
      , code = "01"
      , unofficialNames = [ "Christ Church" ]
      }
    , { name = "Saint Andrew"
      , code = "02"
      , unofficialNames = [ "Saint Andrew" ]
      }
    , { name = "Saint George"
      , code = "03"
      , unofficialNames = [ "Saint George" ]
      }
    , { name = "Saint James"
      , code = "04"
      , unofficialNames = [ "Saint James" ]
      }
    , { name = "Saint John"
      , code = "05"
      , unofficialNames = [ "Saint John" ]
      }
    , { name = "Saint Joseph"
      , code = "06"
      , unofficialNames = [ "Saint Joseph" ]
      }
    , { name = "Saint Lucy"
      , code = "07"
      , unofficialNames = [ "Saint Lucy" ]
      }
    , { name = "Saint Michael"
      , code = "08"
      , unofficialNames = [ "Saint Michael" ]
      }
    , { name = "Saint Peter"
      , code = "09"
      , unofficialNames = [ "Saint Peter" ]
      }
    , { name = "Saint Philip"
      , code = "10"
      , unofficialNames = [ "Saint Philip" ]
      }
    , { name = "Saint Thomas"
      , code = "11"
      , unofficialNames = [ "Saint Thomas" ]
      }
    ]


{-| -}
countryBDSubdivisions : List Subdivision
countryBDSubdivisions =
    [ { name = "Bandarban zila"
      , code = "01"
      , unofficialNames = [ "Bandarban" ]
      }
    , { name = "Barguna zila"
      , code = "02"
      , unofficialNames = [ "Barguna zila" ]
      }
    , { name = "Bogra zila"
      , code = "03"
      , unofficialNames = [ "Bogora", "Bogra", "Borga Thana" ]
      }
    , { name = "Brahmanbaria zila"
      , code = "04"
      , unofficialNames = [ "Brahman Bariya", "Brahmanbaria" ]
      }
    , { name = "Bagerhat zila"
      , code = "05"
      , unofficialNames = [ "Bagarhat", "Bagerhat", "Bagherhat", "Basabari", "B??s??b??ri" ]
      }
    , { name = "Barisal zila"
      , code = "06"
      , unofficialNames = [ "Barisal" ]
      }
    , { name = "Bhola zila"
      , code = "07"
      , unofficialNames = [ "Bhola" ]
      }
    , { name = "Comilla zila"
      , code = "08"
      , unofficialNames = [ "Comilla", "Komilla" ]
      }
    , { name = "Chandpur zila"
      , code = "09"
      , unofficialNames = [ "Chandipur", "Chandpur" ]
      }
    , { name = "Chittagong zila"
      , code = "10"
      , unofficialNames = [ "Chattagam", "Chittagong" ]
      }
    , { name = "Cox's Bazar zila"
      , code = "11"
      , unofficialNames = [ "Cox??s Bazar", "Koks Bazar" ]
      }
    , { name = "Chuadanga zila"
      , code = "12"
      , unofficialNames = [ "Chuadanga" ]
      }
    , { name = "Dhaka zila"
      , code = "13"
      , unofficialNames = [ "Dacca", "Dakka", "Dhaka" ]
      }
    , { name = "Dinajpur zila"
      , code = "14"
      , unofficialNames = [ "Dinajpur" ]
      }
    , { name = "Faridpur zila"
      , code = "15"
      , unofficialNames = [ "Faridpur" ]
      }
    , { name = "Feni zila"
      , code = "16"
      , unofficialNames = [ "Feni" ]
      }
    , { name = "Gopalganj zila"
      , code = "17"
      , unofficialNames = [ "Gopalganj" ]
      }
    , { name = "Gazipur zila"
      , code = "18"
      , unofficialNames = [ "Gajipur" ]
      }
    , { name = "Gaibandha zila"
      , code = "19"
      , unofficialNames = [ "Gaibanda", "Gaibandah", "Gaibandha", "Gaybanda", "Gaybandah" ]
      }
    , { name = "Habiganj zila"
      , code = "20"
      , unofficialNames = [ "Habiganj", "Hobiganj", "Hobigonj" ]
      }
    , { name = "Jamalpur zila"
      , code = "21"
      , unofficialNames = [ "Jamalpur" ]
      }
    , { name = "Jessore zila"
      , code = "22"
      , unofficialNames = [ "Jessore", "Jessur" ]
      }
    , { name = "Jhenaidah zila"
      , code = "23"
      , unofficialNames = [ "Jhanaydah", "Jhanidah", "Jhan??d??h", "Jhenaida", "Jhenida" ]
      }
    , { name = "Jaipurhat zila"
      , code = "24"
      , unofficialNames = [ "Jaipur Hat", "Jaipurhat", "Joypurhat" ]
      }
    , { name = "Jhalakati zila"
      , code = "25"
      , unofficialNames = [ "Jhalakati", "Jhalokati" ]
      }
    , { name = "Kishoreganj zila"
      , code = "26"
      , unofficialNames = [ "Kishoreganj" ]
      }
    , { name = "Khulna zila"
      , code = "27"
      , unofficialNames = [ "Khulna" ]
      }
    , { name = "Kurigram zila"
      , code = "28"
      , unofficialNames = [ "Kurigram" ]
      }
    , { name = "Khagrachari zila"
      , code = "29"
      , unofficialNames = [ "Khagrachari zila" ]
      }
    , { name = "Kushtia zila"
      , code = "30"
      , unofficialNames = [ "Kushtia", "Kushtiya" ]
      }
    , { name = "Lakshmipur zila"
      , code = "31"
      , unofficialNames = [ "Lakshmipur", "Laksmipur" ]
      }
    , { name = "Lalmonirhat zila"
      , code = "32"
      , unofficialNames = [ "Lalmanir Hat", "Lalmonirhat" ]
      }
    , { name = "Manikganj zila"
      , code = "33"
      , unofficialNames = [ "Manikganj" ]
      }
    , { name = "Mymensingh zila"
      , code = "34"
      , unofficialNames = [ "Mymensingh", "Nasirabad", "Nasir??b??d" ]
      }
    , { name = "Munshiganj zila"
      , code = "35"
      , unofficialNames = [ "Munshiganj zila" ]
      }
    , { name = "Madaripur zila"
      , code = "36"
      , unofficialNames = [ "Madaripur" ]
      }
    , { name = "Magura zila"
      , code = "37"
      , unofficialNames = [ "Magura" ]
      }
    , { name = "Moulvibazar zila"
      , code = "38"
      , unofficialNames = [ "Maulvi Bazar", "Moulvi Bazar" ]
      }
    , { name = "Meherpur zila"
      , code = "39"
      , unofficialNames = [ "Meherpur zila" ]
      }
    , { name = "Narayanganj zila"
      , code = "40"
      , unofficialNames = [ "Narayanganj" ]
      }
    , { name = "Netrakona zila"
      , code = "41"
      , unofficialNames = [ "Netrakona", "Netrokana" ]
      }
    , { name = "Narsingdi zila"
      , code = "42"
      , unofficialNames = [ "Narsinghdi" ]
      }
    , { name = "Narail zila"
      , code = "43"
      , unofficialNames = [ "Narail", "Naral" ]
      }
    , { name = "Natore zila"
      , code = "44"
      , unofficialNames = [ "Nator", "Natore" ]
      }
    , { name = "Nawabganj zila"
      , code = "45"
      , unofficialNames = [ "Nawabganj", "Nawabgonj" ]
      }
    , { name = "Nilphamari zila"
      , code = "46"
      , unofficialNames = [ "Nilphamari" ]
      }
    , { name = "Noakhali zila"
      , code = "47"
      , unofficialNames = [ "Noakhali" ]
      }
    , { name = "Naogaon zila"
      , code = "48"
      , unofficialNames = [ "Naogaon", "Naugaon" ]
      }
    , { name = "Pabna zila"
      , code = "49"
      , unofficialNames = [ "Pabna" ]
      }
    , { name = "Pirojpur zila"
      , code = "50"
      , unofficialNames = [ "Perojpur", "Pirojpur" ]
      }
    , { name = "Patuakhali zila"
      , code = "51"
      , unofficialNames = [ "Patukhali" ]
      }
    , { name = "Panchagarh zila"
      , code = "52"
      , unofficialNames = [ "Panchagarh zila" ]
      }
    , { name = "Rajbari zila"
      , code = "53"
      , unofficialNames = [ "Rajbari" ]
      }
    , { name = "Rajshahi zila"
      , code = "54"
      , unofficialNames = [ "Rajshahi", "Rampur Boalia" ]
      }
    , { name = "Rangpur zila"
      , code = "55"
      , unofficialNames = [ "Rangpur" ]
      }
    , { name = "Rangamati zila"
      , code = "56"
      , unofficialNames = [ "Rangamati" ]
      }
    , { name = "Sherpur zila"
      , code = "57"
      , unofficialNames = [ "Sherpur" ]
      }
    , { name = "Satkhira zila"
      , code = "58"
      , unofficialNames = [ "Satkhira" ]
      }
    , { name = "Sirajganj zila"
      , code = "59"
      , unofficialNames = [ "Serajgonj", "Sirajganj" ]
      }
    , { name = "Sylhet zila"
      , code = "60"
      , unofficialNames = [ "Silhat", "Sylhet" ]
      }
    , { name = "Sunamganj zila"
      , code = "61"
      , unofficialNames = [ "Shunamganj", "Sunamganj" ]
      }
    , { name = "Shariatpur zila"
      , code = "62"
      , unofficialNames = [ "Shariatpur" ]
      }
    , { name = "Tangail zila"
      , code = "63"
      , unofficialNames = [ "Tangail", "Tangayal" ]
      }
    , { name = "Thakurgaon zila"
      , code = "64"
      , unofficialNames = [ "Thakurgaon" ]
      }
    ]


{-| -}
countryBESubdivisions : List Subdivision
countryBESubdivisions =
    [ { name = "Brussels"
      , code = "BRU"
      , unofficialNames = [ "Brussels Hoofdstedelijk Gewest", "R??gion de Bruxelles-Capitale", "Brussel", "Br??ssel", "Bruxelles" ]
      }
    , { name = "Antwerpen (nl)"
      , code = "VAN"
      , unofficialNames = [ "Antwerpen", "Anvers" ]
      }
    , { name = "Vlaams Brabant (nl)"
      , code = "VBR"
      , unofficialNames = [ "Brabant-Vlanderen", "Vlaams-Brabant", "Fl??misch Brabant", "Brabant-Flamand" ]
      }
    , { name = "Limburg (nl)"
      , code = "VLI"
      , unofficialNames = [ "Limbourg" ]
      }
    , { name = "Oost-Vlaanderen (nl)"
      , code = "VOV"
      , unofficialNames = [ "Oos-Vlanderen", "Oost-Vlaanderen", "Ost-Flandern", "Flandre-Orientale" ]
      }
    , { name = "West-Vlaanderen (nl)"
      , code = "VWV"
      , unofficialNames = [ "Wes-Vlanderen", "West-Vlaanderen", "West-Flandern", "Flandre-Occidentale" ]
      }
    , { name = "Brabant Wallon (fr)"
      , code = "WBR"
      , unofficialNames = [ "Waals-Brabant", "Wallonisch Brabant", "Walloon Brabant" ]
      }
    , { name = "Hainaut (fr)"
      , code = "WHT"
      , unofficialNames = [ "Henegouwen", "Hennegau" ]
      }
    , { name = "Li??ge (fr)"
      , code = "WLG"
      , unofficialNames = [ "Luik", "L??ttich" ]
      }
    , { name = "Luxembourg (fr)"
      , code = "WLX"
      , unofficialNames = [ "Luxembourg", "Luxemburg" ]
      }
    , { name = "Namur (fr)"
      , code = "WNA"
      , unofficialNames = [ "Namen" ]
      }
    ]


{-| -}
countryBFSubdivisions : List Subdivision
countryBFSubdivisions =
    [ { name = "Bal??"
      , code = "BAL"
      , unofficialNames = [ "Bal??" ]
      }
    , { name = "Bam"
      , code = "BAM"
      , unofficialNames = [ "Bam" ]
      }
    , { name = "Banwa"
      , code = "BAN"
      , unofficialNames = [ "Banwa" ]
      }
    , { name = "Baz??ga"
      , code = "BAZ"
      , unofficialNames = [ "Baz??ga" ]
      }
    , { name = "Bougouriba"
      , code = "BGR"
      , unofficialNames = [ "Bougouriba" ]
      }
    , { name = "Boulgou"
      , code = "BLG"
      , unofficialNames = [ "Boulgou" ]
      }
    , { name = "Boulkiemd??"
      , code = "BLK"
      , unofficialNames = [ "Boulkiemd??" ]
      }
    , { name = "Como??"
      , code = "COM"
      , unofficialNames = [ "Como??" ]
      }
    , { name = "Ganzourgou"
      , code = "GAN"
      , unofficialNames = [ "Ganzourgou" ]
      }
    , { name = "Gnagna"
      , code = "GNA"
      , unofficialNames = [ "Gnagna" ]
      }
    , { name = "Gourma"
      , code = "GOU"
      , unofficialNames = [ "Gourma" ]
      }
    , { name = "Houet"
      , code = "HOU"
      , unofficialNames = [ "Houet" ]
      }
    , { name = "Ioba"
      , code = "IOB"
      , unofficialNames = [ "Ioba" ]
      }
    , { name = "Kadiogo"
      , code = "KAD"
      , unofficialNames = [ "Kadiogo" ]
      }
    , { name = "K??n??dougou"
      , code = "KEN"
      , unofficialNames = [ "K??n??dougou" ]
      }
    , { name = "Komondjari"
      , code = "KMD"
      , unofficialNames = [ "Komandjoari", "Komondjari" ]
      }
    , { name = "Kompienga"
      , code = "KMP"
      , unofficialNames = [ "Kompienga" ]
      }
    , { name = "Koulp??logo"
      , code = "KOP"
      , unofficialNames = [ "Koulp??logo" ]
      }
    , { name = "Kossi"
      , code = "KOS"
      , unofficialNames = [ "Kossi" ]
      }
    , { name = "Kouritenga"
      , code = "KOT"
      , unofficialNames = [ "Kouritenga" ]
      }
    , { name = "Kourw??ogo"
      , code = "KOW"
      , unofficialNames = [ "Kourw??ogo" ]
      }
    , { name = "L??raba"
      , code = "LER"
      , unofficialNames = [ "L??raba" ]
      }
    , { name = "Loroum"
      , code = "LOR"
      , unofficialNames = [ "Loroum" ]
      }
    , { name = "Mouhoun"
      , code = "MOU"
      , unofficialNames = [ "Mouhoun" ]
      }
    , { name = "Namentenga"
      , code = "NAM"
      , unofficialNames = [ "Namentenga" ]
      }
    , { name = "Nahouri"
      , code = "NAO"
      , unofficialNames = [ "Naouri" ]
      }
    , { name = "Nayala"
      , code = "NAY"
      , unofficialNames = [ "Nayala" ]
      }
    , { name = "Noumbiel"
      , code = "NOU"
      , unofficialNames = [ "Noumbiel" ]
      }
    , { name = "Oubritenga"
      , code = "OUB"
      , unofficialNames = [ "Oubritenga" ]
      }
    , { name = "Oudalan"
      , code = "OUD"
      , unofficialNames = [ "Oudalan" ]
      }
    , { name = "Passor??"
      , code = "PAS"
      , unofficialNames = [ "Passor??" ]
      }
    , { name = "Poni"
      , code = "PON"
      , unofficialNames = [ "Poni" ]
      }
    , { name = "S??no"
      , code = "SEN"
      , unofficialNames = [ "S??no" ]
      }
    , { name = "Sissili"
      , code = "SIS"
      , unofficialNames = [ "Sissili" ]
      }
    , { name = "Sanmatenga"
      , code = "SMT"
      , unofficialNames = [ "Sanmatenga" ]
      }
    , { name = "Sangui??"
      , code = "SNG"
      , unofficialNames = [ "Sangui??" ]
      }
    , { name = "Soum"
      , code = "SOM"
      , unofficialNames = [ "Soum" ]
      }
    , { name = "Sourou"
      , code = "SOR"
      , unofficialNames = [ "Sourou" ]
      }
    , { name = "Tapoa"
      , code = "TAP"
      , unofficialNames = [ "Tapoa" ]
      }
    , { name = "Tui"
      , code = "TUI"
      , unofficialNames = [ "Tui" ]
      }
    , { name = "Yagha"
      , code = "YAG"
      , unofficialNames = [ "Yagha" ]
      }
    , { name = "Yatenga"
      , code = "YAT"
      , unofficialNames = [ "Yatenga" ]
      }
    , { name = "Ziro"
      , code = "ZIR"
      , unofficialNames = [ "Ziro" ]
      }
    , { name = "Zondoma"
      , code = "ZON"
      , unofficialNames = [ "Zondoma" ]
      }
    , { name = "Zoundw??ogo"
      , code = "ZOU"
      , unofficialNames = [ "Zoundw??ogo" ]
      }
    ]


{-| -}
countryBGSubdivisions : List Subdivision
countryBGSubdivisions =
    [ { name = "Blagoevgrad"
      , code = "01"
      , unofficialNames = [ "Blagoevgrad" ]
      }
    , { name = "Burgas"
      , code = "02"
      , unofficialNames = [ "Burgas" ]
      }
    , { name = "Varna"
      , code = "03"
      , unofficialNames = [ "Varna" ]
      }
    , { name = "Veliko Tarnovo"
      , code = "04"
      , unofficialNames = [ "Veliko Tarnovo" ]
      }
    , { name = "Vidin"
      , code = "05"
      , unofficialNames = [ "Vidin" ]
      }
    , { name = "Vratsa"
      , code = "06"
      , unofficialNames = [ "Vratsa" ]
      }
    , { name = "Gabrovo"
      , code = "07"
      , unofficialNames = [ "Gabrovo" ]
      }
    , { name = "Dobrich"
      , code = "08"
      , unofficialNames = [ "Dobrich" ]
      }
    , { name = "Kardzhali"
      , code = "09"
      , unofficialNames = [ "Kardzhali" ]
      }
    , { name = "Kjustendil"
      , code = "10"
      , unofficialNames = [ "Kjustendil" ]
      }
    , { name = "Lovech"
      , code = "11"
      , unofficialNames = [ "Lovech" ]
      }
    , { name = "Montana"
      , code = "12"
      , unofficialNames = [ "Montana" ]
      }
    , { name = "Pazardzhik"
      , code = "13"
      , unofficialNames = [ "Pazardzhik" ]
      }
    , { name = "Pernik"
      , code = "14"
      , unofficialNames = [ "Pernik" ]
      }
    , { name = "Pleven"
      , code = "15"
      , unofficialNames = [ "Pleven" ]
      }
    , { name = "Plovdiv"
      , code = "16"
      , unofficialNames = [ "Plovdiv" ]
      }
    , { name = "Razgrad"
      , code = "17"
      , unofficialNames = [ "Razgrad" ]
      }
    , { name = "Ruse"
      , code = "18"
      , unofficialNames = [ "Ruse" ]
      }
    , { name = "Silistra"
      , code = "19"
      , unofficialNames = [ "Silistra" ]
      }
    , { name = "Sliven"
      , code = "20"
      , unofficialNames = [ "Sliven" ]
      }
    , { name = "Smolyan"
      , code = "21"
      , unofficialNames = [ "Smolyan" ]
      }
    , { name = "Sofia-Grad"
      , code = "22"
      , unofficialNames = [ "Sofia-Grad" ]
      }
    , { name = "Sofia"
      , code = "23"
      , unofficialNames = [ "Sofia" ]
      }
    , { name = "Stara Zagora"
      , code = "24"
      , unofficialNames = [ "Stara Zagora" ]
      }
    , { name = "Targovishte"
      , code = "25"
      , unofficialNames = [ "Targovishte" ]
      }
    , { name = "Haskovo"
      , code = "26"
      , unofficialNames = [ "Haskovo" ]
      }
    , { name = "??umen"
      , code = "27"
      , unofficialNames = [ "??umen" ]
      }
    , { name = "Yambol"
      , code = "28"
      , unofficialNames = [ "Yambol" ]
      }
    ]


{-| -}
countryBHSubdivisions : List Subdivision
countryBHSubdivisions =
    [ { name = "Al Manamah (Al ???Asimah)"
      , code = "13"
      , unofficialNames = [ "Man??mah", "al-Man??mah", "Manama", "Manama", "Manama" ]
      }
    , { name = "Al Janubiyah"
      , code = "14"
      , unofficialNames = [ "Eastern", "Hawa", "Juzur H??aw??r", "Southern", "ash Sharqiyah", "a??-??arq??yah" ]
      }
    , { name = "Al Muharraq"
      , code = "15"
      , unofficialNames = [ "Al Muharraq" ]
      }
    , { name = "Al Wust??"
      , code = "16"
      , unofficialNames = [ "Central", "al-Mintaqah al-Wusta" ]
      }
    , { name = "Ash Shamaliyah"
      , code = "17"
      , unofficialNames = [ "Northern", "al-Mintaqa ash Shamaliyah", "ash Shamaliyah" ]
      }
    ]


{-| -}
countryBISubdivisions : List Subdivision
countryBISubdivisions =
    [ { name = "Bubanza"
      , code = "BB"
      , unofficialNames = [ "Bubanza" ]
      }
    , { name = "Bujumbura"
      , code = "BJ"
      , unofficialNames = [ "Bujumbura" ]
      }
    , { name = "Bururi"
      , code = "BR"
      , unofficialNames = [ "Bururi" ]
      }
    , { name = "Cankuzo"
      , code = "CA"
      , unofficialNames = [ "Cankuzo" ]
      }
    , { name = "Cibitoke"
      , code = "CI"
      , unofficialNames = [ "Cibitoke" ]
      }
    , { name = "Gitega"
      , code = "GI"
      , unofficialNames = [ "Kitega" ]
      }
    , { name = "Kirundo"
      , code = "KI"
      , unofficialNames = [ "Kirundo" ]
      }
    , { name = "Karuzi"
      , code = "KR"
      , unofficialNames = [ "Karusi" ]
      }
    , { name = "Kayanza"
      , code = "KY"
      , unofficialNames = [ "Kayanza" ]
      }
    , { name = "Makamba"
      , code = "MA"
      , unofficialNames = [ "Makamba" ]
      }
    , { name = "Muramvya"
      , code = "MU"
      , unofficialNames = [ "Muramuya" ]
      }
    , { name = "Mwaro"
      , code = "MW"
      , unofficialNames = [ "Mwaro" ]
      }
    , { name = "Muyinga"
      , code = "MY"
      , unofficialNames = [ "Muhinga" ]
      }
    , { name = "Ngozi"
      , code = "NG"
      , unofficialNames = [ "Ngozi" ]
      }
    , { name = "Rutana"
      , code = "RT"
      , unofficialNames = [ "Rutana" ]
      }
    , { name = "Ruyigi"
      , code = "RY"
      , unofficialNames = [ "Ruyigi" ]
      }
    ]


{-| -}
countryBJSubdivisions : List Subdivision
countryBJSubdivisions =
    [ { name = "Atakora"
      , code = "AK"
      , unofficialNames = [ "Atakora" ]
      }
    , { name = "Alibori"
      , code = "AL"
      , unofficialNames = [ "Alibori" ]
      }
    , { name = "Atlantique"
      , code = "AQ"
      , unofficialNames = [ "Atlantique" ]
      }
    , { name = "Borgou"
      , code = "BO"
      , unofficialNames = [ "Borgou" ]
      }
    , { name = "Collines"
      , code = "CO"
      , unofficialNames = [ "Collines" ]
      }
    , { name = "Donga"
      , code = "DO"
      , unofficialNames = [ "Donga" ]
      }
    , { name = "Kouffo"
      , code = "KO"
      , unofficialNames = [ "Kouffo" ]
      }
    , { name = "Littoral"
      , code = "LI"
      , unofficialNames = [ "Littoral" ]
      }
    , { name = "Mono"
      , code = "MO"
      , unofficialNames = [ "Mono" ]
      }
    , { name = "Ou??m??"
      , code = "OU"
      , unofficialNames = [ "Ou??m??" ]
      }
    , { name = "Plateau"
      , code = "PL"
      , unofficialNames = [ "Plateau" ]
      }
    , { name = "Zou"
      , code = "ZO"
      , unofficialNames = [ "Zou" ]
      }
    ]


{-| -}
countryBLSubdivisions : List Subdivision
countryBLSubdivisions =
    []


{-| -}
countryBMSubdivisions : List Subdivision
countryBMSubdivisions =
    [ { name = "Devonshire"
      , code = "DS"
      , unofficialNames = [ "Devonshire" ]
      }
    , { name = "Saint George"
      , code = "GC"
      , unofficialNames = [ "Saint George" ]
      }
    , { name = "Hamilton"
      , code = "HA"
      , unofficialNames = [ "Hamilton" ]
      }
    , { name = "Hamilton City"
      , code = "HC"
      , unofficialNames = [ "Hamilton City" ]
      }
    , { name = "Pembroke"
      , code = "PB"
      , unofficialNames = [ "Pembroke" ]
      }
    , { name = "Paget"
      , code = "PG"
      , unofficialNames = [ "Paget" ]
      }
    , { name = "Sandys"
      , code = "SA"
      , unofficialNames = [ "Sandys" ]
      }
    , { name = "Saint George's"
      , code = "SG"
      , unofficialNames = [ "Saint George's" ]
      }
    , { name = "Southampton"
      , code = "SH"
      , unofficialNames = [ "Southampton" ]
      }
    , { name = "Smith's"
      , code = "SM"
      , unofficialNames = [ "Smith's" ]
      }
    , { name = "Warwick"
      , code = "WA"
      , unofficialNames = [ "Warwick" ]
      }
    ]


{-| -}
countryBNSubdivisions : List Subdivision
countryBNSubdivisions =
    [ { name = "Belait"
      , code = "BE"
      , unofficialNames = [ "Belait" ]
      }
    , { name = "Brunei-Muara"
      , code = "BM"
      , unofficialNames = [ "Brunei-Muara" ]
      }
    , { name = "Temburong"
      , code = "TE"
      , unofficialNames = [ "Temburong" ]
      }
    , { name = "Tutong"
      , code = "TU"
      , unofficialNames = [ "Tutong" ]
      }
    ]


{-| -}
countryBOSubdivisions : List Subdivision
countryBOSubdivisions =
    [ { name = "El Beni"
      , code = "B"
      , unofficialNames = [ "El Beni" ]
      }
    , { name = "Cochabamba"
      , code = "C"
      , unofficialNames = [ "Cochabamba" ]
      }
    , { name = "Chuquisaca"
      , code = "H"
      , unofficialNames = [ "Chuquisaca" ]
      }
    , { name = "La Paz"
      , code = "L"
      , unofficialNames = [ "La Paz" ]
      }
    , { name = "Pando"
      , code = "N"
      , unofficialNames = [ "Pando" ]
      }
    , { name = "Oruro"
      , code = "O"
      , unofficialNames = [ "Oruro" ]
      }
    , { name = "Potos??"
      , code = "P"
      , unofficialNames = [ "Potos??" ]
      }
    , { name = "Santa Cruz"
      , code = "S"
      , unofficialNames = [ "Santa Cruz" ]
      }
    , { name = "Tarija"
      , code = "T"
      , unofficialNames = [ "Tarija" ]
      }
    ]


{-| -}
countryBQSubdivisions : List Subdivision
countryBQSubdivisions =
    [ { name = "Bonaire"
      , code = "BO"
      , unofficialNames = [ "Bonaire" ]
      }
    , { name = "Saba"
      , code = "SA"
      , unofficialNames = [ "Saba" ]
      }
    , { name = "Sint Eustatius"
      , code = "SE"
      , unofficialNames = [ "Sint Eustatius" ]
      }
    ]


{-| -}
countryBRSubdivisions : List Subdivision
countryBRSubdivisions =
    [ { name = "Acre"
      , code = "AC"
      , unofficialNames = [ "Acre" ]
      }
    , { name = "Alagoas"
      , code = "AL"
      , unofficialNames = [ "Alagoas" ]
      }
    , { name = "Amazonas"
      , code = "AM"
      , unofficialNames = [ "Amazonas" ]
      }
    , { name = "Amap??"
      , code = "AP"
      , unofficialNames = [ "Amap??" ]
      }
    , { name = "Bahia"
      , code = "BA"
      , unofficialNames = [ "Bahia" ]
      }
    , { name = "Cear??"
      , code = "CE"
      , unofficialNames = [ "Cear??" ]
      }
    , { name = "Distrito Federal"
      , code = "DF"
      , unofficialNames = [ "Distrito Federal" ]
      }
    , { name = "Esp??rito Santo"
      , code = "ES"
      , unofficialNames = [ "Esp??rito Santo" ]
      }
    , { name = "Goi??s"
      , code = "GO"
      , unofficialNames = [ "Goi??s" ]
      }
    , { name = "Maranh??o"
      , code = "MA"
      , unofficialNames = [ "Maranh??o" ]
      }
    , { name = "Minas Gerais"
      , code = "MG"
      , unofficialNames = [ "Minas Gerais" ]
      }
    , { name = "Mato Grosso do Sul"
      , code = "MS"
      , unofficialNames = [ "Mato Grosso do Sul" ]
      }
    , { name = "Mato Grosso"
      , code = "MT"
      , unofficialNames = [ "Mato Grosso" ]
      }
    , { name = "Par??"
      , code = "PA"
      , unofficialNames = [ "Par??" ]
      }
    , { name = "Para??ba"
      , code = "PB"
      , unofficialNames = [ "Para??ba" ]
      }
    , { name = "Pernambuco"
      , code = "PE"
      , unofficialNames = [ "Pernambuco" ]
      }
    , { name = "Piau??"
      , code = "PI"
      , unofficialNames = [ "Piau??" ]
      }
    , { name = "Paran??"
      , code = "PR"
      , unofficialNames = [ "Paran??" ]
      }
    , { name = "Rio de Janeiro"
      , code = "RJ"
      , unofficialNames = [ "Rio de Janeiro" ]
      }
    , { name = "Rio Grande do Norte"
      , code = "RN"
      , unofficialNames = [ "Rio Grande do Norte" ]
      }
    , { name = "Rond??nia"
      , code = "RO"
      , unofficialNames = [ "Rond??nia" ]
      }
    , { name = "Roraima"
      , code = "RR"
      , unofficialNames = [ "Roraima" ]
      }
    , { name = "Rio Grande do Sul"
      , code = "RS"
      , unofficialNames = [ "Rio Grande do Sul" ]
      }
    , { name = "Santa Catarina"
      , code = "SC"
      , unofficialNames = [ "Santa Catarina" ]
      }
    , { name = "Sergipe"
      , code = "SE"
      , unofficialNames = [ "Sergipe" ]
      }
    , { name = "S??o Paulo"
      , code = "SP"
      , unofficialNames = [ "S??o Paulo" ]
      }
    , { name = "Tocantins"
      , code = "TO"
      , unofficialNames = [ "Tocantins" ]
      }
    ]


{-| -}
countryBSSubdivisions : List Subdivision
countryBSSubdivisions =
    [ { name = "Acklins and Crooked Islands"
      , code = "AC"
      , unofficialNames = [ "Acklins and Crooked Islands" ]
      }
    , { name = "Bimini"
      , code = "BI"
      , unofficialNames = [ "Bimini Islands" ]
      }
    , { name = "Cat Island"
      , code = "CI"
      , unofficialNames = [ "Cat Island" ]
      }
    , { name = "Exuma"
      , code = "EX"
      , unofficialNames = [ "Exuma" ]
      }
    , { name = "Fresh Creek"
      , code = "FC"
      , unofficialNames = [ "Fresh Creek" ]
      }
    , { name = "Freeport"
      , code = "FP"
      , unofficialNames = [ "Freeport" ]
      }
    , { name = "Governor's Harbour"
      , code = "GH"
      , unofficialNames = [ "Governor's Harbour" ]
      }
    , { name = "Green Turtle Cay"
      , code = "GT"
      , unofficialNames = [ "Green Turtle Cay" ]
      }
    , { name = "Harbour Island"
      , code = "HI"
      , unofficialNames = [ "Harbour Island" ]
      }
    , { name = "High Rock"
      , code = "HR"
      , unofficialNames = [ "High Rock" ]
      }
    , { name = "Inagua"
      , code = "IN"
      , unofficialNames = [ "Inagua" ]
      }
    , { name = "Kemps Bay"
      , code = "KB"
      , unofficialNames = [ "Kemps Bay" ]
      }
    , { name = "Long Island"
      , code = "LI"
      , unofficialNames = [ "Long Island" ]
      }
    , { name = "Mayaguana"
      , code = "MG"
      , unofficialNames = [ "Mayaguana" ]
      }
    , { name = "Marsh Harbour"
      , code = "MH"
      , unofficialNames = [ "Marsh Harbour" ]
      }
    , { name = "Nicholls Town and Berry Islands"
      , code = "NB"
      , unofficialNames = [ "Nicholls Town and Berry Islands" ]
      }
    , { name = "New Providence"
      , code = "NP"
      , unofficialNames = [ "New Providence" ]
      }
    , { name = "Ragged Island"
      , code = "RI"
      , unofficialNames = [ "Ragged Island" ]
      }
    , { name = "Rock Sound"
      , code = "RS"
      , unofficialNames = [ "Rock Sound" ]
      }
    , { name = "Sandy Point"
      , code = "SP"
      , unofficialNames = [ "Sandy Point" ]
      }
    , { name = "San Salvador and Rum Cay"
      , code = "SR"
      , unofficialNames = [ "San Salvador and Rum Cay" ]
      }
    ]


{-| -}
countryBTSubdivisions : List Subdivision
countryBTSubdivisions =
    [ { name = "Paro"
      , code = "11"
      , unofficialNames = [ "Paro", "Rinpung" ]
      }
    , { name = "Chhukha"
      , code = "12"
      , unofficialNames = [ "Chhuka", "Chuka", "Chukha" ]
      }
    , { name = "Ha"
      , code = "13"
      , unofficialNames = [ "Ha", "Haa" ]
      }
    , { name = "Samtse"
      , code = "14"
      , unofficialNames = [ "Samchi", "Samtse" ]
      }
    , { name = "Thimphu"
      , code = "15"
      , unofficialNames = [ "Thimbu", "Thimphu", "Thimpu", "Timbhu", "Timbu", "Timphu" ]
      }
    , { name = "Tsirang"
      , code = "21"
      , unofficialNames = [ "Chirang", "Tsirang" ]
      }
    , { name = "Dagana"
      , code = "22"
      , unofficialNames = [ "Daga", "Dagana" ]
      }
    , { name = "Punakha"
      , code = "23"
      , unofficialNames = [ "Punakha" ]
      }
    , { name = "Wangdue Phodrang"
      , code = "24"
      , unofficialNames = [ "Wangdi Phodrang", "Wangdiphodrang", "Wangdue", "Wangdue Phodrang" ]
      }
    , { name = "Sarpang"
      , code = "31"
      , unofficialNames = [ "Gaylegphug", "Geylegphug", "Sarbhang", "Sarpang" ]
      }
    , { name = "Trongsa"
      , code = "32"
      , unofficialNames = [ "Tongsa", "Trongsa" ]
      }
    , { name = "Bumthang"
      , code = "33"
      , unofficialNames = [ "Bumthang" ]
      }
    , { name = "Zhemgang"
      , code = "34"
      , unofficialNames = [ "Shemgang", "Zhemgang" ]
      }
    , { name = "Trashigang"
      , code = "41"
      , unofficialNames = [ "Tashigang", "Trashigang" ]
      }
    , { name = "Monggar"
      , code = "42"
      , unofficialNames = [ "Monggar", "Mongor" ]
      }
    , { name = "Pemagatshel"
      , code = "43"
      , unofficialNames = [ "Pema Gatshel", "Pemagatsel" ]
      }
    , { name = "Lhuentse"
      , code = "44"
      , unofficialNames = [ "Lhuentse", "Lhun Tshi", "Lhuntshi", "Lhuntsi" ]
      }
    , { name = "Samdrup Jongkha"
      , code = "45"
      , unofficialNames = [ "Samdruk Jongkhar", "Samdrup", "Samdrup Jongkha" ]
      }
    , { name = "Gasa"
      , code = "GA"
      , unofficialNames = [ "Gaza" ]
      }
    , { name = "Trashi Yangtse"
      , code = "TY"
      , unofficialNames = [ "Tashiyangtse" ]
      }
    ]


{-| -}
countryBWSubdivisions : List Subdivision
countryBWSubdivisions =
    [ { name = "Central"
      , code = "CE"
      , unofficialNames = [ "Central" ]
      }
    , { name = "Ghanzi"
      , code = "GH"
      , unofficialNames = [ "Ghansi", "Khanzi" ]
      }
    , { name = "Kgalagadi"
      , code = "KG"
      , unofficialNames = [ "Kgalagadi" ]
      }
    , { name = "Kgatleng"
      , code = "KL"
      , unofficialNames = [ "Kgatleng" ]
      }
    , { name = "Kweneng"
      , code = "KW"
      , unofficialNames = [ "Kweneng" ]
      }
    , { name = "North-East"
      , code = "NE"
      , unofficialNames = [ "North-East" ]
      }
    , { name = "North-West"
      , code = "NW"
      , unofficialNames = [ "North-West" ]
      }
    , { name = "South-East"
      , code = "SE"
      , unofficialNames = [ "South-East" ]
      }
    , { name = "Southern"
      , code = "SO"
      , unofficialNames = [ "Southern" ]
      }
    ]


{-| -}
countryBYSubdivisions : List Subdivision
countryBYSubdivisions =
    [ { name = "Brestskaya voblasts' (be) Brestskaya oblast' (ru)"
      , code = "BR"
      , unofficialNames = [ "Bierascie", "Brest-Litovsk", "Brestskaja Oblast??", "Brestskaja Voblasts??", "Brestskaya Oblast??", "Brestskaya Voblasts??", "Brisk", "Brze???? nad Bugiem", "Brze????-Litewski" ]
      }
    , { name = "Homyel'skaya voblasts' (be) Gomel'skaya oblast' (ru)"
      , code = "HO"
      , unofficialNames = [ "Gomel", "Gomelskaja Oblast??", "Gomelskaya Oblast??", "Gomel??", "Homelskaja Voblasts??", "Homelskaya Voblasts??", "Homiel", "Homyel" ]
      }
    , { name = "Hrodzenskaya voblasts' (be) Grodnenskaya oblast' (ru)"
      , code = "HR"
      , unofficialNames = [ "Gardinas", "Grodnenskaja Oblast??", "Grodnenskaya Oblast??", "Grodno", "Horadnia", "Hrodno", "Hrodzenskaja Voblasts??", "Hrodzenskaya Voblasts??" ]
      }
    , { name = "Mahilyowskaya voblasts' (be) Mogilevskaya oblast' (ru)"
      , code = "MA"
      , unofficialNames = [ "Mahiljov", "Mahiljowskaja Voblasts??", "Mahilyov", "Mahilyowskaya Voblasts??", "Mahil??v", "Mahil????", "Mogilev", "Mogiliov", "Mogiljovskaja Oblast??", "Mogilov", "Mogilyovskaya Oblast", "Mogil??v", "Mogil??ov" ]
      }
    , { name = "Minskaya voblasts' (be) Minskaya oblast' (ru)"
      , code = "MI"
      , unofficialNames = [ "Minskaja Oblast??", "Minskaya Oblast??", "Minskaya Voblasts??" ]
      }
    , { name = "Vitsyebskaya voblasts' (be) Vitebskaya oblast' (ru)"
      , code = "VI"
      , unofficialNames = [ "Vicebskaja Voblasts??", "Vicebskaya Voblasts??", "Viciebsk", "Vicjebsk", "Vitebsk", "Vitebskaja Oblast??", "Vitebskaya Oblast??", "Vitsyebsk" ]
      }
    , { name = "Horad Minsk"
      , code = "X1~"
      , unofficialNames = [ "Gorod Minsk", "Horad Minsk", "Mensk" ]
      }
    ]


{-| -}
countryBZSubdivisions : List Subdivision
countryBZSubdivisions =
    [ { name = "Belize"
      , code = "BZ"
      , unofficialNames = [ "Belize" ]
      }
    , { name = "Cayo"
      , code = "CY"
      , unofficialNames = [ "Cayo" ]
      }
    , { name = "Corozal"
      , code = "CZL"
      , unofficialNames = [ "Corozal" ]
      }
    , { name = "Orange Walk"
      , code = "OW"
      , unofficialNames = [ "Orange Walk" ]
      }
    , { name = "Stann Creek"
      , code = "SC"
      , unofficialNames = [ "Stann Creek" ]
      }
    , { name = "Toledo"
      , code = "TOL"
      , unofficialNames = [ "Toledo" ]
      }
    ]


{-| -}
countryCASubdivisions : List Subdivision
countryCASubdivisions =
    [ { name = "Alberta"
      , code = "AB"
      , unofficialNames = [ "Alberta" ]
      }
    , { name = "British Columbia"
      , code = "BC"
      , unofficialNames = [ "Colombie-Britannique" ]
      }
    , { name = "Manitoba"
      , code = "MB"
      , unofficialNames = [ "Manitoba" ]
      }
    , { name = "New Brunswick"
      , code = "NB"
      , unofficialNames = [ "Nouveau-Brunswick" ]
      }
    , { name = "Newfoundland and Labrador"
      , code = "NL"
      , unofficialNames = [ "Terre-Neuve-et-Labrador", "Newfoundland", "Terre-Neuve" ]
      }
    , { name = "Nova Scotia"
      , code = "NS"
      , unofficialNames = [ "Nouvelle-??cosse" ]
      }
    , { name = "Northwest Territories"
      , code = "NT"
      , unofficialNames = [ "Territoires du Nord-Ouest" ]
      }
    , { name = "Nunavut"
      , code = "NU"
      , unofficialNames = [ "Nunavut" ]
      }
    , { name = "Ontario"
      , code = "ON"
      , unofficialNames = [ "Ontario" ]
      }
    , { name = "Prince Edward Island"
      , code = "PE"
      , unofficialNames = [ "??le-du-Prince-??douard" ]
      }
    , { name = "Quebec"
      , code = "QC"
      , unofficialNames = [ "Qu??bec" ]
      }
    , { name = "Saskatchewan"
      , code = "SK"
      , unofficialNames = [ "Saskatchewan" ]
      }
    , { name = "Yukon"
      , code = "YT"
      , unofficialNames = [ "Yukon Territory" ]
      }
    ]


{-| -}
countryCDSubdivisions : List Subdivision
countryCDSubdivisions =
    [ { name = "Bas-Congo"
      , code = "BC"
      , unofficialNames = [ "Bas-Zaire" ]
      }
    , { name = "Bandundu"
      , code = "BN"
      , unofficialNames = [ "Bandundu" ]
      }
    , { name = "??quateur"
      , code = "EQ"
      , unofficialNames = [ "??quateur" ]
      }
    , { name = "Katanga"
      , code = "KA"
      , unofficialNames = [ "Shaba" ]
      }
    , { name = "Kasai-Oriental"
      , code = "KE"
      , unofficialNames = [ "Kasai-Oriental" ]
      }
    , { name = "Kinshasa"
      , code = "KN"
      , unofficialNames = [ "Kinshasa" ]
      }
    , { name = "Kasai-Occidental"
      , code = "KW"
      , unofficialNames = [ "Kasai-Occidental" ]
      }
    , { name = "Maniema"
      , code = "MA"
      , unofficialNames = [ "Maniema" ]
      }
    , { name = "Nord-Kivu"
      , code = "NK"
      , unofficialNames = [ "Nord-Kivu" ]
      }
    , { name = "Orientale"
      , code = "OR"
      , unofficialNames = [ "Haut-Zaire", "Orientale" ]
      }
    , { name = "Sud-Kivu"
      , code = "SK"
      , unofficialNames = [ "Sud-Kivu" ]
      }
    ]


{-| -}
countryCFSubdivisions : List Subdivision
countryCFSubdivisions =
    [ { name = "Ouham"
      , code = "AC"
      , unofficialNames = [ "Ouham" ]
      }
    , { name = "Bamingui-Bangoran"
      , code = "BB"
      , unofficialNames = [ "Bamingui-Bangoran" ]
      }
    , { name = "Bangui"
      , code = "BGF"
      , unofficialNames = [ "Bangui" ]
      }
    , { name = "Basse-Kotto"
      , code = "BK"
      , unofficialNames = [ "Basse-Kotto" ]
      }
    , { name = "Haute-Kotto"
      , code = "HK"
      , unofficialNames = [ "Haute-Kotto" ]
      }
    , { name = "Haut-Mbomou"
      , code = "HM"
      , unofficialNames = [ "Haut-M??bomou" ]
      }
    , { name = "Mamb??r??-Kad????"
      , code = "HS"
      , unofficialNames = [ "Haut-Sangha" ]
      }
    , { name = "Nana-Gr??bizi"
      , code = "KB"
      , unofficialNames = [ "Gribingui", "Nana-Gr??bisi" ]
      }
    , { name = "K??mo"
      , code = "KG"
      , unofficialNames = [ "K??mo Gribingui" ]
      }
    , { name = "Lobaye"
      , code = "LB"
      , unofficialNames = [ "Lobaye" ]
      }
    , { name = "Mbomou"
      , code = "MB"
      , unofficialNames = [ "M??bomou" ]
      }
    , { name = "Ombella-Mpoko"
      , code = "MP"
      , unofficialNames = [ "Ombella-M??poko", "Ombelle Mpoko" ]
      }
    , { name = "Nana-Mamb??r??"
      , code = "NM"
      , unofficialNames = [ "Nana-Mamb??r??" ]
      }
    , { name = "Ouham-Pend??"
      , code = "OP"
      , unofficialNames = [ "Ouham-Pend??" ]
      }
    , { name = "Sangha-Mba??r??"
      , code = "SE"
      , unofficialNames = [ "Mbaer??", "Sangha" ]
      }
    , { name = "Ouaka"
      , code = "UK"
      , unofficialNames = [ "Ouaka" ]
      }
    , { name = "Vakaga"
      , code = "VK"
      , unofficialNames = [ "Vakaga" ]
      }
    ]


{-| -}
countryCGSubdivisions : List Subdivision
countryCGSubdivisions =
    [ { name = "Bouenza"
      , code = "11"
      , unofficialNames = [ "Bou??nza" ]
      }
    , { name = "Pool"
      , code = "12"
      , unofficialNames = [ "Pool" ]
      }
    , { name = "Sangha"
      , code = "13"
      , unofficialNames = [ "Sangha" ]
      }
    , { name = "Plateaux"
      , code = "14"
      , unofficialNames = [ "Plateaux" ]
      }
    , { name = "Cuvette-Ouest"
      , code = "15"
      , unofficialNames = [ "Cuvette Ouest" ]
      }
    , { name = "L??koumou"
      , code = "2"
      , unofficialNames = [ "L??koumou" ]
      }
    , { name = "Kouilou"
      , code = "5"
      , unofficialNames = [ "Kouilou" ]
      }
    , { name = "Likouala"
      , code = "7"
      , unofficialNames = [ "Likouala" ]
      }
    , { name = "Cuvette"
      , code = "8"
      , unofficialNames = [ "Cuvette" ]
      }
    , { name = "Niari"
      , code = "9"
      , unofficialNames = [ "Niari" ]
      }
    , { name = "Brazzaville"
      , code = "BZV"
      , unofficialNames = [ "Brazzaville" ]
      }
    ]


{-| -}
countryCHSubdivisions : List Subdivision
countryCHSubdivisions =
    [ { name = "Aargau (de)"
      , code = "AG"
      , unofficialNames = [ "Argovie" ]
      }
    , { name = "Appenzell Innerrhoden (de)"
      , code = "AI"
      , unofficialNames = [ "Appenzell Innerrhoden (de)" ]
      }
    , { name = "Appenzell Ausserrhoden (de)"
      , code = "AR"
      , unofficialNames = [ "Appenzell-Ausser Rhoden" ]
      }
    , { name = "Bern (de)"
      , code = "BE"
      , unofficialNames = [ "Berne" ]
      }
    , { name = "Basel-Landschaft (de)"
      , code = "BL"
      , unofficialNames = [ "B??le-Campagne" ]
      }
    , { name = "Basel-Stadt (de)"
      , code = "BS"
      , unofficialNames = [ "Basel", "Basilea", "Basle", "Basel-Stadt", "B??le-Ville" ]
      }
    , { name = "Fribourg (fr)"
      , code = "FR"
      , unofficialNames = [ "Freiburg" ]
      }
    , { name = "Gen??ve (fr)"
      , code = "GE"
      , unofficialNames = [ "Ginevra", "Gen??ve", "Genf", "Ginebra" ]
      }
    , { name = "Glarus (de)"
      , code = "GL"
      , unofficialNames = [ "Glaris" ]
      }
    , { name = "Graub??nden (de)"
      , code = "GR"
      , unofficialNames = [ "Grigioni", "Grisons" ]
      }
    , { name = "Jura (fr)"
      , code = "JU"
      , unofficialNames = [ "Jura (fr)" ]
      }
    , { name = "Luzern (de)"
      , code = "LU"
      , unofficialNames = [ "Lucerna", "Lucerne" ]
      }
    , { name = "Neuch??tel (fr)"
      , code = "NE"
      , unofficialNames = [ "Neuenburg" ]
      }
    , { name = "Nidwalden (de)"
      , code = "NW"
      , unofficialNames = [ "Nidwald" ]
      }
    , { name = "Obwalden (de)"
      , code = "OW"
      , unofficialNames = [ "Obwald" ]
      }
    , { name = "Sankt Gallen (de)"
      , code = "SG"
      , unofficialNames = [ "Saint Galle", "Sankt Gallen", "Saint-Gall" ]
      }
    , { name = "Schaffhausen (de)"
      , code = "SH"
      , unofficialNames = [ "Schaffhouse" ]
      }
    , { name = "Solothurn (de)"
      , code = "SO"
      , unofficialNames = [ "Soleure" ]
      }
    , { name = "Schwyz (de)"
      , code = "SZ"
      , unofficialNames = [ "Schwyz (de)" ]
      }
    , { name = "Thurgau (de)"
      , code = "TG"
      , unofficialNames = [ "Thurgovie" ]
      }
    , { name = "Ticino (it)"
      , code = "TI"
      , unofficialNames = [ "Tessin", "Tessin" ]
      }
    , { name = "Uri (de)"
      , code = "UR"
      , unofficialNames = [ "Uri (de)" ]
      }
    , { name = "Vaud (fr)"
      , code = "VD"
      , unofficialNames = [ "Waadt" ]
      }
    , { name = "Valais (fr)"
      , code = "VS"
      , unofficialNames = [ "Vallese", "Wallis" ]
      }
    , { name = "Zug (de)"
      , code = "ZG"
      , unofficialNames = [ "Zoug" ]
      }
    , { name = "Z??rich (de)"
      , code = "ZH"
      , unofficialNames = [ "Zurigo", "Z??rich", "Zurich" ]
      }
    ]


{-| -}
countryCISubdivisions : List Subdivision
countryCISubdivisions =
    [ { name = "Lagunes (R??gion des)"
      , code = "01"
      , unofficialNames = [ "Lagunes (R??gion des)" ]
      }
    , { name = "Haut-Sassandra (R??gion du)"
      , code = "02"
      , unofficialNames = [ "Haut-Sassandra (R??gion du)" ]
      }
    , { name = "Savanes (R??gion des)"
      , code = "03"
      , unofficialNames = [ "Savanes (R??gion des)" ]
      }
    , { name = "Vall??e du Bandama (R??gion de la)"
      , code = "04"
      , unofficialNames = [ "Vall??e du Bandama (R??gion de la)" ]
      }
    , { name = "Moyen-Como?? (R??gion du)"
      , code = "05"
      , unofficialNames = [ "Moyen-Como?? (R??gion du)" ]
      }
    , { name = "18 Montagnes (R??gion des)"
      , code = "06"
      , unofficialNames = [ "18 Montagnes (R??gion des)" ]
      }
    , { name = "Lacs (R??gion des)"
      , code = "07"
      , unofficialNames = [ "Lacs (R??gion des)" ]
      }
    , { name = "Zanzan (R??gion du)"
      , code = "08"
      , unofficialNames = [ "Zanzan (R??gion du)" ]
      }
    , { name = "Bas-Sassandra (R??gion du)"
      , code = "09"
      , unofficialNames = [ "Bas-Sassandra (R??gion du)" ]
      }
    , { name = "Dengu??l?? (R??gion du)"
      , code = "10"
      , unofficialNames = [ "Dengu??l?? (R??gion du)" ]
      }
    , { name = "Nzi-Como?? (R??gion)"
      , code = "11"
      , unofficialNames = [ "Nzi-Como?? (R??gion)" ]
      }
    , { name = "Marahou?? (R??gion de la)"
      , code = "12"
      , unofficialNames = [ "Marahou?? (R??gion de la)" ]
      }
    , { name = "Sud-Como?? (R??gion du)"
      , code = "13"
      , unofficialNames = [ "Sud-Como?? (R??gion du)" ]
      }
    , { name = "Worodougou (R??gion du)"
      , code = "14"
      , unofficialNames = [ "Worodougou (R??gion du)" ]
      }
    , { name = "Sud-Bandama (R??gion du)"
      , code = "15"
      , unofficialNames = [ "Sud-Bandama (R??gion du)" ]
      }
    , { name = "Agn??bi (R??gion de l')"
      , code = "16"
      , unofficialNames = [ "Agn??bi (R??gion de l')" ]
      }
    , { name = "Bafing (R??gion du)"
      , code = "17"
      , unofficialNames = [ "Bafing (R??gion du)" ]
      }
    , { name = "Fromager (R??gion du)"
      , code = "18"
      , unofficialNames = [ "Fromager (R??gion du)" ]
      }
    , { name = "Moyen-Cavally (R??gion du)"
      , code = "19"
      , unofficialNames = [ "Moyen-Cavally (R??gion du)" ]
      }
    ]


{-| -}
countryCKSubdivisions : List Subdivision
countryCKSubdivisions =
    [ { name = "Aitutaki"
      , code = "AI"
      , unofficialNames = [ "Aitutaki" ]
      }
    , { name = "Atiu"
      , code = "AT"
      , unofficialNames = [ "Atiu" ]
      }
    , { name = "Mangaia"
      , code = "MG"
      , unofficialNames = [ "Mangaia" ]
      }
    , { name = "Manihiki"
      , code = "MK"
      , unofficialNames = [ "Manihiki" ]
      }
    , { name = "Ma'uke"
      , code = "MU"
      , unofficialNames = [ "Ma'uke" ]
      }
    , { name = "Mitiaro"
      , code = "MT"
      , unofficialNames = [ "Mitiaro" ]
      }
    , { name = "Palmerston"
      , code = "PA"
      , unofficialNames = [ "Palmerston" ]
      }
    , { name = "Penrhyn"
      , code = "PE"
      , unofficialNames = [ "Penrhyn" ]
      }
    , { name = "Pukapuka"
      , code = "PU"
      , unofficialNames = [ "Pukapuka" ]
      }
    , { name = "Rakahanga"
      , code = "RK"
      , unofficialNames = [ "Rakahanga" ]
      }
    , { name = "Rarotonga"
      , code = "RR"
      , unofficialNames = [ "Rarotonga" ]
      }
    ]


{-| -}
countryCLSubdivisions : List Subdivision
countryCLSubdivisions =
    [ { name = "Ais??n del General Carlos Ib????ez del Campo"
      , code = "AI"
      , unofficialNames = [ "Ais??n del General Carlos Ib????ez del Campo", "Ays??n" ]
      }
    , { name = "Antofagasta"
      , code = "AN"
      , unofficialNames = [ "Antofagasta" ]
      }
    , { name = "Araucan??a"
      , code = "AR"
      , unofficialNames = [ "La Araucan??a" ]
      }
    , { name = "Arica y Parinacota"
      , code = "AP"
      , unofficialNames = [ "Arica y Parinacota" ]
      }
    , { name = "Atacama"
      , code = "AT"
      , unofficialNames = [ "Atacama" ]
      }
    , { name = "B??o-B??o"
      , code = "BI"
      , unofficialNames = [ "B??ob??o" ]
      }
    , { name = "Coquimbo"
      , code = "CO"
      , unofficialNames = [ "Coquimbo" ]
      }
    , { name = "Libertador General Bernardo O'Higgins"
      , code = "LI"
      , unofficialNames = [ "General Bernardo O'Higgins", "Libertador", "Libertador O??Higgins" ]
      }
    , { name = "Los Lagos"
      , code = "LL"
      , unofficialNames = [ "Los Lagos" ]
      }
    , { name = "Los R??os"
      , code = "LR"
      , unofficialNames = [ "Los R??os" ]
      }
    , { name = "Magallanes"
      , code = "MA"
      , unofficialNames = [ "Magellantes y la Ant??rtica Chilena" ]
      }
    , { name = "Maule"
      , code = "ML"
      , unofficialNames = [ "Maule" ]
      }
    , { name = "Regi??n de ??uble"
      , code = "NB"
      , unofficialNames = [ "??uble" ]
      }
    , { name = "Regi??n Metropolitana de Santiago"
      , code = "RM"
      , unofficialNames = [ "Metropolitana de Santiago" ]
      }
    , { name = "Tarapac??"
      , code = "TA"
      , unofficialNames = [ "Tarapac??" ]
      }
    , { name = "Valpara??so"
      , code = "VS"
      , unofficialNames = [ "Valpara??so" ]
      }
    ]


{-| -}
countryCMSubdivisions : List Subdivision
countryCMSubdivisions =
    [ { name = "Adamaoua"
      , code = "AD"
      , unofficialNames = [ "Adamawa" ]
      }
    , { name = "Centre"
      , code = "CE"
      , unofficialNames = [ "Centre" ]
      }
    , { name = "Far North"
      , code = "EN"
      , unofficialNames = [ "Far North" ]
      }
    , { name = "East"
      , code = "ES"
      , unofficialNames = [ "East" ]
      }
    , { name = "Littoral"
      , code = "LT"
      , unofficialNames = [ "Littoral" ]
      }
    , { name = "North"
      , code = "NO"
      , unofficialNames = [ "B??nou??" ]
      }
    , { name = "North-West"
      , code = "NW"
      , unofficialNames = [ "North-West" ]
      }
    , { name = "West"
      , code = "OU"
      , unofficialNames = [ "West" ]
      }
    , { name = "South"
      , code = "SU"
      , unofficialNames = [ "South" ]
      }
    , { name = "South-West"
      , code = "SW"
      , unofficialNames = [ "South-West" ]
      }
    ]


{-| -}
countryCNSubdivisions : List Subdivision
countryCNSubdivisions =
    [ { name = "Beijing"
      , code = "BJ"
      , unofficialNames = [ "Beijing", "Pek??n" ]
      }
    , { name = "Tianjin"
      , code = "TJ"
      , unofficialNames = [ "Tianjin" ]
      }
    , { name = "Hebei"
      , code = "HE"
      , unofficialNames = [ "Hebei" ]
      }
    , { name = "Shanxi"
      , code = "SX"
      , unofficialNames = [ "Shanxi" ]
      }
    , { name = "Nei Mongol (mn)"
      , code = "NM"
      , unofficialNames = [ "Inner Mongolia", "Nei Monggol" ]
      }
    , { name = "Liaoning"
      , code = "LN"
      , unofficialNames = [ "Liaoning" ]
      }
    , { name = "Jilin"
      , code = "JL"
      , unofficialNames = [ "Jilin" ]
      }
    , { name = "Heilongjiang"
      , code = "HL"
      , unofficialNames = [ "Heilongjiang" ]
      }
    , { name = "Shanghai"
      , code = "SH"
      , unofficialNames = [ "Schanghai" ]
      }
    , { name = "Jiangsu"
      , code = "JS"
      , unofficialNames = [ "Jiangsu" ]
      }
    , { name = "Zhejiang"
      , code = "ZJ"
      , unofficialNames = [ "Zhejiang" ]
      }
    , { name = "Anhui"
      , code = "AH"
      , unofficialNames = [ "Anhui" ]
      }
    , { name = "Fujian"
      , code = "FJ"
      , unofficialNames = [ "Fujian" ]
      }
    , { name = "Jiangxi"
      , code = "JX"
      , unofficialNames = [ "Jiangxi" ]
      }
    , { name = "Shandong"
      , code = "SD"
      , unofficialNames = [ "Shandong" ]
      }
    , { name = "Henan"
      , code = "HA"
      , unofficialNames = [ "Henan" ]
      }
    , { name = "Hubei"
      , code = "HB"
      , unofficialNames = [ "Hubei" ]
      }
    , { name = "Hunan"
      , code = "HN"
      , unofficialNames = [ "Hunan" ]
      }
    , { name = "Guangdong"
      , code = "GD"
      , unofficialNames = [ "Guangdong" ]
      }
    , { name = "Guangxi"
      , code = "GX"
      , unofficialNames = [ "Guangxi Zhuang" ]
      }
    , { name = "Hainan"
      , code = "HI"
      , unofficialNames = [ "Hainan" ]
      }
    , { name = "Chongqing"
      , code = "CQ"
      , unofficialNames = [ "Chongqing" ]
      }
    , { name = "Sichuan"
      , code = "SC"
      , unofficialNames = [ "Sichuan" ]
      }
    , { name = "Guizhou"
      , code = "GZ"
      , unofficialNames = [ "Guizhou" ]
      }
    , { name = "Yunnan"
      , code = "YN"
      , unofficialNames = [ "Yunnan" ]
      }
    , { name = "Xizang"
      , code = "XZ"
      , unofficialNames = [ "Tibet" ]
      }
    , { name = "Shaanxi"
      , code = "SN"
      , unofficialNames = [ "Shaanxi" ]
      }
    , { name = "Gansu"
      , code = "GS"
      , unofficialNames = [ "Gansu" ]
      }
    , { name = "Qinghai"
      , code = "QH"
      , unofficialNames = [ "Qinghai" ]
      }
    , { name = "Ningxia"
      , code = "NX"
      , unofficialNames = [ "Ningxia Hui" ]
      }
    , { name = "Xinjiang"
      , code = "XJ"
      , unofficialNames = [ "Uighur", "Uygur" ]
      }
    , { name = "Taiwan *"
      , code = "TW"
      , unofficialNames = [ "Taiwan *" ]
      }
    , { name = "Xianggang (zh) **"
      , code = "HK"
      , unofficialNames = [ "Xianggang", "Hongkong" ]
      }
    , { name = "Aomen (zh) ***"
      , code = "MO"
      , unofficialNames = [ "Aomen (zh) ***" ]
      }
    ]


{-| -}
countryCOSubdivisions : List Subdivision
countryCOSubdivisions =
    [ { name = "Amazonas"
      , code = "AMA"
      , unofficialNames = [ "Amazonas" ]
      }
    , { name = "Antioquia"
      , code = "ANT"
      , unofficialNames = [ "Antioquia" ]
      }
    , { name = "Arauca"
      , code = "ARA"
      , unofficialNames = [ "Arauca" ]
      }
    , { name = "Atl??ntico"
      , code = "ATL"
      , unofficialNames = [ "Atl??ntico" ]
      }
    , { name = "Bol??var"
      , code = "BOL"
      , unofficialNames = [ "Bol??var" ]
      }
    , { name = "Boyac??"
      , code = "BOY"
      , unofficialNames = [ "Boyac??" ]
      }
    , { name = "Caldas"
      , code = "CAL"
      , unofficialNames = [ "Caldas" ]
      }
    , { name = "Caquet??"
      , code = "CAQ"
      , unofficialNames = [ "Caquet??" ]
      }
    , { name = "Casanare"
      , code = "CAS"
      , unofficialNames = [ "Casanare" ]
      }
    , { name = "Cauca"
      , code = "CAU"
      , unofficialNames = [ "Cauca" ]
      }
    , { name = "Cesar"
      , code = "CES"
      , unofficialNames = [ "Cesar" ]
      }
    , { name = "Choc??"
      , code = "CHO"
      , unofficialNames = [ "Choc??" ]
      }
    , { name = "C??rdoba"
      , code = "COR"
      , unofficialNames = [ "C??rdoba" ]
      }
    , { name = "Cundinamarca"
      , code = "CUN"
      , unofficialNames = [ "Cundinamarca" ]
      }
    , { name = "Distrito Capital de Bogot??"
      , code = "DC"
      , unofficialNames = [ "Santaf?? de Bogot?? Distrito Capital" ]
      }
    , { name = "Guain??a"
      , code = "GUA"
      , unofficialNames = [ "Guain??a" ]
      }
    , { name = "Guaviare"
      , code = "GUV"
      , unofficialNames = [ "Guaviare" ]
      }
    , { name = "Huila"
      , code = "HUI"
      , unofficialNames = [ "Huila" ]
      }
    , { name = "La Guajira"
      , code = "LAG"
      , unofficialNames = [ "La Guajira" ]
      }
    , { name = "Magdalena"
      , code = "MAG"
      , unofficialNames = [ "Magdalena" ]
      }
    , { name = "Meta"
      , code = "MET"
      , unofficialNames = [ "Meta" ]
      }
    , { name = "Nari??o"
      , code = "NAR"
      , unofficialNames = [ "Nari??o" ]
      }
    , { name = "Norte de Santander"
      , code = "NSA"
      , unofficialNames = [ "Norte de Santander" ]
      }
    , { name = "Putumayo"
      , code = "PUT"
      , unofficialNames = [ "Putumayo" ]
      }
    , { name = "Quind??o"
      , code = "QUI"
      , unofficialNames = [ "Quind??o" ]
      }
    , { name = "Risaralda"
      , code = "RIS"
      , unofficialNames = [ "Risaralda" ]
      }
    , { name = "Santander"
      , code = "SAN"
      , unofficialNames = [ "Santander" ]
      }
    , { name = "San Andr??s, Providencia y Santa Catalina"
      , code = "SAP"
      , unofficialNames = [ "San Andr??s, Providencia y Santa Catalina" ]
      }
    , { name = "Sucre"
      , code = "SUC"
      , unofficialNames = [ "Sucre" ]
      }
    , { name = "Tolima"
      , code = "TOL"
      , unofficialNames = [ "Tolima" ]
      }
    , { name = "Valle del Cauca"
      , code = "VAC"
      , unofficialNames = [ "Valle del Cauca" ]
      }
    , { name = "Vaup??s"
      , code = "VAU"
      , unofficialNames = [ "Vaup??s" ]
      }
    , { name = "Vichada"
      , code = "VID"
      , unofficialNames = [ "Vichada" ]
      }
    ]


{-| -}
countryCRSubdivisions : List Subdivision
countryCRSubdivisions =
    [ { name = "Alajuela"
      , code = "A"
      , unofficialNames = [ "Alajuela" ]
      }
    , { name = "Cartago"
      , code = "C"
      , unofficialNames = [ "Cartago" ]
      }
    , { name = "Guanacaste"
      , code = "G"
      , unofficialNames = [ "Guanacaste" ]
      }
    , { name = "Heredia"
      , code = "H"
      , unofficialNames = [ "Heredia" ]
      }
    , { name = "Lim??n"
      , code = "L"
      , unofficialNames = [ "Lim??n" ]
      }
    , { name = "Puntarenas"
      , code = "P"
      , unofficialNames = [ "Puntarenas" ]
      }
    , { name = "San Jos??"
      , code = "SJ"
      , unofficialNames = [ "San Jos??" ]
      }
    ]


{-| -}
countryCUSubdivisions : List Subdivision
countryCUSubdivisions =
    [ { name = "Pinar del R??o"
      , code = "01"
      , unofficialNames = [ "Pinar del R??o" ]
      }
    , { name = "La Habana"
      , code = "03"
      , unofficialNames = [ "La Habana" ]
      }
    , { name = "Matanzas"
      , code = "04"
      , unofficialNames = [ "Matanzas" ]
      }
    , { name = "Villa Clara"
      , code = "05"
      , unofficialNames = [ "Villa Clara" ]
      }
    , { name = "Cienfuegos"
      , code = "06"
      , unofficialNames = [ "Cienfuegos" ]
      }
    , { name = "Sancti Sp??ritus"
      , code = "07"
      , unofficialNames = [ "Sancti Sp??ritus" ]
      }
    , { name = "Ciego de ??vila"
      , code = "08"
      , unofficialNames = [ "Ciego de ??vila" ]
      }
    , { name = "Camag??ey"
      , code = "09"
      , unofficialNames = [ "Camag??ey" ]
      }
    , { name = "Las Tunas"
      , code = "10"
      , unofficialNames = [ "Las Tunas" ]
      }
    , { name = "Holgu??n"
      , code = "11"
      , unofficialNames = [ "Holgu??n" ]
      }
    , { name = "Granma"
      , code = "12"
      , unofficialNames = [ "Granma" ]
      }
    , { name = "Santiago de Cuba"
      , code = "13"
      , unofficialNames = [ "Santiago de Cuba" ]
      }
    , { name = "Guant??namo"
      , code = "14"
      , unofficialNames = [ "Guant??namo" ]
      }
    , { name = "Artemisa"
      , code = "15"
      , unofficialNames = [ "Artemisa" ]
      }
    , { name = "Mayabeque"
      , code = "16"
      , unofficialNames = [ "Mayabeque" ]
      }
    , { name = "Isla de la Juventud"
      , code = "99"
      , unofficialNames = [ "Isla de la Juventud" ]
      }
    ]


{-| -}
countryCVSubdivisions : List Subdivision
countryCVSubdivisions =
    [ { name = "Brava"
      , code = "BR"
      , unofficialNames = [ "Brava" ]
      }
    , { name = "Boa Vista"
      , code = "BV"
      , unofficialNames = [ "Boa Vista" ]
      }
    , { name = "Santa Catarina"
      , code = "CA"
      , unofficialNames = [ "Santa Catarina" ]
      }
    , { name = "Santa Cruz"
      , code = "CR"
      , unofficialNames = [ "Santa Cruz" ]
      }
    , { name = "Calheta de S??o Miguel"
      , code = "CS"
      , unofficialNames = [ "Calheta de S??o Miguel" ]
      }
    , { name = "Maio"
      , code = "MA"
      , unofficialNames = [ "Maio" ]
      }
    , { name = "Mosteiros"
      , code = "MO"
      , unofficialNames = [ "Mosteiros" ]
      }
    , { name = "Pa??l"
      , code = "PA"
      , unofficialNames = [ "Pa??l" ]
      }
    , { name = "Porto Novo"
      , code = "PN"
      , unofficialNames = [ "Porto Novo" ]
      }
    , { name = "Praia"
      , code = "PR"
      , unofficialNames = [ "Praia" ]
      }
    , { name = "Ribeira Grande"
      , code = "RG"
      , unofficialNames = [ "Santiago" ]
      }
    , { name = "S??o Domingos"
      , code = "SD"
      , unofficialNames = [ "S??o Domingos" ]
      }
    , { name = "S??o Filipe"
      , code = "SF"
      , unofficialNames = [ "S??o Filipe" ]
      }
    , { name = "Sal"
      , code = "SL"
      , unofficialNames = [ "Sal" ]
      }
    , { name = "S??o Nicolau"
      , code = "SN"
      , unofficialNames = [ "S??o Nicolau" ]
      }
    , { name = "S??o Vicente"
      , code = "SV"
      , unofficialNames = [ "S??o Vicente" ]
      }
    , { name = "Tarrafal"
      , code = "TA"
      , unofficialNames = [ "Tarrafal" ]
      }
    ]


{-| -}
countryCWSubdivisions : List Subdivision
countryCWSubdivisions =
    []


{-| -}
countryCYSubdivisions : List Subdivision
countryCYSubdivisions =
    [ { name = "Lefkosia"
      , code = "01"
      , unofficialNames = [ "Lefkosia" ]
      }
    , { name = "Lemesos"
      , code = "02"
      , unofficialNames = [ "Lemesos" ]
      }
    , { name = "Larnaka"
      , code = "03"
      , unofficialNames = [ "Larnaka" ]
      }
    , { name = "Ammochostos"
      , code = "04"
      , unofficialNames = [ "Ammochostos" ]
      }
    , { name = "Pafos"
      , code = "05"
      , unofficialNames = [ "Pafos" ]
      }
    , { name = "Keryneia"
      , code = "06"
      , unofficialNames = [ "Keryneia" ]
      }
    ]


{-| -}
countryCZSubdivisions : List Subdivision
countryCZSubdivisions =
    [ { name = "Jiho??esk?? kraj"
      , code = "JC"
      , unofficialNames = [ "Bud??jovick??", "??eskobud??jovick??" ]
      }
    , { name = "Jihomoravsk?? kraj "
      , code = "JM"
      , unofficialNames = [ "Brn??nsk??" ]
      }
    , { name = "Karlovarsk?? kraj"
      , code = "KA"
      , unofficialNames = [ "Karlovarsk?? kraj" ]
      }
    , { name = "Kr??lov??hradeck?? kraj"
      , code = "KR"
      , unofficialNames = [ "Kr??lov??hradeck?? kraj" ]
      }
    , { name = "Libereck?? kraj"
      , code = "LI"
      , unofficialNames = [ "Libereck?? kraj" ]
      }
    , { name = "Moravskoslezsk?? kraj"
      , code = "MO"
      , unofficialNames = [ "Ostravsk??" ]
      }
    , { name = "Olomouck?? kraj"
      , code = "OL"
      , unofficialNames = [ "Olomouck?? kraj" ]
      }
    , { name = "Pardubick?? kraj"
      , code = "PA"
      , unofficialNames = [ "Pardubick?? kraj" ]
      }
    , { name = "Plze??sk?? kraj"
      , code = "PL"
      , unofficialNames = [ "Plze??sk?? kraj" ]
      }
    , { name = "Praha, hlavn?? m??sto"
      , code = "PR"
      , unofficialNames = [ "Hlavn?? m??sto Praha", "Praha", "Prag", "Prague" ]
      }
    , { name = "St??edo??esk?? kraj"
      , code = "ST"
      , unofficialNames = [ "Central Bohemia", "Mittelb??hmen", "St??edo??esk??" ]
      }
    , { name = "??steck?? kraj"
      , code = "US"
      , unofficialNames = [ "??steck?? kraj" ]
      }
    , { name = "Vyso??ina"
      , code = "VY"
      , unofficialNames = [ "Jihlavsk??" ]
      }
    , { name = "Zl??nsk?? kraj"
      , code = "ZL"
      , unofficialNames = [ "Zl??nsk?? kraj" ]
      }
    ]


{-| -}
countryDESubdivisions : List Subdivision
countryDESubdivisions =
    [ { name = "Brandenburg"
      , code = "BB"
      , unofficialNames = [ "Brandenbourg", "Brandenburgo" ]
      }
    , { name = "Berlin"
      , code = "BE"
      , unofficialNames = [ "Berl??n" ]
      }
    , { name = "Baden-W??rttemberg"
      , code = "BW"
      , unofficialNames = [ "Baden-W??rttemberg" ]
      }
    , { name = "Bayern"
      , code = "BY"
      , unofficialNames = [ "Bavi??re", "Bayern", "Bavaria" ]
      }
    , { name = "Bremen"
      , code = "HB"
      , unofficialNames = [ "Br??me" ]
      }
    , { name = "Hessen"
      , code = "HE"
      , unofficialNames = [ "Hessen", "Hesse" ]
      }
    , { name = "Hamburg"
      , code = "HH"
      , unofficialNames = [ "Amburgo", "Hambourg", "Hamburgo" ]
      }
    , { name = "Mecklenburg-Vorpommern"
      , code = "MV"
      , unofficialNames = [ "Mecklenburg-Vorpommern" ]
      }
    , { name = "Niedersachsen"
      , code = "NI"
      , unofficialNames = [ "Niedersachsen" ]
      }
    , { name = "Nordrhein-Westfalen"
      , code = "NW"
      , unofficialNames = [ "Nordrhein-Westfalen", "Rh??nanie-Westphalie" ]
      }
    , { name = "Rheinland-Pfalz"
      , code = "RP"
      , unofficialNames = [ "Rheinland-Pfalz", "Rh??nanie-Palatinat", "Rhineland-Palatinate" ]
      }
    , { name = "Schleswig-Holstein"
      , code = "SH"
      , unofficialNames = [ "Schleswig-Holstein" ]
      }
    , { name = "Saarland"
      , code = "SL"
      , unofficialNames = [ "Saarland" ]
      }
    , { name = "Sachsen"
      , code = "SN"
      , unofficialNames = [ "Sachsen" ]
      }
    , { name = "Sachsen-Anhalt"
      , code = "ST"
      , unofficialNames = [ "Sachsen-Anhalt" ]
      }
    , { name = "Th??ringen"
      , code = "TH"
      , unofficialNames = [ "Th??ringen" ]
      }
    ]


{-| -}
countryDJSubdivisions : List Subdivision
countryDJSubdivisions =
    [ { name = "Arta"
      , code = "AR"
      , unofficialNames = [ "Arta" ]
      }
    , { name = "Ali Sabieh"
      , code = "AS"
      , unofficialNames = [ "Ali Sabieh", "Ali Sabih" ]
      }
    , { name = "Dikhil"
      , code = "DI"
      , unofficialNames = [ "Dikhil", "Dikkil" ]
      }
    , { name = "Djibouti"
      , code = "DJ"
      , unofficialNames = [ "Djibouti" ]
      }
    , { name = "Obock"
      , code = "OB"
      , unofficialNames = [ "Obock", "Obok" ]
      }
    , { name = "Tadjourah"
      , code = "TA"
      , unofficialNames = [ "Tadjoura", "Tadjourah", "Tajura" ]
      }
    ]


{-| -}
countryDKSubdivisions : List Subdivision
countryDKSubdivisions =
    [ { name = "K??benhavn"
      , code = "015"
      , unofficialNames = [ "K??benhavn" ]
      }
    , { name = "Frederiksborg"
      , code = "020"
      , unofficialNames = [ "Frederiksborg" ]
      }
    , { name = "Roskilde"
      , code = "025"
      , unofficialNames = [ "Roskilde" ]
      }
    , { name = "Vestsj??lland"
      , code = "030"
      , unofficialNames = [ "Vestsj??lland" ]
      }
    , { name = "Storstr??m"
      , code = "035"
      , unofficialNames = [ "Storstr??m" ]
      }
    , { name = "Bornholm"
      , code = "040"
      , unofficialNames = [ "Bornholm" ]
      }
    , { name = "Fyn"
      , code = "042"
      , unofficialNames = [ "Fyn" ]
      }
    , { name = "S??nderjylland"
      , code = "050"
      , unofficialNames = [ "S??nderjylland" ]
      }
    , { name = "Ribe"
      , code = "055"
      , unofficialNames = [ "Ribe" ]
      }
    , { name = "Vejle"
      , code = "060"
      , unofficialNames = [ "Vejle" ]
      }
    , { name = "Ringk??bing"
      , code = "065"
      , unofficialNames = [ "Ringk??bing" ]
      }
    , { name = "??rhus"
      , code = "070"
      , unofficialNames = [ "??rhus" ]
      }
    , { name = "Viborg"
      , code = "076"
      , unofficialNames = [ "Viborg" ]
      }
    , { name = "Nordjylland"
      , code = "080"
      , unofficialNames = [ "Nordjylland" ]
      }
    , { name = "K??benhavn City"
      , code = "101"
      , unofficialNames = [ "K??benhavn City" ]
      }
    , { name = "Frederiksberg City"
      , code = "147"
      , unofficialNames = [ "Frederiksberg City" ]
      }
    , { name = "North Jutland"
      , code = "81"
      , unofficialNames = [ "Nordjylland" ]
      }
    , { name = "Central Jutland"
      , code = "82"
      , unofficialNames = [ "Midtjylland" ]
      }
    , { name = "South Denmark"
      , code = "83"
      , unofficialNames = [ "Syddanmark" ]
      }
    , { name = "Capital"
      , code = "84"
      , unofficialNames = [ "Region Hovedstaden" ]
      }
    , { name = "Zeeland"
      , code = "85"
      , unofficialNames = [ "Sj??lland" ]
      }
    ]


{-| -}
countryDMSubdivisions : List Subdivision
countryDMSubdivisions =
    [ { name = "Saint Andrew"
      , code = "02"
      , unofficialNames = [ "Saint Andrew" ]
      }
    , { name = "Saint David"
      , code = "03"
      , unofficialNames = [ "Saint David" ]
      }
    , { name = "Saint George"
      , code = "04"
      , unofficialNames = [ "Saint George" ]
      }
    , { name = "Saint John"
      , code = "05"
      , unofficialNames = [ "Saint John" ]
      }
    , { name = "Saint Joseph"
      , code = "06"
      , unofficialNames = [ "Saint Joseph" ]
      }
    , { name = "Saint Luke"
      , code = "07"
      , unofficialNames = [ "Saint Luke" ]
      }
    , { name = "Saint Mark"
      , code = "08"
      , unofficialNames = [ "Saint Mark" ]
      }
    , { name = "Saint Patrick"
      , code = "09"
      , unofficialNames = [ "Saint Patrick" ]
      }
    , { name = "Saint Paul"
      , code = "10"
      , unofficialNames = [ "Saint Paul" ]
      }
    , { name = "Saint Peter"
      , code = "11"
      , unofficialNames = [ "Saint Peter" ]
      }
    ]


{-| -}
countryDOSubdivisions : List Subdivision
countryDOSubdivisions =
    [ { name = "Distrito Nacional (Santo Domingo)"
      , code = "01"
      , unofficialNames = [ "Distrito Nacional (Santo Domingo)" ]
      }
    , { name = "Azua"
      , code = "02"
      , unofficialNames = [ "Azua" ]
      }
    , { name = "Bahoruco"
      , code = "03"
      , unofficialNames = [ "Bahoruco", "Baoruco" ]
      }
    , { name = "Barahona"
      , code = "04"
      , unofficialNames = [ "Barahona" ]
      }
    , { name = "Dajab??n"
      , code = "05"
      , unofficialNames = [ "Dajab??n" ]
      }
    , { name = "Duarte"
      , code = "06"
      , unofficialNames = [ "Duarte" ]
      }
    , { name = "La Estrelleta [El??as Pi??a]"
      , code = "07"
      , unofficialNames = [ "La Estrelleta [El??as Pi??a]" ]
      }
    , { name = "El Seybo [El Seibo]"
      , code = "08"
      , unofficialNames = [ "El Seybo [El Seibo]" ]
      }
    , { name = "Espaillat"
      , code = "09"
      , unofficialNames = [ "Espaillat" ]
      }
    , { name = "Independencia"
      , code = "10"
      , unofficialNames = [ "Independencia" ]
      }
    , { name = "La Altagracia"
      , code = "11"
      , unofficialNames = [ "La Altagracia" ]
      }
    , { name = "La Romana"
      , code = "12"
      , unofficialNames = [ "La Romana" ]
      }
    , { name = "La Vega"
      , code = "13"
      , unofficialNames = [ "La Vega" ]
      }
    , { name = "Mar??a Trinidad S??nchez"
      , code = "14"
      , unofficialNames = [ "Mar??a Trinidad S??nchez" ]
      }
    , { name = "Monte Cristi"
      , code = "15"
      , unofficialNames = [ "Monte Cristi" ]
      }
    , { name = "Pedernales"
      , code = "16"
      , unofficialNames = [ "Pedernales" ]
      }
    , { name = "Peravia"
      , code = "17"
      , unofficialNames = [ "Peravia" ]
      }
    , { name = "Puerto Plata"
      , code = "18"
      , unofficialNames = [ "Puerto Plata" ]
      }
    , { name = "Salcedo"
      , code = "19"
      , unofficialNames = [ "Salcedo" ]
      }
    , { name = "Saman??"
      , code = "20"
      , unofficialNames = [ "Saman??" ]
      }
    , { name = "San Crist??bal"
      , code = "21"
      , unofficialNames = [ "San Crist??bal" ]
      }
    , { name = "San Juan"
      , code = "22"
      , unofficialNames = [ "San Juan" ]
      }
    , { name = "San Pedro de Macor??s"
      , code = "23"
      , unofficialNames = [ "San Pedro de Macor??s" ]
      }
    , { name = "S??nchez Ram??rez"
      , code = "24"
      , unofficialNames = [ "S??nchez Ram??rez" ]
      }
    , { name = "Santiago"
      , code = "25"
      , unofficialNames = [ "Santiago" ]
      }
    , { name = "Santiago Rodr??guez"
      , code = "26"
      , unofficialNames = [ "Santiago Rodr??guez" ]
      }
    , { name = "Valverde"
      , code = "27"
      , unofficialNames = [ "Valverde" ]
      }
    , { name = "Monse??or Nouel"
      , code = "28"
      , unofficialNames = [ "Monse??or Nouel" ]
      }
    , { name = "Monte Plata"
      , code = "29"
      , unofficialNames = [ "Monte Plata" ]
      }
    , { name = "Hato Mayor"
      , code = "30"
      , unofficialNames = [ "Hato Mayor" ]
      }
    , { name = "San Jose de Ocoa"
      , code = "31"
      , unofficialNames = [ "San Jose de Ocoa" ]
      }
    ]


{-| -}
countryDZSubdivisions : List Subdivision
countryDZSubdivisions =
    [ { name = "Adrar"
      , code = "01"
      , unofficialNames = [ "Adrar" ]
      }
    , { name = "Chlef"
      , code = "02"
      , unofficialNames = [ "Al Asnam", "Al Asn??m", "Chelef", "Chelf", "Chlef", "Chlif", "Ech Cheliff", "El Asnam" ]
      }
    , { name = "Laghouat"
      , code = "03"
      , unofficialNames = [ "Laghouat" ]
      }
    , { name = "Oum el Bouaghi"
      , code = "04"
      , unofficialNames = [ "Canrobert", "Oum el Bouaghi" ]
      }
    , { name = "Batna"
      , code = "05"
      , unofficialNames = [ "Batna" ]
      }
    , { name = "B??ja??a"
      , code = "06"
      , unofficialNames = [ "Beja??a", "B??ja??a", "Bougie" ]
      }
    , { name = "Biskra"
      , code = "07"
      , unofficialNames = [ "Beskra", "Biskara", "Biskra" ]
      }
    , { name = "B??char"
      , code = "08"
      , unofficialNames = [ "B??char" ]
      }
    , { name = "Blida"
      , code = "09"
      , unofficialNames = [ "El Boulaida", "Blida" ]
      }
    , { name = "Bouira"
      , code = "10"
      , unofficialNames = [ "Bouira" ]
      }
    , { name = "Tamanghasset"
      , code = "11"
      , unofficialNames = [ "Fort-Laperrine", "Tamanghist", "Tamanrasset" ]
      }
    , { name = "T??bessa"
      , code = "12"
      , unofficialNames = [ "Tbessa", "T??bessa" ]
      }
    , { name = "Tlemcen"
      , code = "13"
      , unofficialNames = [ "Tilimsen", "Tlemcen" ]
      }
    , { name = "Tiaret"
      , code = "14"
      , unofficialNames = [ "Tihert", "Tiaret" ]
      }
    , { name = "Tizi Ouzou"
      , code = "15"
      , unofficialNames = [ "Tizi-Ouzou" ]
      }
    , { name = "Alger"
      , code = "16"
      , unofficialNames = [ "Al-Jazair", "Al-Jaza??ir", "El Djazair", "al-Jaz????ir", "Algier", "Alger" ]
      }
    , { name = "Djelfa"
      , code = "17"
      , unofficialNames = [ "El Djelfa", "Djelfa" ]
      }
    , { name = "Jijel"
      , code = "18"
      , unofficialNames = [ "Djidjel", "Djidjelli", "Jijel", "Djidjeli" ]
      }
    , { name = "S??tif"
      , code = "19"
      , unofficialNames = [ "Setif", "Stif", "S??tif" ]
      }
    , { name = "Sa??da"
      , code = "20"
      , unofficialNames = [ "Saida", "Sa??da" ]
      }
    , { name = "Skikda"
      , code = "21"
      , unofficialNames = [ "Skikda" ]
      }
    , { name = "Sidi Bel Abb??s"
      , code = "22"
      , unofficialNames = [ "Sidi bel Abb??s" ]
      }
    , { name = "Annaba"
      , code = "23"
      , unofficialNames = [ "Bona", "B??ne", "Annaba" ]
      }
    , { name = "Guelma"
      , code = "24"
      , unofficialNames = [ "Guelma" ]
      }
    , { name = "Constantine"
      , code = "25"
      , unofficialNames = [ "Ksontina", "Qacentina", "Qoussantina", "Qusan????nah", "Constantine" ]
      }
    , { name = "M??d??a"
      , code = "26"
      , unofficialNames = [ "Lemdiyya", "al-Midyah", "M??d??a" ]
      }
    , { name = "Mostaganem"
      , code = "27"
      , unofficialNames = [ "Mestghanem", "Mustaghanam", "Mustaghanim", "Musta????nam", "Mostaganem" ]
      }
    , { name = "Msila"
      , code = "28"
      , unofficialNames = [ "M??Sila", "Msila" ]
      }
    , { name = "Mascara"
      , code = "29"
      , unofficialNames = [ "Mouaskar", "Mascara" ]
      }
    , { name = "Ouargla"
      , code = "30"
      , unofficialNames = [ "Wargla", "Ouargla" ]
      }
    , { name = "Oran"
      , code = "31"
      , unofficialNames = [ "Ouahran", "Oran" ]
      }
    , { name = "El Bayadh"
      , code = "32"
      , unofficialNames = [ "El Bayadh" ]
      }
    , { name = "Illizi"
      , code = "33"
      , unofficialNames = [ "Illizi" ]
      }
    , { name = "Bordj Bou Arr??ridj"
      , code = "34"
      , unofficialNames = [ "Bordj Bou Arreridj" ]
      }
    , { name = "Boumerd??s"
      , code = "35"
      , unofficialNames = [ "Boumerd??s" ]
      }
    , { name = "El Tarf"
      , code = "36"
      , unofficialNames = [ "El Taref", "at-Tarf", "El Tarf" ]
      }
    , { name = "Tindouf"
      , code = "37"
      , unofficialNames = [ "Tindouf" ]
      }
    , { name = "Tissemsilt"
      , code = "38"
      , unofficialNames = [ "Tissemselt", "Tissemsilt" ]
      }
    , { name = "El Oued"
      , code = "39"
      , unofficialNames = [ "El Ou??di", "El Wad", "El Oued" ]
      }
    , { name = "Khenchela"
      , code = "40"
      , unofficialNames = [ "Khenchla", "Khenchela" ]
      }
    , { name = "Souk Ahras"
      , code = "41"
      , unofficialNames = [ "Souq Ahras", "Souk Ahras" ]
      }
    , { name = "Tipaza"
      , code = "42"
      , unofficialNames = [ "Tipaza" ]
      }
    , { name = "Mila"
      , code = "43"
      , unofficialNames = [ "Mila" ]
      }
    , { name = "A??n Defla"
      , code = "44"
      , unofficialNames = [ "A??n Eddefla", "A??n Defla" ]
      }
    , { name = "Naama"
      , code = "45"
      , unofficialNames = [ "Naama" ]
      }
    , { name = "A??n T??mouchent"
      , code = "46"
      , unofficialNames = [ "A??n Temouchent" ]
      }
    , { name = "Gharda??a"
      , code = "47"
      , unofficialNames = [ "Gharda??a" ]
      }
    , { name = "Relizane"
      , code = "48"
      , unofficialNames = [ "Ghilizane", "Ighil Izane", "R??lizane", "Relizane" ]
      }
    ]


{-| -}
countryECSubdivisions : List Subdivision
countryECSubdivisions =
    [ { name = "Azuay"
      , code = "A"
      , unofficialNames = [ "Azuay" ]
      }
    , { name = "Bol??var"
      , code = "B"
      , unofficialNames = [ "Bol??var" ]
      }
    , { name = "Carchi"
      , code = "C"
      , unofficialNames = [ "Carchi" ]
      }
    , { name = "Orellana"
      , code = "D"
      , unofficialNames = [ "Orellana" ]
      }
    , { name = "Esmeraldas"
      , code = "E"
      , unofficialNames = [ "Esmeraldas" ]
      }
    , { name = "Ca??ar"
      , code = "F"
      , unofficialNames = [ "Ca??ar" ]
      }
    , { name = "Guayas"
      , code = "G"
      , unofficialNames = [ "Guayas" ]
      }
    , { name = "Chimborazo"
      , code = "H"
      , unofficialNames = [ "Chimborazo" ]
      }
    , { name = "Imbabura"
      , code = "I"
      , unofficialNames = [ "Imbabura" ]
      }
    , { name = "Loja"
      , code = "L"
      , unofficialNames = [ "Loja" ]
      }
    , { name = "Manab??"
      , code = "M"
      , unofficialNames = [ "Manab??" ]
      }
    , { name = "Napo"
      , code = "N"
      , unofficialNames = [ "Napo" ]
      }
    , { name = "El Oro"
      , code = "O"
      , unofficialNames = [ "El Oro" ]
      }
    , { name = "Pichincha"
      , code = "P"
      , unofficialNames = [ "Pichincha" ]
      }
    , { name = "Los R??os"
      , code = "R"
      , unofficialNames = [ "Los R??os" ]
      }
    , { name = "Morona-Santiago"
      , code = "S"
      , unofficialNames = [ "Morona-Santiago" ]
      }
    , { name = "Tungurahua"
      , code = "T"
      , unofficialNames = [ "Tungurahua" ]
      }
    , { name = "Sucumb??os"
      , code = "U"
      , unofficialNames = [ "Sucumb??os" ]
      }
    , { name = "Gal??pagos"
      , code = "W"
      , unofficialNames = [ "Gal??pagos" ]
      }
    , { name = "Cotopaxi"
      , code = "X"
      , unofficialNames = [ "Cotopaxi" ]
      }
    , { name = "Pastaza"
      , code = "Y"
      , unofficialNames = [ "Pastaza" ]
      }
    , { name = "Zamora-Chinchipe"
      , code = "Z"
      , unofficialNames = [ "Zamora-Chinchipe" ]
      }
    , { name = "Santo Domingo de los Tsachilas"
      , code = "SD"
      , unofficialNames = [ "Santo Domingo de los Tsachilas" ]
      }
    , { name = "Santa Elena"
      , code = "SE"
      , unofficialNames = [ "Santa Elena" ]
      }
    ]


{-| -}
countryEESubdivisions : List Subdivision
countryEESubdivisions =
    [ { name = "Harjumaa"
      , code = "37"
      , unofficialNames = [ "Harjumaa" ]
      }
    , { name = "Hiiumaa"
      , code = "39"
      , unofficialNames = [ "Dagden", "Dag??" ]
      }
    , { name = "Ida-Virumaa"
      , code = "44"
      , unofficialNames = [ "Ida-Virumaa" ]
      }
    , { name = "J??gevamaa"
      , code = "49"
      , unofficialNames = [ "Jogevamaa" ]
      }
    , { name = "J??rvamaa"
      , code = "51"
      , unofficialNames = [ "J??rvamaa" ]
      }
    , { name = "L????nemaa"
      , code = "57"
      , unofficialNames = [ "L????nemaa" ]
      }
    , { name = "L????ne-Virumaa"
      , code = "59"
      , unofficialNames = [ "L????ne-Virumaa" ]
      }
    , { name = "P??lvamaa"
      , code = "65"
      , unofficialNames = [ "Polvamaa" ]
      }
    , { name = "P??rnumaa"
      , code = "67"
      , unofficialNames = [ "P??rnumaa" ]
      }
    , { name = "Raplamaa"
      , code = "70"
      , unofficialNames = [ "Raplamaa" ]
      }
    , { name = "Saaremaa"
      , code = "74"
      , unofficialNames = [ "Saare", "??sel" ]
      }
    , { name = "Tartumaa"
      , code = "78"
      , unofficialNames = [ "Tartumaa" ]
      }
    , { name = "Valgamaa"
      , code = "82"
      , unofficialNames = [ "Valgamaa" ]
      }
    , { name = "Viljandimaa"
      , code = "84"
      , unofficialNames = [ "Viljandimaa" ]
      }
    , { name = "V??rumaa"
      , code = "86"
      , unofficialNames = [ "Vorumaa" ]
      }
    ]


{-| -}
countryEGSubdivisions : List Subdivision
countryEGSubdivisions =
    [ { name = "Al Iskandariyah"
      , code = "ALX"
      , unofficialNames = [ "El Iskandariya", "al-Iskandariyah", "al-Iskandar??yah", "Alexandria", "Alexandrie", "Alexandria" ]
      }
    , { name = "Aswan"
      , code = "ASN"
      , unofficialNames = [ "Asw??n", "Assuan", "Assouan" ]
      }
    , { name = "Asyut"
      , code = "AST"
      , unofficialNames = [ "Asiut", "Assy??t", "Siut", "Asy????", "Assiut", "Assiout" ]
      }
    , { name = "Al Bahr al Ahmar"
      , code = "BA"
      , unofficialNames = [ "El Bahr el Ahmar" ]
      }
    , { name = "Al Buhayrah"
      , code = "BH"
      , unofficialNames = [ "El Buhayra", "al-Buh??ayrah" ]
      }
    , { name = "Bani Suwayf"
      , code = "BNS"
      , unofficialNames = [ "Bani Suwayf", "Ban?? Suwayf" ]
      }
    , { name = "Al Qahirah"
      , code = "C"
      , unofficialNames = [ "El Qahira", "Le Caire-sur-Mer", "al-Q??hirah", "Kairo", "Caire", "Cairo" ]
      }
    , { name = "Ad Daqahliyah"
      , code = "DK"
      , unofficialNames = [ "Dakahlia", "El Daqahliya", "ad-Daqahliyah" ]
      }
    , { name = "Dumyat"
      , code = "DT"
      , unofficialNames = [ "Damiat", "Dumyat", "Dumy????", "Damiette" ]
      }
    , { name = "Al Fayyum"
      , code = "FYM"
      , unofficialNames = [ "El Faiy??m", "al-Fayyum", "al-Fayy??m" ]
      }
    , { name = "Al Gharbiyah"
      , code = "GH"
      , unofficialNames = [ "El Gharbiya", "Gharbiya", "al-Garbiyah", "al-??arb??yah" ]
      }
    , { name = "Al Jizah"
      , code = "GZ"
      , unofficialNames = [ "El Giza", "Gise", "Giza", "Gizah", "Jiza", "Jizah", "al-J??zah", "Giseh", "G??za" ]
      }
    , { name = "Al Ism??`??l??yah"
      , code = "IS"
      , unofficialNames = [ "El Ismailia", "Isma??iliya", "al-Ismailiyah", "al-Ism????l??yah" ]
      }
    , { name = "Janub Sina'"
      , code = "JS"
      , unofficialNames = [ "Sina al-Jan??b??yah", "Sinai al-Janubiyah", "South Sinai" ]
      }
    , { name = "Al Qalyubiyah"
      , code = "KB"
      , unofficialNames = [ "El Qalubiya", "al-Qalyubiyah" ]
      }
    , { name = "Kafr ash Shaykh"
      , code = "KFS"
      , unofficialNames = [ "Kafr-ash-Shaykh", "Kafr-a??-??ayh??" ]
      }
    , { name = "Qina"
      , code = "KN"
      , unofficialNames = [ "Qina", "Qin??" ]
      }
    , { name = "al-Uqsur"
      , code = "LX"
      , unofficialNames = [ "al-Uqsur", "al-Uq??ur", "Luxor", "Louxor" ]
      }
    , { name = "Al Minya"
      , code = "MN"
      , unofficialNames = [ "El Minya", "Minia", "al-Minya", "al-Miny??" ]
      }
    , { name = "Al Minufiyah"
      , code = "MNF"
      , unofficialNames = [ "El Minufiya", "Menufiya", "al-Minufiyah", "al-Min??f??yah" ]
      }
    , { name = "Matr??h"
      , code = "MT"
      , unofficialNames = [ "Matrah", "Matr??h" ]
      }
    , { name = "B??r Sa`??d"
      , code = "PTS"
      , unofficialNames = [ "Bur Said", "B??r Sa????d" ]
      }
    , { name = "Suhaj"
      , code = "SHG"
      , unofficialNames = [ "Sawhaj", "Suhag", "Suhaj", "S??haj", "Sawh??j" ]
      }
    , { name = "Ash Sharqiyah"
      , code = "SHR"
      , unofficialNames = [ "ash-Sharqiyah", "a??-??arq??yah" ]
      }
    , { name = "Shamal Sina'"
      , code = "SIN"
      , unofficialNames = [ "Shamal Sina", "Sina a??-??am??l??yah", "Sinai ash-Shamaliyah", "??am??l S??na" ]
      }
    , { name = "As Suways"
      , code = "SUZ"
      , unofficialNames = [ "El Suweiz", "as-Suways" ]
      }
    , { name = "Al Wadi al Jadid"
      , code = "WAD"
      , unofficialNames = [ "El Wadi el Jadid", "El Wadi el Jedid" ]
      }
    ]


{-| -}
countryEHSubdivisions : List Subdivision
countryEHSubdivisions =
    [ { name = "Boujdour"
      , code = "BOD"
      , unofficialNames = [ "Bojador", "Boujdour", "Bu Jaydur", "Bujdur", "Cabo Bojador" ]
      }
    , { name = "Es Semara"
      , code = "ESM"
      , unofficialNames = [ "Es-Smara", "Essemara", "Semara", "Smara", "as-Samarah", "as-Smara" ]
      }
    , { name = "Laayoune"
      , code = "LAA"
      , unofficialNames = [ "Aai??n", "Al Ay??n", "Al-Uyun", "Ay??n", "El Aai??n", "La Youne", "Laayoune", "La??youn", "L??ayoun", "al-Ayun" ]
      }
    , { name = "Oued el Dahab"
      , code = "OUD"
      , unofficialNames = [ "Oued edh Dheheb", "Wad adh-Dhahab" ]
      }
    ]


{-| -}
countryERSubdivisions : List Subdivision
countryERSubdivisions =
    [ { name = "Anseba"
      , code = "AN"
      , unofficialNames = [ "Anseba" ]
      }
    , { name = "Debubawi Keyih Bahri [Debub-Keih-Bahri]"
      , code = "DK"
      , unofficialNames = [ "Debubawi Keyih Bahri [Debub-Keih-Bahri]" ]
      }
    , { name = "Debub"
      , code = "DU"
      , unofficialNames = [ "Debub" ]
      }
    , { name = "Gash-Barka"
      , code = "GB"
      , unofficialNames = [ "Gash-Barka" ]
      }
    , { name = "Maakel [Maekel]"
      , code = "MA"
      , unofficialNames = [ "Maakel [Maekel]" ]
      }
    , { name = "Semenawi Keyih Bahri [Semien-Keih-Bahri]"
      , code = "SK"
      , unofficialNames = [ "Semenawi Keyih Bahri [Semien-Keih-Bahri]" ]
      }
    ]


{-| -}
countryESSubdivisions : List Subdivision
countryESSubdivisions =
    [ { name = "Alicante/Alacant"
      , code = "A"
      , unofficialNames = [ "Alicante/Alacant", "Alacant/Alicante", "Alicante", "Alacant" ]
      }
    , { name = "Albacete"
      , code = "AB"
      , unofficialNames = [ "Albacete" ]
      }
    , { name = "Almer??a"
      , code = "AL"
      , unofficialNames = [ "Almer??a" ]
      }
    , { name = "??vila"
      , code = "AV"
      , unofficialNames = [ "??vila" ]
      }
    , { name = "Barcelona"
      , code = "B"
      , unofficialNames = [ "Barcelona", "Barna" ]
      }
    , { name = "Badajoz"
      , code = "BA"
      , unofficialNames = [ "Badajoz" ]
      }
    , { name = "Bizkaia"
      , code = "BI"
      , unofficialNames = [ "Bizkaia", "Vizcaya" ]
      }
    , { name = "Burgos"
      , code = "BU"
      , unofficialNames = [ "Burgos" ]
      }
    , { name = "Coru??a, A"
      , code = "C"
      , unofficialNames = [ "Coru??a, A", "A Coru??a", "Corunna", "La Coru??a", "Coru??a" ]
      }
    , { name = "C??diz"
      , code = "CA"
      , unofficialNames = [ "C??diz" ]
      }
    , { name = "C??ceres"
      , code = "CC"
      , unofficialNames = [ "C??ceres" ]
      }
    , { name = "Ceuta"
      , code = "CE"
      , unofficialNames = [ "Ceuta", "Sebta" ]
      }
    , { name = "C??rdoba"
      , code = "CO"
      , unofficialNames = [ "C??rdoba" ]
      }
    , { name = "Ciudad Real"
      , code = "CR"
      , unofficialNames = [ "Ciudad Real" ]
      }
    , { name = "Castell??n/Castell??"
      , code = "CS"
      , unofficialNames = [ "Castell??n/Castell??", "Castell??/Castell??n", "Castell??n", "Castell??" ]
      }
    , { name = "Cuenca"
      , code = "CU"
      , unofficialNames = [ "Cuenca" ]
      }
    , { name = "Palmas, Las"
      , code = "GC"
      , unofficialNames = [ "Palmas, Las", "Las Palmas", "Las Palmas de Gran Canaria" ]
      }
    , { name = "Girona"
      , code = "GI"
      , unofficialNames = [ "Girona", "Gerona" ]
      }
    , { name = "Granada"
      , code = "GR"
      , unofficialNames = [ "Granada" ]
      }
    , { name = "Guadalajara"
      , code = "GU"
      , unofficialNames = [ "Guadalajara" ]
      }
    , { name = "Huelva"
      , code = "H"
      , unofficialNames = [ "Huelva" ]
      }
    , { name = "Huesca"
      , code = "HU"
      , unofficialNames = [ "Huesca" ]
      }
    , { name = "Ja??n"
      , code = "J"
      , unofficialNames = [ "Ja??n" ]
      }
    , { name = "Lleida"
      , code = "L"
      , unofficialNames = [ "Lleida", "L??rida" ]
      }
    , { name = "Le??n"
      , code = "LE"
      , unofficialNames = [ "Le??n" ]
      }
    , { name = "Rioja, La"
      , code = "LO"
      , unofficialNames = [ "Rioja, La", "La Rioja", "Rioja", "Logro??o" ]
      }
    , { name = "Lugo"
      , code = "LU"
      , unofficialNames = [ "Lugo" ]
      }
    , { name = "Madrid"
      , code = "M"
      , unofficialNames = [ "Madrid" ]
      }
    , { name = "M??laga"
      , code = "MA"
      , unofficialNames = [ "M??laga" ]
      }
    , { name = "Melilla"
      , code = "ML"
      , unofficialNames = [ "Melilla" ]
      }
    , { name = "Murcia"
      , code = "MU"
      , unofficialNames = [ "Murcia" ]
      }
    , { name = "Navarra"
      , code = "NA"
      , unofficialNames = [ "Navarra", "Navarre", "Nafarroa" ]
      }
    , { name = "Asturias"
      , code = "O"
      , unofficialNames = [ "Asturias", "Oviedo" ]
      }
    , { name = "Ourense"
      , code = "OR"
      , unofficialNames = [ "Ourense", "Orense" ]
      }
    , { name = "Palencia"
      , code = "P"
      , unofficialNames = [ "Palencia" ]
      }
    , { name = "Balears, Illes"
      , code = "PM"
      , unofficialNames = [ "Balears, Illes", "Baleares", "Illes Balears", "Islas Baleares", "Balearic Islands" ]
      }
    , { name = "Pontevedra"
      , code = "PO"
      , unofficialNames = [ "Pontevedra" ]
      }
    , { name = "Cantabria"
      , code = "S"
      , unofficialNames = [ "Cantabria", "Santander" ]
      }
    , { name = "Salamanca"
      , code = "SA"
      , unofficialNames = [ "Salamanca" ]
      }
    , { name = "Sevilla"
      , code = "SE"
      , unofficialNames = [ "Sevilla" ]
      }
    , { name = "Segovia"
      , code = "SG"
      , unofficialNames = [ "Segovia" ]
      }
    , { name = "Soria"
      , code = "SO"
      , unofficialNames = [ "Soria" ]
      }
    , { name = "Gipuzkoa"
      , code = "SS"
      , unofficialNames = [ "Gipuzkoa", "Guip??zcoa" ]
      }
    , { name = "Tarragona"
      , code = "T"
      , unofficialNames = [ "Tarragona" ]
      }
    , { name = "Teruel"
      , code = "TE"
      , unofficialNames = [ "Teruel" ]
      }
    , { name = "Santa Cruz de Tenerife"
      , code = "TF"
      , unofficialNames = [ "Santa Cruz de Tenerife", "Tenerife" ]
      }
    , { name = "Toledo"
      , code = "TO"
      , unofficialNames = [ "Toledo" ]
      }
    , { name = "Valencia/Val??ncia"
      , code = "V"
      , unofficialNames = [ "Valencia/Val??ncia", "Val??ncia/Valencia", "Valencia", "Val??ncia" ]
      }
    , { name = "Valladolid"
      , code = "VA"
      , unofficialNames = [ "Valladolid" ]
      }
    , { name = "Araba/??lava"
      , code = "VI"
      , unofficialNames = [ "Araba/??lava", "Araba", "??lava" ]
      }
    , { name = "Zaragoza"
      , code = "Z"
      , unofficialNames = [ "Zaragoza" ]
      }
    , { name = "Zamora"
      , code = "ZA"
      , unofficialNames = [ "Zamora" ]
      }
    ]


{-| -}
countryETSubdivisions : List Subdivision
countryETSubdivisions =
    [ { name = "Adis Abeba"
      , code = "AA"
      , unofficialNames = [ "Adis Abeba" ]
      }
    , { name = "Afar"
      , code = "AF"
      , unofficialNames = [ "Affar" ]
      }
    , { name = "Amara"
      , code = "AM"
      , unofficialNames = [ "Amara" ]
      }
    , { name = "Binshangul Gumuz"
      , code = "BE"
      , unofficialNames = [ "Binshangul Gumuz" ]
      }
    , { name = "Dire Dawa"
      , code = "DD"
      , unofficialNames = [ "Dire Dawa" ]
      }
    , { name = "Gambela Hizboch"
      , code = "GA"
      , unofficialNames = [ "Gambela" ]
      }
    , { name = "Hareri Hizb"
      , code = "HA"
      , unofficialNames = [ "Hareri Hizb" ]
      }
    , { name = "Oromiya"
      , code = "OR"
      , unofficialNames = [ "Oromiya" ]
      }
    , { name = "YeDebub Biheroch Bihereseboch na Hizboch"
      , code = "SN"
      , unofficialNames = [ "YeDebub Biheroch Bihereseboch na Hizboch" ]
      }
    , { name = "Sumale"
      , code = "SO"
      , unofficialNames = [ "Sumale" ]
      }
    , { name = "Tigray"
      , code = "TI"
      , unofficialNames = [ "Tigray" ]
      }
    ]


{-| -}
countryFISubdivisions : List Subdivision
countryFISubdivisions =
    [ { name = "Ahvenanmaan l????ni"
      , code = "AL"
      , unofficialNames = [ "??land" ]
      }
    , { name = "Etel??-Suomen l????ni"
      , code = "ES"
      , unofficialNames = [ "Etel??-Suomen l????ni" ]
      }
    , { name = "It??-Suomen l????ni"
      , code = "IS"
      , unofficialNames = [ "??stra Nyland", "It??-Uusimaa", "Uusima de l??Est" ]
      }
    , { name = "Lapin l????ni"
      , code = "LL"
      , unofficialNames = [ "Lappland", "Lappi", "Lappland", "Laponie" ]
      }
    , { name = "L??nsi-Suomen l????ni"
      , code = "LS"
      , unofficialNames = [ "L??nsi-Suomen l????ni" ]
      }
    , { name = "Oulun l????ni"
      , code = "OL"
      , unofficialNames = [ "Oulun l????ni" ]
      }
    ]


{-| -}
countryFJSubdivisions : List Subdivision
countryFJSubdivisions =
    [ { name = "Central"
      , code = "C"
      , unofficialNames = [ "Central" ]
      }
    , { name = "Eastern"
      , code = "E"
      , unofficialNames = [ "Eastern" ]
      }
    , { name = "Northern"
      , code = "N"
      , unofficialNames = [ "Northern" ]
      }
    , { name = "Rotuma"
      , code = "R"
      , unofficialNames = [ "Rotuma" ]
      }
    , { name = "Western"
      , code = "W"
      , unofficialNames = [ "Western" ]
      }
    ]


{-| -}
countryFMSubdivisions : List Subdivision
countryFMSubdivisions =
    [ { name = "Kosrae"
      , code = "KSA"
      , unofficialNames = [ "Kosrae" ]
      }
    , { name = "Pohnpei"
      , code = "PNI"
      , unofficialNames = [ "Ascension", "Ponape" ]
      }
    , { name = "Chuuk"
      , code = "TRK"
      , unofficialNames = [ "Chuk", "Hogoley Islands", "Truk" ]
      }
    , { name = "Yap"
      , code = "YAP"
      , unofficialNames = [ "Yap" ]
      }
    ]


{-| -}
countryFOSubdivisions : List Subdivision
countryFOSubdivisions =
    [ { name = "Nordoyar"
      , code = "NO"
      , unofficialNames = [ "Nordoyar" ]
      }
    , { name = "Eysturoyar"
      , code = "OS"
      , unofficialNames = [ "Eysturoyar" ]
      }
    , { name = "Sandoyar"
      , code = "SA"
      , unofficialNames = [ "Sandoyar" ]
      }
    , { name = "Streymoyar"
      , code = "ST"
      , unofficialNames = [ "Streymoyar" ]
      }
    , { name = "Suduroyar"
      , code = "SU"
      , unofficialNames = [ "Suduroyar" ]
      }
    , { name = "Vaga"
      , code = "VG"
      , unofficialNames = [ "Vaga" ]
      }
    ]


{-| -}
countryFRSubdivisions : List Subdivision
countryFRSubdivisions =
    [ { name = "Ain"
      , code = "01"
      , unofficialNames = [ "Ain" ]
      }
    , { name = "Aisne"
      , code = "02"
      , unofficialNames = [ "Aisne" ]
      }
    , { name = "Allier"
      , code = "03"
      , unofficialNames = [ "Allier" ]
      }
    , { name = "Alpes-de-Haute-Provence"
      , code = "04"
      , unofficialNames = [ "Alpes-de-Haute-Provence" ]
      }
    , { name = "Hautes-Alpes"
      , code = "05"
      , unofficialNames = [ "Hautes-Alpes" ]
      }
    , { name = "Alpes-Maritimes"
      , code = "06"
      , unofficialNames = [ "Alpes-Maritimes" ]
      }
    , { name = "Ard??che"
      , code = "07"
      , unofficialNames = [ "Ard??che" ]
      }
    , { name = "Ardennes"
      , code = "08"
      , unofficialNames = [ "Ardennes" ]
      }
    , { name = "Ari??ge"
      , code = "09"
      , unofficialNames = [ "Ari??ge" ]
      }
    , { name = "Aube"
      , code = "10"
      , unofficialNames = [ "Aube" ]
      }
    , { name = "Aude"
      , code = "11"
      , unofficialNames = [ "Aude" ]
      }
    , { name = "Aveyron"
      , code = "12"
      , unofficialNames = [ "Aveyron" ]
      }
    , { name = "Bouches-du-Rh??ne"
      , code = "13"
      , unofficialNames = [ "Bouches-du-Rh??ne" ]
      }
    , { name = "Calvados"
      , code = "14"
      , unofficialNames = [ "Calvados" ]
      }
    , { name = "Cantal"
      , code = "15"
      , unofficialNames = [ "Cantal" ]
      }
    , { name = "Charente"
      , code = "16"
      , unofficialNames = [ "Charente" ]
      }
    , { name = "Charente-Maritime"
      , code = "17"
      , unofficialNames = [ "Charente-Maritime" ]
      }
    , { name = "Cher"
      , code = "18"
      , unofficialNames = [ "Cher" ]
      }
    , { name = "Corr??ze"
      , code = "19"
      , unofficialNames = [ "Corr??ze" ]
      }
    , { name = "C??te-d'Or"
      , code = "21"
      , unofficialNames = [ "C??te-d'Or" ]
      }
    , { name = "C??tes-d'Armor"
      , code = "22"
      , unofficialNames = [ "C??tes-du-Nord" ]
      }
    , { name = "Creuse"
      , code = "23"
      , unofficialNames = [ "Creuse" ]
      }
    , { name = "Dordogne"
      , code = "24"
      , unofficialNames = [ "Dordogne" ]
      }
    , { name = "Doubs"
      , code = "25"
      , unofficialNames = [ "Doubs" ]
      }
    , { name = "Dr??me"
      , code = "26"
      , unofficialNames = [ "Dr??me" ]
      }
    , { name = "Eure"
      , code = "27"
      , unofficialNames = [ "Eure" ]
      }
    , { name = "Eure-et-Loir"
      , code = "28"
      , unofficialNames = [ "Eure-et-Loir" ]
      }
    , { name = "Finist??re"
      , code = "29"
      , unofficialNames = [ "Finist??re" ]
      }
    , { name = "Corse-du-Sud"
      , code = "2A"
      , unofficialNames = [ "Corse-du-Sud" ]
      }
    , { name = "Haute-Corse"
      , code = "2B"
      , unofficialNames = [ "Haute-Corse" ]
      }
    , { name = "Gard"
      , code = "30"
      , unofficialNames = [ "Gard" ]
      }
    , { name = "Haute-Garonne"
      , code = "31"
      , unofficialNames = [ "Haute-Garonne" ]
      }
    , { name = "Gers"
      , code = "32"
      , unofficialNames = [ "Gers" ]
      }
    , { name = "Gironde"
      , code = "33"
      , unofficialNames = [ "Gironde" ]
      }
    , { name = "H??rault"
      , code = "34"
      , unofficialNames = [ "H??rault" ]
      }
    , { name = "Ille-et-Vilaine"
      , code = "35"
      , unofficialNames = [ "Ille-et-Vilaine" ]
      }
    , { name = "Indre"
      , code = "36"
      , unofficialNames = [ "Indre" ]
      }
    , { name = "Indre-et-Loire"
      , code = "37"
      , unofficialNames = [ "Indre-et-Loire" ]
      }
    , { name = "Is??re"
      , code = "38"
      , unofficialNames = [ "Is??re" ]
      }
    , { name = "Jura"
      , code = "39"
      , unofficialNames = [ "Jura" ]
      }
    , { name = "Landes"
      , code = "40"
      , unofficialNames = [ "Landes" ]
      }
    , { name = "Loir-et-Cher"
      , code = "41"
      , unofficialNames = [ "Loir-et-Cher" ]
      }
    , { name = "Loire"
      , code = "42"
      , unofficialNames = [ "Loire" ]
      }
    , { name = "Haute-Loire"
      , code = "43"
      , unofficialNames = [ "Haute-Loire" ]
      }
    , { name = "Loire-Atlantique"
      , code = "44"
      , unofficialNames = [ "Loire-Atlantique" ]
      }
    , { name = "Loiret"
      , code = "45"
      , unofficialNames = [ "Loiret" ]
      }
    , { name = "Lot"
      , code = "46"
      , unofficialNames = [ "Lot" ]
      }
    , { name = "Lot-et-Garonne"
      , code = "47"
      , unofficialNames = [ "Lot-et-Garonne" ]
      }
    , { name = "Loz??re"
      , code = "48"
      , unofficialNames = [ "Loz??re" ]
      }
    , { name = "Maine-et-Loire"
      , code = "49"
      , unofficialNames = [ "Maine-et-Loire" ]
      }
    , { name = "Manche"
      , code = "50"
      , unofficialNames = [ "Manche" ]
      }
    , { name = "Marne"
      , code = "51"
      , unofficialNames = [ "Marne" ]
      }
    , { name = "Haute-Marne"
      , code = "52"
      , unofficialNames = [ "Haute-Marne" ]
      }
    , { name = "Mayenne"
      , code = "53"
      , unofficialNames = [ "Mayenne" ]
      }
    , { name = "Meurthe-et-Moselle"
      , code = "54"
      , unofficialNames = [ "Meurthe-et-Moselle" ]
      }
    , { name = "Meuse"
      , code = "55"
      , unofficialNames = [ "Meuse" ]
      }
    , { name = "Morbihan"
      , code = "56"
      , unofficialNames = [ "Morbihan" ]
      }
    , { name = "Moselle"
      , code = "57"
      , unofficialNames = [ "Moselle" ]
      }
    , { name = "Ni??vre"
      , code = "58"
      , unofficialNames = [ "Ni??vre" ]
      }
    , { name = "Nord"
      , code = "59"
      , unofficialNames = [ "Nord" ]
      }
    , { name = "Oise"
      , code = "60"
      , unofficialNames = [ "Oise" ]
      }
    , { name = "Orne"
      , code = "61"
      , unofficialNames = [ "Orne" ]
      }
    , { name = "Pas-de-Calais"
      , code = "62"
      , unofficialNames = [ "Pas-de-Calais" ]
      }
    , { name = "Puy-de-D??me"
      , code = "63"
      , unofficialNames = [ "Puy-de-D??me" ]
      }
    , { name = "Pyr??n??es-Atlantiques"
      , code = "64"
      , unofficialNames = [ "Pyr??n??es-Atlantiques" ]
      }
    , { name = "Hautes-Pyr??n??es"
      , code = "65"
      , unofficialNames = [ "Hautes-Pyr??n??es" ]
      }
    , { name = "Pyr??n??es-Orientales"
      , code = "66"
      , unofficialNames = [ "Pyr??n??es-Orientales" ]
      }
    , { name = "Bas-Rhin"
      , code = "67"
      , unofficialNames = [ "Bas-Rhin" ]
      }
    , { name = "Haut-Rhin"
      , code = "68"
      , unofficialNames = [ "Haut-Rhin" ]
      }
    , { name = "Rh??ne"
      , code = "69"
      , unofficialNames = [ "Rh??ne" ]
      }
    , { name = "Haute-Sa??ne"
      , code = "70"
      , unofficialNames = [ "Haute-Sa??ne" ]
      }
    , { name = "Sa??ne-et-Loire"
      , code = "71"
      , unofficialNames = [ "Sa??ne-et-Loire" ]
      }
    , { name = "Sarthe"
      , code = "72"
      , unofficialNames = [ "Sarthe" ]
      }
    , { name = "Savoie"
      , code = "73"
      , unofficialNames = [ "Savoie" ]
      }
    , { name = "Haute-Savoie"
      , code = "74"
      , unofficialNames = [ "Haute-Savoie" ]
      }
    , { name = "Paris"
      , code = "75"
      , unofficialNames = [ "Paris" ]
      }
    , { name = "Seine-Maritime"
      , code = "76"
      , unofficialNames = [ "Seine-Maritime" ]
      }
    , { name = "Seine-et-Marne"
      , code = "77"
      , unofficialNames = [ "Seine-et-Marne" ]
      }
    , { name = "Yvelines"
      , code = "78"
      , unofficialNames = [ "Yvelines" ]
      }
    , { name = "Deux-S??vres"
      , code = "79"
      , unofficialNames = [ "Deux-S??vres" ]
      }
    , { name = "Somme"
      , code = "80"
      , unofficialNames = [ "Somme" ]
      }
    , { name = "Tarn"
      , code = "81"
      , unofficialNames = [ "Tarn" ]
      }
    , { name = "Tarn-et-Garonne"
      , code = "82"
      , unofficialNames = [ "Tarn-et-Garonne" ]
      }
    , { name = "Var"
      , code = "83"
      , unofficialNames = [ "Var" ]
      }
    , { name = "Vaucluse"
      , code = "84"
      , unofficialNames = [ "Vaucluse" ]
      }
    , { name = "Vend??e"
      , code = "85"
      , unofficialNames = [ "Vend??e" ]
      }
    , { name = "Vienne"
      , code = "86"
      , unofficialNames = [ "Vienne" ]
      }
    , { name = "Haute-Vienne"
      , code = "87"
      , unofficialNames = [ "Haute-Vienne" ]
      }
    , { name = "Vosges"
      , code = "88"
      , unofficialNames = [ "Vosges" ]
      }
    , { name = "Yonne"
      , code = "89"
      , unofficialNames = [ "Yonne" ]
      }
    , { name = "Territoire de Belfort"
      , code = "90"
      , unofficialNames = [ "Territoire de Belfort" ]
      }
    , { name = "Essonne"
      , code = "91"
      , unofficialNames = [ "Essonne" ]
      }
    , { name = "Hauts-de-Seine"
      , code = "92"
      , unofficialNames = [ "Hauts-de-Seine" ]
      }
    , { name = "Seine-Saint-Denis"
      , code = "93"
      , unofficialNames = [ "Seine-Saint-Denis" ]
      }
    , { name = "Val-de-Marne"
      , code = "94"
      , unofficialNames = [ "Val-de-Marne" ]
      }
    , { name = "Val-d'Oise"
      , code = "95"
      , unofficialNames = [ "Val-d'Oise" ]
      }
    , { name = "Nouvelle-Cal??donie"
      , code = "NC"
      , unofficialNames = [ "Nouvelle-Cal??donie" ]
      }
    , { name = "Polyn??sie fran??aise"
      , code = "PF"
      , unofficialNames = [ "Polyn??sie fran??aise" ]
      }
    , { name = "Saint-Pierre-et-Miquelon"
      , code = "PM"
      , unofficialNames = [ "Saint-Pierre-et-Miquelon" ]
      }
    , { name = "Terres Australes Fran??aises"
      , code = "TF"
      , unofficialNames = [ "Terres Australes Fran??aises" ]
      }
    , { name = "Wallis et Futuna"
      , code = "WF"
      , unofficialNames = [ "Wallis et Futuna" ]
      }
    , { name = "Mayotte"
      , code = "YT"
      , unofficialNames = [ "Mayotte" ]
      }
    , { name = "Auvergne-Rh??ne-Alpes"
      , code = "ARA"
      , unofficialNames = [ "Auvergne-Rh??ne-Alpes", "Auv??rnhe-R??se-Aups", "??v??rgne-R??no-Arpes" ]
      }
    , { name = "Bourgogne-Franche-Comt??"
      , code = "BFC"
      , unofficialNames = [ "Bourgogne-Franche-Comt??", "Borgogne-Franche-Comt??t" ]
      }
    , { name = "Bretagne"
      , code = "BRE"
      , unofficialNames = [ "Bretagne", "Breizh" ]
      }
    , { name = "Centre-Val de Loire"
      , code = "CVL"
      , unofficialNames = [ "Centre-Val de Loire" ]
      }
    , { name = "Corse"
      , code = "COR"
      , unofficialNames = [ "Corse", "Corsica" ]
      }
    , { name = "Grand Est"
      , code = "GES"
      , unofficialNames = [ "Grand Est" ]
      }
    , { name = "Hauts-de-France"
      , code = "HDF"
      , unofficialNames = [ "Hauts-de-France" ]
      }
    , { name = "??le-de-France"
      , code = "IDF"
      , unofficialNames = [ "??le-de-France", "R??gion Parisienne" ]
      }
    , { name = "Normandie"
      , code = "NOR"
      , unofficialNames = [ "Normandie", "Normaundie" ]
      }
    , { name = "Nouvelle-Aquitaine"
      , code = "NAQ"
      , unofficialNames = [ "Nouvelle-Aquitaine" ]
      }
    , { name = "Occitanie"
      , code = "OCC"
      , unofficialNames = [ "Occitanie", "Occit??nia" ]
      }
    , { name = "Pays de la Loire"
      , code = "PDL"
      , unofficialNames = [ "Pays de la Loire", "Broio?? al Liger" ]
      }
    , { name = "Provence-Alpes-C??te d'Azur"
      , code = "PAC"
      , unofficialNames = [ "Provence-Alpes-C??te d'Azur", "PACA" ]
      }
    ]


{-| -}
countryGASubdivisions : List Subdivision
countryGASubdivisions =
    [ { name = "Estuaire"
      , code = "1"
      , unofficialNames = [ "Estuaire" ]
      }
    , { name = "Haut-Ogoou??"
      , code = "2"
      , unofficialNames = [ "Haut-Ogoou??" ]
      }
    , { name = "Moyen-Ogoou??"
      , code = "3"
      , unofficialNames = [ "Moyen-Ogoou??" ]
      }
    , { name = "Ngouni??"
      , code = "4"
      , unofficialNames = [ "N??gouni??" ]
      }
    , { name = "Nyanga"
      , code = "5"
      , unofficialNames = [ "Nyanga" ]
      }
    , { name = "Ogoou??-Ivindo"
      , code = "6"
      , unofficialNames = [ "Ogoou??-Ivindo" ]
      }
    , { name = "Ogoou??-Lolo"
      , code = "7"
      , unofficialNames = [ "Ogoou??-Lolo" ]
      }
    , { name = "Ogoou??-Maritime"
      , code = "8"
      , unofficialNames = [ "Ogoou??-Maritime" ]
      }
    , { name = "Woleu-Ntem"
      , code = "9"
      , unofficialNames = [ "Woleu-N??tem" ]
      }
    ]


{-| -}
countryGBSubdivisions : List Subdivision
countryGBSubdivisions =
    [ { name = "Aberdeenshire"
      , code = "ABD"
      , unofficialNames = [ "Siorrachd Obar Dheathain" ]
      }
    , { name = "Aberdeen City"
      , code = "ABE"
      , unofficialNames = [ "Aberdeen City" ]
      }
    , { name = "Argyll and Bute"
      , code = "AGB"
      , unofficialNames = [ "Argyll and Bute" ]
      }
    , { name = "Isle of Anglesey [Sir Ynys M??n GB-YNM]"
      , code = "AGY"
      , unofficialNames = [ "Ynys M????n" ]
      }
    , { name = "Angus"
      , code = "ANS"
      , unofficialNames = [ "Angus" ]
      }
    , { name = "Antrim"
      , code = "ANT"
      , unofficialNames = [ "Antrim" ]
      }
    , { name = "Ards"
      , code = "ARD"
      , unofficialNames = [ "Ards" ]
      }
    , { name = "Armagh"
      , code = "ARM"
      , unofficialNames = [ "Armagh" ]
      }
    , { name = "Bath and North East Somerset"
      , code = "BAS"
      , unofficialNames = [ "Bath and North East Somerset" ]
      }
    , { name = "Blackburn with Darwen"
      , code = "BBD"
      , unofficialNames = [ "Blackburn with Darwen" ]
      }
    , { name = "Bedfordshire"
      , code = "BDF"
      , unofficialNames = [ "Bedfordshire" ]
      }
    , { name = "Barking and Dagenham"
      , code = "BDG"
      , unofficialNames = [ "Barking and Dagenham" ]
      }
    , { name = "Brent"
      , code = "BEN"
      , unofficialNames = [ "Brent" ]
      }
    , { name = "Bexley"
      , code = "BEX"
      , unofficialNames = [ "Bexley" ]
      }
    , { name = "Belfast"
      , code = "BFS"
      , unofficialNames = [ "Belfast" ]
      }
    , { name = "Bridgend [Pen-y-bont ar Ogwr GB-POG]"
      , code = "BGE"
      , unofficialNames = [ "Pen-y-bont ar Ogwr" ]
      }
    , { name = "Blaenau Gwent"
      , code = "BGW"
      , unofficialNames = [ "Blaenau Gwent" ]
      }
    , { name = "Birmingham"
      , code = "BIR"
      , unofficialNames = [ "Birmingham" ]
      }
    , { name = "Buckinghamshire"
      , code = "BKM"
      , unofficialNames = [ "Buckinghamshire" ]
      }
    , { name = "Ballymena"
      , code = "BLA"
      , unofficialNames = [ "Ballymena" ]
      }
    , { name = "Ballymoney"
      , code = "BLY"
      , unofficialNames = [ "Ballymoney" ]
      }
    , { name = "Bournemouth"
      , code = "BMH"
      , unofficialNames = [ "Bournemouth" ]
      }
    , { name = "Banbridge"
      , code = "BNB"
      , unofficialNames = [ "Banbridge" ]
      }
    , { name = "Barnet"
      , code = "BNE"
      , unofficialNames = [ "Barnet" ]
      }
    , { name = "Brighton and Hove"
      , code = "BNH"
      , unofficialNames = [ "Brighton and Hove" ]
      }
    , { name = "Barnsley"
      , code = "BNS"
      , unofficialNames = [ "Barnsley" ]
      }
    , { name = "Bolton"
      , code = "BOL"
      , unofficialNames = [ "Bolton" ]
      }
    , { name = "Blackpool"
      , code = "BPL"
      , unofficialNames = [ "Blackpool" ]
      }
    , { name = "Bracknell Forest"
      , code = "BRC"
      , unofficialNames = [ "Bracknell Forest" ]
      }
    , { name = "Bradford"
      , code = "BRD"
      , unofficialNames = [ "Bradford" ]
      }
    , { name = "Bromley"
      , code = "BRY"
      , unofficialNames = [ "Bromley" ]
      }
    , { name = "Bristol, City of"
      , code = "BST"
      , unofficialNames = [ "City of Bristol" ]
      }
    , { name = "Bury"
      , code = "BUR"
      , unofficialNames = [ "Bury" ]
      }
    , { name = "Cambridgeshire"
      , code = "CAM"
      , unofficialNames = [ "Cambridgeshire" ]
      }
    , { name = "Caerphilly [Caerffili GB-CAF]"
      , code = "CAY"
      , unofficialNames = [ "Caerffili" ]
      }
    , { name = "Ceredigion [Sir Ceredigion]"
      , code = "CGN"
      , unofficialNames = [ "Ceredigion [Sir Ceredigion]" ]
      }
    , { name = "Craigavon"
      , code = "CGV"
      , unofficialNames = [ "Craigavon" ]
      }
    , { name = "Cheshire"
      , code = "CHS"
      , unofficialNames = [ "Cheshire" ]
      }
    , { name = "Carrickfergus"
      , code = "CKF"
      , unofficialNames = [ "Carrickfergus" ]
      }
    , { name = "Cookstown"
      , code = "CKT"
      , unofficialNames = [ "Cookstown" ]
      }
    , { name = "Calderdale"
      , code = "CLD"
      , unofficialNames = [ "Calderdale" ]
      }
    , { name = "Clackmannanshire"
      , code = "CLK"
      , unofficialNames = [ "Clackmannanshire" ]
      }
    , { name = "Coleraine"
      , code = "CLR"
      , unofficialNames = [ "Coleraine" ]
      }
    , { name = "Cumbria"
      , code = "CMA"
      , unofficialNames = [ "Cumbria" ]
      }
    , { name = "Camden"
      , code = "CMD"
      , unofficialNames = [ "Camden" ]
      }
    , { name = "Carmarthenshire [Sir Gaerfyrddin GB-GFY]"
      , code = "CMN"
      , unofficialNames = [ "Sir Gaerfyrddin" ]
      }
    , { name = "Cornwall"
      , code = "CON"
      , unofficialNames = [ "Cornwall and Isles of Scilly" ]
      }
    , { name = "Coventry"
      , code = "COV"
      , unofficialNames = [ "Coventry" ]
      }
    , { name = "Cardiff [Caerdydd GB-CRD]"
      , code = "CRF"
      , unofficialNames = [ "Caerdydd" ]
      }
    , { name = "Croydon"
      , code = "CRY"
      , unofficialNames = [ "Croydon" ]
      }
    , { name = "Castlereagh"
      , code = "CSR"
      , unofficialNames = [ "Castlereagh" ]
      }
    , { name = "Conwy"
      , code = "CWY"
      , unofficialNames = [ "Aberconwy and Colwyn" ]
      }
    , { name = "Darlington"
      , code = "DAL"
      , unofficialNames = [ "Darlington" ]
      }
    , { name = "Derbyshire"
      , code = "DBY"
      , unofficialNames = [ "Derbyshire" ]
      }
    , { name = "Denbighshire [Sir Ddinbych GB-DDB]"
      , code = "DEN"
      , unofficialNames = [ "Sir Ddinbych" ]
      }
    , { name = "Derby"
      , code = "DER"
      , unofficialNames = [ "Derby" ]
      }
    , { name = "Devon"
      , code = "DEV"
      , unofficialNames = [ "Devon" ]
      }
    , { name = "Dungannon"
      , code = "DGN"
      , unofficialNames = [ "Dungannon" ]
      }
    , { name = "Dumfries and Galloway"
      , code = "DGY"
      , unofficialNames = [ "Dumfries and Galloway" ]
      }
    , { name = "Doncaster"
      , code = "DNC"
      , unofficialNames = [ "Doncaster" ]
      }
    , { name = "Dundee City"
      , code = "DND"
      , unofficialNames = [ "Dundee City" ]
      }
    , { name = "Dorset"
      , code = "DOR"
      , unofficialNames = [ "Dorset" ]
      }
    , { name = "Down"
      , code = "DOW"
      , unofficialNames = [ "Down" ]
      }
    , { name = "Derry"
      , code = "DRY"
      , unofficialNames = [ "Derry" ]
      }
    , { name = "Dudley"
      , code = "DUD"
      , unofficialNames = [ "Dudley" ]
      }
    , { name = "Durham"
      , code = "DUR"
      , unofficialNames = [ "Durham" ]
      }
    , { name = "Ealing"
      , code = "EAL"
      , unofficialNames = [ "Ealing" ]
      }
    , { name = "East Ayrshire"
      , code = "EAY"
      , unofficialNames = [ "East Ayrshire" ]
      }
    , { name = "Edinburgh, City of"
      , code = "EDH"
      , unofficialNames = [ "City of Edinburgh" ]
      }
    , { name = "East Dunbartonshire"
      , code = "EDU"
      , unofficialNames = [ "East Dunbartonshire" ]
      }
    , { name = "East Lothian"
      , code = "ELN"
      , unofficialNames = [ "East Lothian" ]
      }
    , { name = "Eilean Siar"
      , code = "ELS"
      , unofficialNames = [ "Western Isles" ]
      }
    , { name = "Enfield"
      , code = "ENF"
      , unofficialNames = [ "Enfield" ]
      }
    , { name = "East Renfrewshire"
      , code = "ERW"
      , unofficialNames = [ "East Renfrewshire" ]
      }
    , { name = "East Riding of Yorkshire"
      , code = "ERY"
      , unofficialNames = [ "East Riding of Yorkshire", "East Yorkshire", "East Riding" ]
      }
    , { name = "Essex"
      , code = "ESS"
      , unofficialNames = [ "Essex" ]
      }
    , { name = "East Sussex"
      , code = "ESX"
      , unofficialNames = [ "East Sussex" ]
      }
    , { name = "Falkirk"
      , code = "FAL"
      , unofficialNames = [ "Falkirk" ]
      }
    , { name = "Fermanagh"
      , code = "FER"
      , unofficialNames = [ "Fermanagh" ]
      }
    , { name = "Fife"
      , code = "FIF"
      , unofficialNames = [ "Fife" ]
      }
    , { name = "Flintshire [Sir y Fflint GB-FFL]"
      , code = "FLN"
      , unofficialNames = [ "Sir y Fflint" ]
      }
    , { name = "Gateshead"
      , code = "GAT"
      , unofficialNames = [ "Gateshead" ]
      }
    , { name = "Glasgow City"
      , code = "GLG"
      , unofficialNames = [ "Glasgow City" ]
      }
    , { name = "Gloucestershire"
      , code = "GLS"
      , unofficialNames = [ "Gloucestershire" ]
      }
    , { name = "Greenwich"
      , code = "GRE"
      , unofficialNames = [ "Greenwich" ]
      }
    , { name = "Gwynedd"
      , code = "GWN"
      , unofficialNames = [ "Gwynedd" ]
      }
    , { name = "Halton"
      , code = "HAL"
      , unofficialNames = [ "Halton" ]
      }
    , { name = "Hampshire"
      , code = "HAM"
      , unofficialNames = [ "Hampshire" ]
      }
    , { name = "Havering"
      , code = "HAV"
      , unofficialNames = [ "Havering" ]
      }
    , { name = "Hackney"
      , code = "HCK"
      , unofficialNames = [ "Hackney" ]
      }
    , { name = "Herefordshire, County of"
      , code = "HEF"
      , unofficialNames = [ "County of Herefordshire" ]
      }
    , { name = "Hillingdon"
      , code = "HIL"
      , unofficialNames = [ "Hillingdon" ]
      }
    , { name = "Highland"
      , code = "HLD"
      , unofficialNames = [ "Highland" ]
      }
    , { name = "Hammersmith and Fulham"
      , code = "HMF"
      , unofficialNames = [ "Hammersmith and Fulham" ]
      }
    , { name = "Hounslow"
      , code = "HNS"
      , unofficialNames = [ "Hounslow" ]
      }
    , { name = "Hartlepool"
      , code = "HPL"
      , unofficialNames = [ "Hartlepool" ]
      }
    , { name = "Hertfordshire"
      , code = "HRT"
      , unofficialNames = [ "Hertfordshire" ]
      }
    , { name = "Harrow"
      , code = "HRW"
      , unofficialNames = [ "Harrow" ]
      }
    , { name = "Haringey"
      , code = "HRY"
      , unofficialNames = [ "Haringey" ]
      }
    , { name = "Isles of Scilly"
      , code = "IOS"
      , unofficialNames = [ "Isles of Scilly" ]
      }
    , { name = "Isle of Wight"
      , code = "IOW"
      , unofficialNames = [ "Isle of Wight" ]
      }
    , { name = "Islington"
      , code = "ISL"
      , unofficialNames = [ "Islington" ]
      }
    , { name = "Inverclyde"
      , code = "IVC"
      , unofficialNames = [ "Inverclyde" ]
      }
    , { name = "Kensington and Chelsea"
      , code = "KEC"
      , unofficialNames = [ "Kensington and Chelsea" ]
      }
    , { name = "Kent"
      , code = "KEN"
      , unofficialNames = [ "Kent" ]
      }
    , { name = "Kingston upon Hull, City of"
      , code = "KHL"
      , unofficialNames = [ "City of Kingston upon Hull" ]
      }
    , { name = "Kirklees"
      , code = "KIR"
      , unofficialNames = [ "Kirklees" ]
      }
    , { name = "Kingston upon Thames"
      , code = "KTT"
      , unofficialNames = [ "Kingston upon Thames" ]
      }
    , { name = "Knowsley"
      , code = "KWL"
      , unofficialNames = [ "Knowsley" ]
      }
    , { name = "Lancashire"
      , code = "LAN"
      , unofficialNames = [ "Lancashire" ]
      }
    , { name = "Lambeth"
      , code = "LBH"
      , unofficialNames = [ "Lambeth" ]
      }
    , { name = "Leicester"
      , code = "LCE"
      , unofficialNames = [ "Leicester" ]
      }
    , { name = "Leeds"
      , code = "LDS"
      , unofficialNames = [ "Leeds" ]
      }
    , { name = "Leicestershire"
      , code = "LEC"
      , unofficialNames = [ "Leicestershire" ]
      }
    , { name = "Lewisham"
      , code = "LEW"
      , unofficialNames = [ "Lewisham" ]
      }
    , { name = "Lincolnshire"
      , code = "LIN"
      , unofficialNames = [ "Lincolnshire" ]
      }
    , { name = "Liverpool"
      , code = "LIV"
      , unofficialNames = [ "Liverpool" ]
      }
    , { name = "Limavady"
      , code = "LMV"
      , unofficialNames = [ "Limavady" ]
      }
    , { name = "London, City of"
      , code = "LND"
      , unofficialNames = [ "London, City of" ]
      }
    , { name = "Larne"
      , code = "LRN"
      , unofficialNames = [ "Larne" ]
      }
    , { name = "Lisburn"
      , code = "LSB"
      , unofficialNames = [ "Lisburn" ]
      }
    , { name = "Luton"
      , code = "LUT"
      , unofficialNames = [ "Luton" ]
      }
    , { name = "Manchester"
      , code = "MAN"
      , unofficialNames = [ "Manchester" ]
      }
    , { name = "Middlesbrough"
      , code = "MDB"
      , unofficialNames = [ "Middlesbrough" ]
      }
    , { name = "Medway"
      , code = "MDW"
      , unofficialNames = [ "Medway" ]
      }
    , { name = "Magherafelt"
      , code = "MFT"
      , unofficialNames = [ "Magherafelt" ]
      }
    , { name = "Milton Keynes"
      , code = "MIK"
      , unofficialNames = [ "Milton Keynes" ]
      }
    , { name = "Midlothian"
      , code = "MLN"
      , unofficialNames = [ "Midlothian" ]
      }
    , { name = "Monmouthshire [Sir Fynwy GB-FYN]"
      , code = "MON"
      , unofficialNames = [ "Sir Fynwy" ]
      }
    , { name = "Merton"
      , code = "MRT"
      , unofficialNames = [ "Merton" ]
      }
    , { name = "Moray"
      , code = "MRY"
      , unofficialNames = [ "Moray" ]
      }
    , { name = "Merthyr Tydfil [Merthyr Tudful GB-MTU]"
      , code = "MTY"
      , unofficialNames = [ "Merthyr Tudful" ]
      }
    , { name = "Moyle"
      , code = "MYL"
      , unofficialNames = [ "Moyle" ]
      }
    , { name = "North Ayrshire"
      , code = "NAY"
      , unofficialNames = [ "North Ayrshire" ]
      }
    , { name = "Northumberland"
      , code = "NBL"
      , unofficialNames = [ "Northumberland" ]
      }
    , { name = "North Down"
      , code = "NDN"
      , unofficialNames = [ "North Down" ]
      }
    , { name = "North East Lincolnshire"
      , code = "NEL"
      , unofficialNames = [ "North East Lincolnshire" ]
      }
    , { name = "Newcastle upon Tyne"
      , code = "NET"
      , unofficialNames = [ "Newcastle upon Tyne" ]
      }
    , { name = "Norfolk"
      , code = "NFK"
      , unofficialNames = [ "Norfolk" ]
      }
    , { name = "Nottingham"
      , code = "NGM"
      , unofficialNames = [ "Nottingham" ]
      }
    , { name = "North Lanarkshire"
      , code = "NLK"
      , unofficialNames = [ "North Lanarkshire" ]
      }
    , { name = "North Lincolnshire"
      , code = "NLN"
      , unofficialNames = [ "North Lincolnshire" ]
      }
    , { name = "North Somerset"
      , code = "NSM"
      , unofficialNames = [ "North Somerset" ]
      }
    , { name = "Newtownabbey"
      , code = "NTA"
      , unofficialNames = [ "Newtownabbey" ]
      }
    , { name = "Northamptonshire"
      , code = "NTH"
      , unofficialNames = [ "Northamptonshire" ]
      }
    , { name = "Neath Port Talbot [Castell-nedd Port Talbot GB-CTL]"
      , code = "NTL"
      , unofficialNames = [ "Castell-nedd Porth Talbot" ]
      }
    , { name = "Nottinghamshire"
      , code = "NTT"
      , unofficialNames = [ "Nottinghamshire" ]
      }
    , { name = "North Tyneside"
      , code = "NTY"
      , unofficialNames = [ "North Tyneside" ]
      }
    , { name = "Newham"
      , code = "NWM"
      , unofficialNames = [ "Newham" ]
      }
    , { name = "Newport [Casnewydd GB-CNW]"
      , code = "NWP"
      , unofficialNames = [ "Casnewydd" ]
      }
    , { name = "North Yorkshire"
      , code = "NYK"
      , unofficialNames = [ "North Yorkshire" ]
      }
    , { name = "Newry and Mourne"
      , code = "NYM"
      , unofficialNames = [ "Newry and Mourne" ]
      }
    , { name = "Oldham"
      , code = "OLD"
      , unofficialNames = [ "Oldham" ]
      }
    , { name = "Omagh"
      , code = "OMH"
      , unofficialNames = [ "Omagh" ]
      }
    , { name = "Orkney Islands"
      , code = "ORK"
      , unofficialNames = [ "Orkney Islands" ]
      }
    , { name = "Oxfordshire"
      , code = "OXF"
      , unofficialNames = [ "Oxfordshire" ]
      }
    , { name = "Pembrokeshire [Sir Benfro GB-BNF]"
      , code = "PEM"
      , unofficialNames = [ "Sir Benfro" ]
      }
    , { name = "Perth and Kinross"
      , code = "PKN"
      , unofficialNames = [ "Perth and Kinross" ]
      }
    , { name = "Plymouth"
      , code = "PLY"
      , unofficialNames = [ "Plymouth" ]
      }
    , { name = "Poole"
      , code = "POL"
      , unofficialNames = [ "Poole" ]
      }
    , { name = "Portsmouth"
      , code = "POR"
      , unofficialNames = [ "Portsmouth" ]
      }
    , { name = "Powys"
      , code = "POW"
      , unofficialNames = [ "Powys" ]
      }
    , { name = "Peterborough"
      , code = "PTE"
      , unofficialNames = [ "Peterborough" ]
      }
    , { name = "Redcar and Cleveland"
      , code = "RCC"
      , unofficialNames = [ "Redcar and Cleveland" ]
      }
    , { name = "Rochdale"
      , code = "RCH"
      , unofficialNames = [ "Rochdale" ]
      }
    , { name = "Rhondda, Cynon, Taff [Rhondda, Cynon,Taf]"
      , code = "RCT"
      , unofficialNames = [ "Rhondda Cynon T????f" ]
      }
    , { name = "Redbridge"
      , code = "RDB"
      , unofficialNames = [ "Redbridge" ]
      }
    , { name = "Reading"
      , code = "RDG"
      , unofficialNames = [ "Reading" ]
      }
    , { name = "Renfrewshire"
      , code = "RFW"
      , unofficialNames = [ "Renfrewshire" ]
      }
    , { name = "Richmond upon Thames"
      , code = "RIC"
      , unofficialNames = [ "Richmond upon Thames" ]
      }
    , { name = "Rotherham"
      , code = "ROT"
      , unofficialNames = [ "Rotherham" ]
      }
    , { name = "Rutland"
      , code = "RUT"
      , unofficialNames = [ "Rutland" ]
      }
    , { name = "Sandwell"
      , code = "SAW"
      , unofficialNames = [ "Sandwell" ]
      }
    , { name = "South Ayrshire"
      , code = "SAY"
      , unofficialNames = [ "South Ayrshire" ]
      }
    , { name = "Scottish Borders, The"
      , code = "SCB"
      , unofficialNames = [ "The Scottish Border" ]
      }
    , { name = "Suffolk"
      , code = "SFK"
      , unofficialNames = [ "Suffolk" ]
      }
    , { name = "Sefton"
      , code = "SFT"
      , unofficialNames = [ "Sefton" ]
      }
    , { name = "South Gloucestershire"
      , code = "SGC"
      , unofficialNames = [ "South Gloucestershire" ]
      }
    , { name = "Sheffield"
      , code = "SHF"
      , unofficialNames = [ "Sheffield" ]
      }
    , { name = "St. Helens"
      , code = "SHN"
      , unofficialNames = [ "St. Helens" ]
      }
    , { name = "Shropshire"
      , code = "SHR"
      , unofficialNames = [ "Shropshire" ]
      }
    , { name = "Stockport"
      , code = "SKP"
      , unofficialNames = [ "Stockport" ]
      }
    , { name = "Salford"
      , code = "SLF"
      , unofficialNames = [ "Salford" ]
      }
    , { name = "Slough"
      , code = "SLG"
      , unofficialNames = [ "Slough" ]
      }
    , { name = "South Lanarkshire"
      , code = "SLK"
      , unofficialNames = [ "South Lanarkshire" ]
      }
    , { name = "Sunderland"
      , code = "SND"
      , unofficialNames = [ "Sunderland" ]
      }
    , { name = "Solihull"
      , code = "SOL"
      , unofficialNames = [ "Solihull" ]
      }
    , { name = "Somerset"
      , code = "SOM"
      , unofficialNames = [ "Somerset" ]
      }
    , { name = "Southend-on-Sea"
      , code = "SOS"
      , unofficialNames = [ "Southend-on-Sea" ]
      }
    , { name = "Surrey"
      , code = "SRY"
      , unofficialNames = [ "Surrey" ]
      }
    , { name = "Strabane"
      , code = "STB"
      , unofficialNames = [ "Strabane" ]
      }
    , { name = "Stoke-on-Trent"
      , code = "STE"
      , unofficialNames = [ "Stoke-on-Trent" ]
      }
    , { name = "Stirling"
      , code = "STG"
      , unofficialNames = [ "Stirling" ]
      }
    , { name = "Southampton"
      , code = "STH"
      , unofficialNames = [ "Southampton" ]
      }
    , { name = "Sutton"
      , code = "STN"
      , unofficialNames = [ "Sutton" ]
      }
    , { name = "Staffordshire"
      , code = "STS"
      , unofficialNames = [ "Staffordshire" ]
      }
    , { name = "Stockton-on-Tees"
      , code = "STT"
      , unofficialNames = [ "Stockton-on-Tees" ]
      }
    , { name = "South Tyneside"
      , code = "STY"
      , unofficialNames = [ "South Tyneside" ]
      }
    , { name = "Swansea [Abertawe GB-ATA]"
      , code = "SWA"
      , unofficialNames = [ "Abertawe" ]
      }
    , { name = "Swindon"
      , code = "SWD"
      , unofficialNames = [ "Swindon" ]
      }
    , { name = "Southwark"
      , code = "SWK"
      , unofficialNames = [ "Southwark" ]
      }
    , { name = "Tameside"
      , code = "TAM"
      , unofficialNames = [ "Tameside" ]
      }
    , { name = "Telford and Wrekin"
      , code = "TFW"
      , unofficialNames = [ "Telford and Wrekin" ]
      }
    , { name = "Thurrock"
      , code = "THR"
      , unofficialNames = [ "Thurrock" ]
      }
    , { name = "Torbay"
      , code = "TOB"
      , unofficialNames = [ "Torbay" ]
      }
    , { name = "Torfaen [Tor-faen]"
      , code = "TOF"
      , unofficialNames = [ "Tor-faen" ]
      }
    , { name = "Trafford"
      , code = "TRF"
      , unofficialNames = [ "Trafford" ]
      }
    , { name = "Tower Hamlets"
      , code = "TWH"
      , unofficialNames = [ "Tower Hamlets" ]
      }
    , { name = "Vale of Glamorgan, The [Bro Morgannwg GB-BMG]"
      , code = "VGL"
      , unofficialNames = [ "The Vale of Glamorgan" ]
      }
    , { name = "Warwickshire"
      , code = "WAR"
      , unofficialNames = [ "Warwickshire" ]
      }
    , { name = "West Berkshire"
      , code = "WBK"
      , unofficialNames = [ "West Berkshire" ]
      }
    , { name = "West Dunbartonshire"
      , code = "WDU"
      , unofficialNames = [ "West Dunbartonshire" ]
      }
    , { name = "Waltham Forest"
      , code = "WFT"
      , unofficialNames = [ "Waltham Forest" ]
      }
    , { name = "Wigan"
      , code = "WGN"
      , unofficialNames = [ "Wigan" ]
      }
    , { name = "Wiltshire"
      , code = "WIL"
      , unofficialNames = [ "Wiltshire" ]
      }
    , { name = "Wakefield"
      , code = "WKF"
      , unofficialNames = [ "Wakefield" ]
      }
    , { name = "Walsall"
      , code = "WLL"
      , unofficialNames = [ "Walsall" ]
      }
    , { name = "West Lothian"
      , code = "WLN"
      , unofficialNames = [ "West Lothian" ]
      }
    , { name = "Wolverhampton"
      , code = "WLV"
      , unofficialNames = [ "Wolverhampton" ]
      }
    , { name = "Wandsworth"
      , code = "WND"
      , unofficialNames = [ "Wandsworth" ]
      }
    , { name = "Windsor and Maidenhead"
      , code = "WNM"
      , unofficialNames = [ "Windsor and Maidenhead" ]
      }
    , { name = "Wokingham"
      , code = "WOK"
      , unofficialNames = [ "Wokingham" ]
      }
    , { name = "Worcestershire"
      , code = "WOR"
      , unofficialNames = [ "Worcestershire" ]
      }
    , { name = "Wirral"
      , code = "WRL"
      , unofficialNames = [ "Wirral" ]
      }
    , { name = "Warrington"
      , code = "WRT"
      , unofficialNames = [ "Warrington" ]
      }
    , { name = "Wrexham [Wrecsam GB-WRC]"
      , code = "WRX"
      , unofficialNames = [ "Wrecsam" ]
      }
    , { name = "Westminster"
      , code = "WSM"
      , unofficialNames = [ "Westminster" ]
      }
    , { name = "West Sussex"
      , code = "WSX"
      , unofficialNames = [ "West Sussex" ]
      }
    , { name = "York"
      , code = "YOR"
      , unofficialNames = [ "York" ]
      }
    , { name = "Shetland Islands"
      , code = "ZET"
      , unofficialNames = [ "Shetland Islands" ]
      }
    ]


{-| -}
countryGDSubdivisions : List Subdivision
countryGDSubdivisions =
    [ { name = "Saint Andrew"
      , code = "01"
      , unofficialNames = [ "Saint Andrew" ]
      }
    , { name = "Saint David"
      , code = "02"
      , unofficialNames = [ "Saint David" ]
      }
    , { name = "Saint George"
      , code = "03"
      , unofficialNames = [ "Saint George" ]
      }
    , { name = "Saint John"
      , code = "04"
      , unofficialNames = [ "Saint John" ]
      }
    , { name = "Saint Mark"
      , code = "05"
      , unofficialNames = [ "Saint Mark" ]
      }
    , { name = "Saint Patrick"
      , code = "06"
      , unofficialNames = [ "Saint Patrick" ]
      }
    , { name = "Southern Grenadine Islands"
      , code = "10"
      , unofficialNames = [ "Southern Grenadine Islands" ]
      }
    ]


{-| -}
countryGESubdivisions : List Subdivision
countryGESubdivisions =
    [ { name = "Abkhazia"
      , code = "AB"
      , unofficialNames = [ "Abhasia" ]
      }
    , { name = "Ajaria"
      , code = "AJ"
      , unofficialNames = [ "Achara", "Adzharia", "Ad??aria" ]
      }
    , { name = "Guria"
      , code = "GU"
      , unofficialNames = [ "Guria" ]
      }
    , { name = "Imereti"
      , code = "IM"
      , unofficialNames = [ "Imereti" ]
      }
    , { name = "Kakheti"
      , code = "KA"
      , unofficialNames = [ "Kaheti" ]
      }
    , { name = "Kvemo Kartli"
      , code = "KK"
      , unofficialNames = [ "Kvemo Kartli" ]
      }
    , { name = "Mtskheta-Mtianeti"
      , code = "MM"
      , unofficialNames = [ "Mcheta-Mtianeti" ]
      }
    , { name = "Racha-Lechkhumi [and] Kvemo Svaneti"
      , code = "RL"
      , unofficialNames = [ "Racha", "Racha-Lechkumi and Kverno Svaneti" ]
      }
    , { name = "Samtskhe-Javakheti"
      , code = "SJ"
      , unofficialNames = [ "Samche-??avaheti" ]
      }
    , { name = "Shida Kartli"
      , code = "SK"
      , unofficialNames = [ "??ida Kartli" ]
      }
    , { name = "Samegrelo-Zemo Svaneti"
      , code = "SZ"
      , unofficialNames = [ "Samegrelo-Zemo Svaneti" ]
      }
    , { name = "Tbilisi"
      , code = "TB"
      , unofficialNames = [ "Tiflis" ]
      }
    ]


{-| -}
countryGFSubdivisions : List Subdivision
countryGFSubdivisions =
    []


{-| -}
countryGGSubdivisions : List Subdivision
countryGGSubdivisions =
    [ { name = "Saint Pierre du Bois"
      , code = "1"
      , unofficialNames = [ "Saint Pierre du Bois" ]
      }
    , { name = "Torteval"
      , code = "2"
      , unofficialNames = [ "Torteval" ]
      }
    , { name = "Saint Saviour"
      , code = "3"
      , unofficialNames = [ "Saint Saviour" ]
      }
    , { name = "Forest"
      , code = "4"
      , unofficialNames = [ "Forest" ]
      }
    , { name = "Saint Martin"
      , code = "5"
      , unofficialNames = [ "Saint Martin" ]
      }
    , { name = "Saint Andrew"
      , code = "6"
      , unofficialNames = [ "Saint Andrew" ]
      }
    , { name = "Saint Peter Port"
      , code = "7"
      , unofficialNames = [ "Saint Peter Port" ]
      }
    , { name = "Castel"
      , code = "8"
      , unofficialNames = [ "Castel" ]
      }
    , { name = "Vale"
      , code = "9"
      , unofficialNames = [ "Vale" ]
      }
    , { name = "Saint Sampson"
      , code = "10"
      , unofficialNames = [ "Saint Sampson" ]
      }
    , { name = "Alderney"
      , code = "11"
      , unofficialNames = [ "Alderney" ]
      }
    ]


{-| -}
countryGHSubdivisions : List Subdivision
countryGHSubdivisions =
    [ { name = "Greater Accra"
      , code = "AA"
      , unofficialNames = [ "Greater Accra" ]
      }
    , { name = "Ashanti"
      , code = "AH"
      , unofficialNames = [ "Asante" ]
      }
    , { name = "Brong-Ahafo"
      , code = "BA"
      , unofficialNames = [ "Brong-Ahafo" ]
      }
    , { name = "Central"
      , code = "CP"
      , unofficialNames = [ "Central" ]
      }
    , { name = "Eastern"
      , code = "EP"
      , unofficialNames = [ "Eastern" ]
      }
    , { name = "Northern"
      , code = "NP"
      , unofficialNames = [ "Northern" ]
      }
    , { name = "Volta"
      , code = "TV"
      , unofficialNames = [ "Volta" ]
      }
    , { name = "Upper East"
      , code = "UE"
      , unofficialNames = [ "Upper East" ]
      }
    , { name = "Upper West"
      , code = "UW"
      , unofficialNames = [ "Upper West" ]
      }
    , { name = "Western"
      , code = "WP"
      , unofficialNames = [ "Western" ]
      }
    ]


{-| -}
countryGLSubdivisions : List Subdivision
countryGLSubdivisions =
    []


{-| -}
countryGMSubdivisions : List Subdivision
countryGMSubdivisions =
    [ { name = "Banjul"
      , code = "B"
      , unofficialNames = [ "Banjul" ]
      }
    , { name = "Lower River"
      , code = "L"
      , unofficialNames = [ "Lower River" ]
      }
    , { name = "MacCarthy Island"
      , code = "M"
      , unofficialNames = [ "MacCarthy Island" ]
      }
    , { name = "North Bank"
      , code = "N"
      , unofficialNames = [ "North Bank" ]
      }
    , { name = "Upper River"
      , code = "U"
      , unofficialNames = [ "Upper River" ]
      }
    , { name = "Western"
      , code = "W"
      , unofficialNames = [ "Western" ]
      }
    ]


{-| -}
countryGNSubdivisions : List Subdivision
countryGNSubdivisions =
    [ { name = "Beyla"
      , code = "BE"
      , unofficialNames = [ "Beyla" ]
      }
    , { name = "Boffa"
      , code = "BF"
      , unofficialNames = [ "Boffa" ]
      }
    , { name = "Bok??"
      , code = "BK"
      , unofficialNames = [ "Bok??" ]
      }
    , { name = "Conakry"
      , code = "C"
      , unofficialNames = [ "Conakry" ]
      }
    , { name = "Coyah"
      , code = "CO"
      , unofficialNames = [ "Coyah" ]
      }
    , { name = "Dabola"
      , code = "DB"
      , unofficialNames = [ "Dabola" ]
      }
    , { name = "Dinguiraye"
      , code = "DI"
      , unofficialNames = [ "Dinguiraye" ]
      }
    , { name = "Dalaba"
      , code = "DL"
      , unofficialNames = [ "Dalaba" ]
      }
    , { name = "Dubr??ka"
      , code = "DU"
      , unofficialNames = [ "Dubr??ka" ]
      }
    , { name = "Faranah"
      , code = "FA"
      , unofficialNames = [ "Faranah" ]
      }
    , { name = "For??cariah"
      , code = "FO"
      , unofficialNames = [ "For??caria" ]
      }
    , { name = "Fria"
      , code = "FR"
      , unofficialNames = [ "Fria" ]
      }
    , { name = "Gaoual"
      , code = "GA"
      , unofficialNames = [ "Gaoual" ]
      }
    , { name = "Gu??k??dou"
      , code = "GU"
      , unofficialNames = [ "Gu??k??dou" ]
      }
    , { name = "Kankan"
      , code = "KA"
      , unofficialNames = [ "Kankan" ]
      }
    , { name = "Koubia"
      , code = "KB"
      , unofficialNames = [ "Koubia" ]
      }
    , { name = "Kindia"
      , code = "KD"
      , unofficialNames = [ "Kindia" ]
      }
    , { name = "K??rouan??"
      , code = "KE"
      , unofficialNames = [ "K??rouan??" ]
      }
    , { name = "Koundara"
      , code = "KN"
      , unofficialNames = [ "Koundara" ]
      }
    , { name = "Kouroussa"
      , code = "KO"
      , unofficialNames = [ "Kouroussa" ]
      }
    , { name = "Kissidougou"
      , code = "KS"
      , unofficialNames = [ "Kissidougou" ]
      }
    , { name = "Lab??"
      , code = "LA"
      , unofficialNames = [ "Lab??" ]
      }
    , { name = "L??louma"
      , code = "LE"
      , unofficialNames = [ "L??louma" ]
      }
    , { name = "Lola"
      , code = "LO"
      , unofficialNames = [ "Lola" ]
      }
    , { name = "Macenta"
      , code = "MC"
      , unofficialNames = [ "Macenta" ]
      }
    , { name = "Mandiana"
      , code = "MD"
      , unofficialNames = [ "Mandiana" ]
      }
    , { name = "Mali"
      , code = "ML"
      , unofficialNames = [ "Mali" ]
      }
    , { name = "Mamou"
      , code = "MM"
      , unofficialNames = [ "Mamou" ]
      }
    , { name = "Nz??r??kor??"
      , code = "NZ"
      , unofficialNames = [ "Nz??r??kor??" ]
      }
    , { name = "Pita"
      , code = "PI"
      , unofficialNames = [ "Pita" ]
      }
    , { name = "Siguiri"
      , code = "SI"
      , unofficialNames = [ "Siguiri" ]
      }
    , { name = "T??lim??l??"
      , code = "TE"
      , unofficialNames = [ "T??lim??l??" ]
      }
    , { name = "Tougu??"
      , code = "TO"
      , unofficialNames = [ "Tougu??" ]
      }
    , { name = "Yomou"
      , code = "YO"
      , unofficialNames = [ "Yomou" ]
      }
    ]


{-| -}
countryGPSubdivisions : List Subdivision
countryGPSubdivisions =
    []


{-| -}
countryGQSubdivisions : List Subdivision
countryGQSubdivisions =
    [ { name = "Annob??n"
      , code = "AN"
      , unofficialNames = [ "Annob??n" ]
      }
    , { name = "Bioko Norte"
      , code = "BN"
      , unofficialNames = [ "Bioko Norte" ]
      }
    , { name = "Bioko Sur"
      , code = "BS"
      , unofficialNames = [ "Bioko Sur" ]
      }
    , { name = "Regi??n Continental"
      , code = "C"
      , unofficialNames = [ "Regi??n Continental" ]
      }
    , { name = "Centro Sur"
      , code = "CS"
      , unofficialNames = [ "Centro Sur" ]
      }
    , { name = "Regi??n Insular"
      , code = "I"
      , unofficialNames = [ "Regi??n Insular" ]
      }
    , { name = "Kie-Ntem"
      , code = "KN"
      , unofficialNames = [ "Kie-Ntem" ]
      }
    , { name = "Litoral"
      , code = "LI"
      , unofficialNames = [ "Litoral" ]
      }
    , { name = "Wele-Nz??s"
      , code = "WN"
      , unofficialNames = [ "Wele-Nz??s" ]
      }
    ]


{-| -}
countryGRSubdivisions : List Subdivision
countryGRSubdivisions =
    [ { name = "Aitolia-Akarnania"
      , code = "01"
      , unofficialNames = [ "Aetolia and Acarnania", "??itoloakarnan??a" ]
      }
    , { name = "Voiotia"
      , code = "03"
      , unofficialNames = [ "Boeotia" ]
      }
    , { name = "Evvoia"
      , code = "04"
      , unofficialNames = [ "Euboea", "Evvoia" ]
      }
    , { name = "Evrytania"
      , code = "05"
      , unofficialNames = [ "Evrytania" ]
      }
    , { name = "Fthiotis"
      , code = "06"
      , unofficialNames = [ "Phtiotis" ]
      }
    , { name = "Fokis"
      , code = "07"
      , unofficialNames = [ "Phocis", "Phokis" ]
      }
    , { name = "Argolis"
      , code = "11"
      , unofficialNames = [ "Argolis" ]
      }
    , { name = "Arkadia"
      , code = "12"
      , unofficialNames = [ "Arcadia" ]
      }
    , { name = "Acha??a"
      , code = "13"
      , unofficialNames = [ "Achaia", "Akhaia" ]
      }
    , { name = "Ileia"
      , code = "14"
      , unofficialNames = [ "Elia" ]
      }
    , { name = "Korinthia"
      , code = "15"
      , unofficialNames = [ "Corinth", "Korinth", "K??rinthos" ]
      }
    , { name = "Lakonia"
      , code = "16"
      , unofficialNames = [ "Laconia" ]
      }
    , { name = "Messinia"
      , code = "17"
      , unofficialNames = [ "Messenia" ]
      }
    , { name = "Zakynthos"
      , code = "21"
      , unofficialNames = [ "Zakynthos", "Zante", "Zanti" ]
      }
    , { name = "Kerkyra"
      , code = "22"
      , unofficialNames = [ "Corfu", "Kerkyra", "Korfu" ]
      }
    , { name = "Kefallinia"
      , code = "23"
      , unofficialNames = [ "Cephalonia", "Kefallinia" ]
      }
    , { name = "Lefkas"
      , code = "24"
      , unofficialNames = [ "Leucas", "Levk??da", "Santa Maura" ]
      }
    , { name = "Arta"
      , code = "31"
      , unofficialNames = [ "Arta" ]
      }
    , { name = "Thesprotia"
      , code = "32"
      , unofficialNames = [ "Thesprotia" ]
      }
    , { name = "Ioannina"
      , code = "33"
      , unofficialNames = [ "Yannina" ]
      }
    , { name = "Preveza"
      , code = "34"
      , unofficialNames = [ "Preveza" ]
      }
    , { name = "Karditsa"
      , code = "41"
      , unofficialNames = [ "Karditsa" ]
      }
    , { name = "Larisa"
      , code = "42"
      , unofficialNames = [ "Larissa" ]
      }
    , { name = "Magnisia"
      , code = "43"
      , unofficialNames = [ "Magnesia", "Magnessia" ]
      }
    , { name = "Trikala"
      , code = "44"
      , unofficialNames = [ "Trikala", "Trikkala" ]
      }
    , { name = "Grevena"
      , code = "51"
      , unofficialNames = [ "Grevena" ]
      }
    , { name = "Drama"
      , code = "52"
      , unofficialNames = [ "Drama" ]
      }
    , { name = "Imathia"
      , code = "53"
      , unofficialNames = [ "Imathia" ]
      }
    , { name = "Thessaloniki"
      , code = "54"
      , unofficialNames = [ "Salonika", "Salonike", "Saloniki", "Thessalonike" ]
      }
    , { name = "Kavalla"
      , code = "55"
      , unofficialNames = [ "Cavalla", "Kav??lla" ]
      }
    , { name = "Kastoria"
      , code = "56"
      , unofficialNames = [ "Kastoria" ]
      }
    , { name = "Kilkis"
      , code = "57"
      , unofficialNames = [ "Kilkis" ]
      }
    , { name = "Kozani"
      , code = "58"
      , unofficialNames = [ "Kozani" ]
      }
    , { name = "Pella"
      , code = "59"
      , unofficialNames = [ "Pella" ]
      }
    , { name = "Pieria"
      , code = "61"
      , unofficialNames = [ "Pieria" ]
      }
    , { name = "Serrai"
      , code = "62"
      , unofficialNames = [ "Serres" ]
      }
    , { name = "Florina"
      , code = "63"
      , unofficialNames = [ "Florina" ]
      }
    , { name = "Chalkidiki"
      , code = "64"
      , unofficialNames = [ "Chalcidice", "Khalkikdiki" ]
      }
    , { name = "Agio Oros"
      , code = "69"
      , unofficialNames = [ "Aghion Oros", "Agion Oros", "Akte", "Akt??", "Athos", "Mount Athos" ]
      }
    , { name = "Evros"
      , code = "71"
      , unofficialNames = [ "Evros" ]
      }
    , { name = "Xanthi"
      , code = "72"
      , unofficialNames = [ "Xanthi" ]
      }
    , { name = "Rodopi"
      , code = "73"
      , unofficialNames = [ "Rhodope" ]
      }
    , { name = "Dodekanisos"
      , code = "81"
      , unofficialNames = [ "Dodecanese", "Dodekanes" ]
      }
    , { name = "Kyklades"
      , code = "82"
      , unofficialNames = [ "Cyclades", "Kykladen" ]
      }
    , { name = "Lesvos"
      , code = "83"
      , unofficialNames = [ "Lesbos" ]
      }
    , { name = "Samos"
      , code = "84"
      , unofficialNames = [ "Samos" ]
      }
    , { name = "Chios"
      , code = "85"
      , unofficialNames = [ "Chios", "Khios" ]
      }
    , { name = "Irakleion"
      , code = "91"
      , unofficialNames = [ "Candia", "Herakleion", "Heraklion", "Iraclion", "Iraklio" ]
      }
    , { name = "Lasithion"
      , code = "92"
      , unofficialNames = [ "Lassithi" ]
      }
    , { name = "Rethymnon"
      , code = "93"
      , unofficialNames = [ "Rethymnon" ]
      }
    , { name = "Chania"
      , code = "94"
      , unofficialNames = [ "Canea", "Chania", "Khani??", "La Can??e" ]
      }
    , { name = "Attiki"
      , code = "A1"
      , unofficialNames = [ "Attica", "Attika" ]
      }
    ]


{-| -}
countryGTSubdivisions : List Subdivision
countryGTSubdivisions =
    [ { name = "Alta Verapaz"
      , code = "AV"
      , unofficialNames = [ "Alta Verapaz" ]
      }
    , { name = "Baja Verapaz"
      , code = "BV"
      , unofficialNames = [ "Baja Verapaz" ]
      }
    , { name = "Chimaltenango"
      , code = "CM"
      , unofficialNames = [ "Chimaltenango" ]
      }
    , { name = "Chiquimula"
      , code = "CQ"
      , unofficialNames = [ "Chiquimula" ]
      }
    , { name = "Escuintla"
      , code = "ES"
      , unofficialNames = [ "Escuintla" ]
      }
    , { name = "Guatemala"
      , code = "GU"
      , unofficialNames = [ "Guatemala" ]
      }
    , { name = "Huehuetenango"
      , code = "HU"
      , unofficialNames = [ "Huehuetenango" ]
      }
    , { name = "Izabal"
      , code = "IZ"
      , unofficialNames = [ "Izabal" ]
      }
    , { name = "Jalapa"
      , code = "JA"
      , unofficialNames = [ "Jalapa" ]
      }
    , { name = "Jutiapa"
      , code = "JU"
      , unofficialNames = [ "Jutiapa" ]
      }
    , { name = "Pet??n"
      , code = "PE"
      , unofficialNames = [ "Pet??n" ]
      }
    , { name = "El Progreso"
      , code = "PR"
      , unofficialNames = [ "El Progreso" ]
      }
    , { name = "Quich??"
      , code = "QC"
      , unofficialNames = [ "Quich??" ]
      }
    , { name = "Quetzaltenango"
      , code = "QZ"
      , unofficialNames = [ "Quetzaltenango" ]
      }
    , { name = "Retalhuleu"
      , code = "RE"
      , unofficialNames = [ "Retalhuleu" ]
      }
    , { name = "Sacatep??quez"
      , code = "SA"
      , unofficialNames = [ "Sacatep??quez" ]
      }
    , { name = "San Marcos"
      , code = "SM"
      , unofficialNames = [ "San Marcos" ]
      }
    , { name = "Solol??"
      , code = "SO"
      , unofficialNames = [ "Solol??" ]
      }
    , { name = "Santa Rosa"
      , code = "SR"
      , unofficialNames = [ "Santa Rosa" ]
      }
    , { name = "Suchitep??quez"
      , code = "SU"
      , unofficialNames = [ "Suchitep??quez" ]
      }
    , { name = "Totonicap??n"
      , code = "TO"
      , unofficialNames = [ "Totonicap??n" ]
      }
    , { name = "Zacapa"
      , code = "ZA"
      , unofficialNames = [ "Zacapa" ]
      }
    ]


{-| -}
countryGUSubdivisions : List Subdivision
countryGUSubdivisions =
    [ { name = "Agana Heights"
      , code = "AH"
      , unofficialNames = [ "Agana Heights" ]
      }
    , { name = "Hagatna"
      , code = "AN"
      , unofficialNames = [ "Hagatna" ]
      }
    , { name = "Asan-Maina"
      , code = "AS"
      , unofficialNames = [ "Asan-Maina" ]
      }
    , { name = "Agat"
      , code = "AT"
      , unofficialNames = [ "Agat" ]
      }
    , { name = "Barrigada"
      , code = "BA"
      , unofficialNames = [ "Barrigada" ]
      }
    , { name = "Chalan Pago-Ordot"
      , code = "CP"
      , unofficialNames = [ "Chalan Pago-Ordot" ]
      }
    , { name = "Dededo"
      , code = "DD"
      , unofficialNames = [ "Dededo" ]
      }
    , { name = "Inarajan"
      , code = "IN"
      , unofficialNames = [ "Inarajan" ]
      }
    , { name = "Mangilao"
      , code = "MA"
      , unofficialNames = [ "Mangilao" ]
      }
    , { name = "Merizo"
      , code = "ME"
      , unofficialNames = [ "Merizo" ]
      }
    , { name = "Mongmong-Toto-Maite"
      , code = "MT"
      , unofficialNames = [ "Mongmong-Toto-Maite" ]
      }
    , { name = "Piti"
      , code = "PI"
      , unofficialNames = [ "Piti" ]
      }
    , { name = "Sinajana"
      , code = "SJ"
      , unofficialNames = [ "Sinajana" ]
      }
    , { name = "Santa Rita"
      , code = "SR"
      , unofficialNames = [ "Santa Rita" ]
      }
    , { name = "Talofofo"
      , code = "TF"
      , unofficialNames = [ "Talofofo" ]
      }
    , { name = "Tamuning"
      , code = "TM"
      , unofficialNames = [ "Tamuning" ]
      }
    , { name = "Umatac"
      , code = "UM"
      , unofficialNames = [ "Umatac" ]
      }
    , { name = "Yigo"
      , code = "YG"
      , unofficialNames = [ "Yigo" ]
      }
    , { name = "Yona"
      , code = "YN"
      , unofficialNames = [ "Yona" ]
      }
    ]


{-| -}
countryGWSubdivisions : List Subdivision
countryGWSubdivisions =
    [ { name = "Bafat??"
      , code = "BA"
      , unofficialNames = [ "Bafat??" ]
      }
    , { name = "Bolama"
      , code = "BL"
      , unofficialNames = [ "Bolama" ]
      }
    , { name = "Biombo"
      , code = "BM"
      , unofficialNames = [ "Biombo" ]
      }
    , { name = "Bissau"
      , code = "BS"
      , unofficialNames = [ "Bissau" ]
      }
    , { name = "Cacheu"
      , code = "CA"
      , unofficialNames = [ "Cacheo" ]
      }
    , { name = "Gab??"
      , code = "GA"
      , unofficialNames = [ "Gab??" ]
      }
    , { name = "Oio"
      , code = "OI"
      , unofficialNames = [ "Oio" ]
      }
    , { name = "Quinara"
      , code = "QU"
      , unofficialNames = [ "Quinara" ]
      }
    , { name = "Tombali"
      , code = "TO"
      , unofficialNames = [ "Tombali" ]
      }
    ]


{-| -}
countryGYSubdivisions : List Subdivision
countryGYSubdivisions =
    [ { name = "Barima-Waini"
      , code = "BA"
      , unofficialNames = [ "Barima-Waini" ]
      }
    , { name = "Cuyuni-Mazaruni"
      , code = "CU"
      , unofficialNames = [ "Cuyuni-Mazaruni" ]
      }
    , { name = "Demerara-Mahaica"
      , code = "DE"
      , unofficialNames = [ "Demerara-Mahaica" ]
      }
    , { name = "East Berbice-Corentyne"
      , code = "EB"
      , unofficialNames = [ "East Berbice-Corentyne" ]
      }
    , { name = "Essequibo Islands-West Demerara"
      , code = "ES"
      , unofficialNames = [ "Essequibo Islands-West Demerara" ]
      }
    , { name = "Mahaica-Berbice"
      , code = "MA"
      , unofficialNames = [ "Mahaica-Berbice" ]
      }
    , { name = "Pomeroon-Supenaam"
      , code = "PM"
      , unofficialNames = [ "Pomeroon-Supenaam" ]
      }
    , { name = "Potaro-Siparuni"
      , code = "PT"
      , unofficialNames = [ "Potaro-Siparuni" ]
      }
    , { name = "Upper Demerara-Berbice"
      , code = "UD"
      , unofficialNames = [ "Upper Demerara-Berbice" ]
      }
    , { name = "Upper Takutu-Upper Essequibo"
      , code = "UT"
      , unofficialNames = [ "Upper Takutu-Upper Essequibo" ]
      }
    ]


{-| -}
countryHKSubdivisions : List Subdivision
countryHKSubdivisions =
    [ { name = "Central and Western District"
      , code = "HCW"
      , unofficialNames = [ "Central and Western District" ]
      }
    , { name = "Eastern"
      , code = "HEA"
      , unofficialNames = [ "Eastern" ]
      }
    , { name = "Southern"
      , code = "HSO"
      , unofficialNames = [ "Southern" ]
      }
    , { name = "Wan Chai"
      , code = "HWC"
      , unofficialNames = [ "Wan Chai" ]
      }
    , { name = "Sham Shui Po"
      , code = "KSS"
      , unofficialNames = [ "Sham Shui Po" ]
      }
    , { name = "Kowloon City"
      , code = "KKC"
      , unofficialNames = [ "Kowloon City" ]
      }
    , { name = "Kwun Tong"
      , code = "KKT"
      , unofficialNames = [ "Kwun Tong" ]
      }
    , { name = "Wong Tai Sin"
      , code = "KWT"
      , unofficialNames = [ "Wong Tai Sin" ]
      }
    , { name = "Yau Tsim Mong"
      , code = "KYT"
      , unofficialNames = [ "Yau Tsim Mong" ]
      }
    , { name = "Islands District"
      , code = "NIS"
      , unofficialNames = [ "Islands District" ]
      }
    , { name = "Kwai Tsing"
      , code = "NKT"
      , unofficialNames = [ "Kwai Tsing" ]
      }
    , { name = "North"
      , code = "NNO"
      , unofficialNames = [ "North" ]
      }
    , { name = "Sai Kung District"
      , code = "NSK"
      , unofficialNames = [ "Sai Kung District" ]
      }
    , { name = "Sha Tin"
      , code = "NST"
      , unofficialNames = [ "Sha Tin" ]
      }
    , { name = "Tuen Mun"
      , code = "NTM"
      , unofficialNames = [ "Tuen Mun" ]
      }
    , { name = "Tai Po District"
      , code = "NTP"
      , unofficialNames = [ "Tai Po District" ]
      }
    , { name = "Tsuen Wan District"
      , code = "NTW"
      , unofficialNames = [ "Tsuen Wan District" ]
      }
    , { name = "Yuen Long District"
      , code = "NYL"
      , unofficialNames = [ "Yuen Long District" ]
      }
    ]


{-| -}
countryHNSubdivisions : List Subdivision
countryHNSubdivisions =
    [ { name = "Atl??ntida"
      , code = "AT"
      , unofficialNames = [ "Atl??ntida" ]
      }
    , { name = "Choluteca"
      , code = "CH"
      , unofficialNames = [ "Choluteca" ]
      }
    , { name = "Col??n"
      , code = "CL"
      , unofficialNames = [ "Col??n" ]
      }
    , { name = "Comayagua"
      , code = "CM"
      , unofficialNames = [ "Comayagua" ]
      }
    , { name = "Cop??n"
      , code = "CP"
      , unofficialNames = [ "Cop??n" ]
      }
    , { name = "Cort??s"
      , code = "CR"
      , unofficialNames = [ "Cort??s" ]
      }
    , { name = "El Para??so"
      , code = "EP"
      , unofficialNames = [ "El Para??so" ]
      }
    , { name = "Francisco Moraz??n"
      , code = "FM"
      , unofficialNames = [ "Francisco Moraz??n" ]
      }
    , { name = "Gracias a Dios"
      , code = "GD"
      , unofficialNames = [ "Gracias a Dios" ]
      }
    , { name = "Islas de la Bah??a"
      , code = "IB"
      , unofficialNames = [ "Islas de la Bah??a" ]
      }
    , { name = "Intibuc??"
      , code = "IN"
      , unofficialNames = [ "Intibuc??" ]
      }
    , { name = "Lempira"
      , code = "LE"
      , unofficialNames = [ "Lempira" ]
      }
    , { name = "La Paz"
      , code = "LP"
      , unofficialNames = [ "La Paz" ]
      }
    , { name = "Ocotepeque"
      , code = "OC"
      , unofficialNames = [ "Ocotepeque" ]
      }
    , { name = "Olancho"
      , code = "OL"
      , unofficialNames = [ "Olancho" ]
      }
    , { name = "Santa B??rbara"
      , code = "SB"
      , unofficialNames = [ "Santa B??rbara" ]
      }
    , { name = "Valle"
      , code = "VA"
      , unofficialNames = [ "Valle" ]
      }
    , { name = "Yoro"
      , code = "YO"
      , unofficialNames = [ "Yoro" ]
      }
    ]


{-| -}
countryHRSubdivisions : List Subdivision
countryHRSubdivisions =
    [ { name = "Zagreba??ka ??upanija"
      , code = "01"
      , unofficialNames = [ "Zagreb County" ]
      }
    , { name = "Krapinsko-zagorska ??upanija"
      , code = "02"
      , unofficialNames = [ "Krapina-Zagorje" ]
      }
    , { name = "Sisa??ko-moslava??ka ??upanija"
      , code = "03"
      , unofficialNames = [ "Sisak-Moslavina" ]
      }
    , { name = "Karlova??ka ??upanija"
      , code = "04"
      , unofficialNames = [ "Karlovac" ]
      }
    , { name = "Vara??dinska ??upanija"
      , code = "05"
      , unofficialNames = [ "Vara??din" ]
      }
    , { name = "Koprivni??ko-kri??eva??ka ??upanija"
      , code = "06"
      , unofficialNames = [ "Koprivnica-Kri??evci" ]
      }
    , { name = "Bjelovarsko-bilogorska ??upanija"
      , code = "07"
      , unofficialNames = [ "Bjelovar-Bilogora" ]
      }
    , { name = "Primorsko-goranska ??upanija"
      , code = "08"
      , unofficialNames = [ "Primorje-Gorski Kotar" ]
      }
    , { name = "Li??ko-senjska ??upanija"
      , code = "09"
      , unofficialNames = [ "Lika-Senj" ]
      }
    , { name = "Viroviti??ko-podravska ??upanija"
      , code = "10"
      , unofficialNames = [ "Virovitica-Podravina" ]
      }
    , { name = "Po??e??ko-slavonska ??upanija"
      , code = "11"
      , unofficialNames = [ "Po??ega-Slavonia" ]
      }
    , { name = "Brodsko-posavska ??upanija"
      , code = "12"
      , unofficialNames = [ "Brod-Posavina" ]
      }
    , { name = "Zadarska ??upanija"
      , code = "13"
      , unofficialNames = [ "Zadar" ]
      }
    , { name = "Osje??ko-baranjska ??upanija"
      , code = "14"
      , unofficialNames = [ "Osijek-Baranja" ]
      }
    , { name = "??ibensko-kninska ??upanija"
      , code = "15"
      , unofficialNames = [ "??ibenik-Knin" ]
      }
    , { name = "Vukovarsko-srijemska ??upanija"
      , code = "16"
      , unofficialNames = [ "Vukovar-Sirmium" ]
      }
    , { name = "Splitsko-dalmatinska ??upanija"
      , code = "17"
      , unofficialNames = [ "Split-Dalmatia" ]
      }
    , { name = "Istarska ??upanija"
      , code = "18"
      , unofficialNames = [ "Istria" ]
      }
    , { name = "Dubrova??ko-neretvanska ??upanija"
      , code = "19"
      , unofficialNames = [ "Dubrovnik-Neretva" ]
      }
    , { name = "Me??imurska ??upanija"
      , code = "20"
      , unofficialNames = [ "Me??imurje" ]
      }
    , { name = "Grad Zagreb"
      , code = "21"
      , unofficialNames = [ "City of Zagreb" ]
      }
    ]


{-| -}
countryHTSubdivisions : List Subdivision
countryHTSubdivisions =
    [ { name = "Artibonite"
      , code = "AR"
      , unofficialNames = [ "L??Artibonite" ]
      }
    , { name = "Centre"
      , code = "CE"
      , unofficialNames = [ "Centre" ]
      }
    , { name = "Grande-Anse"
      , code = "GA"
      , unofficialNames = [ "Grande Anse" ]
      }
    , { name = "Nord"
      , code = "ND"
      , unofficialNames = [ "Nord" ]
      }
    , { name = "Nord-Est"
      , code = "NE"
      , unofficialNames = [ "Nord-Est" ]
      }
    , { name = "Nord-Ouest"
      , code = "NO"
      , unofficialNames = [ "Nord-Ouest" ]
      }
    , { name = "Ouest"
      , code = "OU"
      , unofficialNames = [ "Ouest" ]
      }
    , { name = "Sud"
      , code = "SD"
      , unofficialNames = [ "Sud" ]
      }
    , { name = "Sud-Est"
      , code = "SE"
      , unofficialNames = [ "Sud-Est" ]
      }
    ]


{-| -}
countryHUSubdivisions : List Subdivision
countryHUSubdivisions =
    [ { name = "Baranya"
      , code = "BA"
      , unofficialNames = [ "Baranya" ]
      }
    , { name = "B??k??scsaba"
      , code = "BC"
      , unofficialNames = [ "B??k??scsaba" ]
      }
    , { name = "B??k??s"
      , code = "BE"
      , unofficialNames = [ "B??k??s" ]
      }
    , { name = "B??cs-Kiskun"
      , code = "BK"
      , unofficialNames = [ "B??cs-Kiskun" ]
      }
    , { name = "Budapest"
      , code = "BU"
      , unofficialNames = [ "Budapest" ]
      }
    , { name = "Borsod-Aba??j-Zempl??n"
      , code = "BZ"
      , unofficialNames = [ "Borsod-Aba??j-Zempl??n" ]
      }
    , { name = "Csongr??d"
      , code = "CS"
      , unofficialNames = [ "Csongr??d" ]
      }
    , { name = "Debrecen"
      , code = "DE"
      , unofficialNames = [ "Debrecen" ]
      }
    , { name = "Duna??jv??ros"
      , code = "DU"
      , unofficialNames = [ "Duna??jv??ros" ]
      }
    , { name = "Eger"
      , code = "EG"
      , unofficialNames = [ "Eger" ]
      }
    , { name = "??rd"
      , code = "ER"
      , unofficialNames = [ "??rd" ]
      }
    , { name = "Fej??r"
      , code = "FE"
      , unofficialNames = [ "Fej??r" ]
      }
    , { name = "Gy??r-Moson-Sopron"
      , code = "GS"
      , unofficialNames = [ "Gy??r-Moson-Sopron" ]
      }
    , { name = "Gy??r"
      , code = "GY"
      , unofficialNames = [ "Gy??r" ]
      }
    , { name = "Hajd??-Bihar"
      , code = "HB"
      , unofficialNames = [ "Hajd??-Bihar" ]
      }
    , { name = "Heves"
      , code = "HE"
      , unofficialNames = [ "Heves" ]
      }
    , { name = "H??dmez??v??s??rhely"
      , code = "HV"
      , unofficialNames = [ "H??dmez??v??s??rhely" ]
      }
    , { name = "J??sz-Nagykun-Szolnok"
      , code = "JN"
      , unofficialNames = [ "J??sz-Nagykun-Szolnok" ]
      }
    , { name = "Kom??rom-Esztergom"
      , code = "KE"
      , unofficialNames = [ "Kom??rom-Esztergom" ]
      }
    , { name = "Kecskem??t"
      , code = "KM"
      , unofficialNames = [ "Kecskem??t" ]
      }
    , { name = "Kaposv??r"
      , code = "KV"
      , unofficialNames = [ "Kaposv??r" ]
      }
    , { name = "Miskolc"
      , code = "MI"
      , unofficialNames = [ "Miskolc" ]
      }
    , { name = "Nagykanizsa"
      , code = "NK"
      , unofficialNames = [ "Nagykanizsa" ]
      }
    , { name = "N??gr??d"
      , code = "NO"
      , unofficialNames = [ "N??gr??d" ]
      }
    , { name = "Ny??regyh??za"
      , code = "NY"
      , unofficialNames = [ "Ny??regyh??za" ]
      }
    , { name = "Pest"
      , code = "PE"
      , unofficialNames = [ "Pest" ]
      }
    , { name = "P??cs"
      , code = "PS"
      , unofficialNames = [ "P??cs" ]
      }
    , { name = "Szeged"
      , code = "SD"
      , unofficialNames = [ "Szeged" ]
      }
    , { name = "Sz??kesfeh??rv??r"
      , code = "SF"
      , unofficialNames = [ "Sz??kesfeh??rv??r" ]
      }
    , { name = "Szombathely"
      , code = "SH"
      , unofficialNames = [ "Szombathely" ]
      }
    , { name = "Szolnok"
      , code = "SK"
      , unofficialNames = [ "Szolnok" ]
      }
    , { name = "Sopron"
      , code = "SN"
      , unofficialNames = [ "Sopron" ]
      }
    , { name = "Somogy"
      , code = "SO"
      , unofficialNames = [ "Somogy" ]
      }
    , { name = "Szeksz??rd"
      , code = "SS"
      , unofficialNames = [ "Szeksz??rd" ]
      }
    , { name = "Salg??tarj??n"
      , code = "ST"
      , unofficialNames = [ "Salg??tarj??n" ]
      }
    , { name = "Szabolcs-Szatm??r-Bereg"
      , code = "SZ"
      , unofficialNames = [ "Szabolcs-Szatm??r-Bereg" ]
      }
    , { name = "Tatab??nya"
      , code = "TB"
      , unofficialNames = [ "Tatab??nya" ]
      }
    , { name = "Tolna"
      , code = "TO"
      , unofficialNames = [ "Tolna" ]
      }
    , { name = "Vas"
      , code = "VA"
      , unofficialNames = [ "Vas" ]
      }
    , { name = "Veszpr??m"
      , code = "VE"
      , unofficialNames = [ "Veszpr??m" ]
      }
    , { name = "Veszpr??m"
      , code = "VM"
      , unofficialNames = [ "Veszpr??m" ]
      }
    , { name = "Zala"
      , code = "ZA"
      , unofficialNames = [ "Zala" ]
      }
    , { name = "Zalaegerszeg"
      , code = "ZE"
      , unofficialNames = [ "Zalaegerszeg" ]
      }
    ]


{-| -}
countryIDSubdivisions : List Subdivision
countryIDSubdivisions =
    []


{-| -}
countryIESubdivisions : List Subdivision
countryIESubdivisions =
    [ { name = "Connacht"
      , code = "C"
      , unofficialNames = [ "Connaught" ]
      }
    , { name = "Clare"
      , code = "CE"
      , unofficialNames = [ "An Cl??r" ]
      }
    , { name = "Cavan"
      , code = "CN"
      , unofficialNames = [ "An Cabh??n" ]
      }
    , { name = "Carlow"
      , code = "CW"
      , unofficialNames = [ "Ceatharlach" ]
      }
    , { name = "Dublin"
      , code = "D"
      , unofficialNames = [ "??tha Cliath" ]
      }
    , { name = "Donegal"
      , code = "DL"
      , unofficialNames = [ "D??n na nGall" ]
      }
    , { name = "Galway"
      , code = "G"
      , unofficialNames = [ "Gaillimh" ]
      }
    , { name = "Kildare"
      , code = "KE"
      , unofficialNames = [ "Cill Dara" ]
      }
    , { name = "Kilkenny"
      , code = "KK"
      , unofficialNames = [ "Cill Chainnigh" ]
      }
    , { name = "Kerry"
      , code = "KY"
      , unofficialNames = [ "Ciarraighe", "Ciarra??" ]
      }
    , { name = "Longford"
      , code = "LD"
      , unofficialNames = [ "Longphort", "Longphuirt" ]
      }
    , { name = "Louth"
      , code = "LH"
      , unofficialNames = [ "Lughbhadh", "L??" ]
      }
    , { name = "Limerick"
      , code = "LK"
      , unofficialNames = [ "Luimneach" ]
      }
    , { name = "Leitrim"
      , code = "LM"
      , unofficialNames = [ "Liathdroim" ]
      }
    , { name = "Laois"
      , code = "LS"
      , unofficialNames = [ "Laoighis", "Queen??s" ]
      }
    , { name = "Meath"
      , code = "MH"
      , unofficialNames = [ "An Mh??", "An Mh??dhe" ]
      }
    , { name = "Monaghan"
      , code = "MN"
      , unofficialNames = [ "Muineach??n" ]
      }
    , { name = "Mayo"
      , code = "MO"
      , unofficialNames = [ "Maigh Eo" ]
      }
    , { name = "Offaly"
      , code = "OY"
      , unofficialNames = [ "King??s", "King??s County", "Ua U??bh Fhail??", "U?? F??ilghe" ]
      }
    , { name = "Roscommon"
      , code = "RN"
      , unofficialNames = [ "Ros Com??in" ]
      }
    , { name = "Sligo"
      , code = "SO"
      , unofficialNames = [ "Sligeach" ]
      }
    , { name = "Tipperary"
      , code = "TA"
      , unofficialNames = [ "Tiobraid ??rann" ]
      }
    , { name = "Waterford"
      , code = "WD"
      , unofficialNames = [ "Port L??irge" ]
      }
    , { name = "Westmeath"
      , code = "WH"
      , unofficialNames = [ "An Iarmhidhe" ]
      }
    , { name = "Wicklow"
      , code = "WW"
      , unofficialNames = [ "Cill Maintain", "Cill Mhannt??in" ]
      }
    , { name = "Wexford"
      , code = "WX"
      , unofficialNames = [ "Loch Garman" ]
      }
    , { name = "Cork"
      , code = "CO"
      , unofficialNames = [ "Corcaigh", "County Cork" ]
      }
    ]


{-| -}
countryILSubdivisions : List Subdivision
countryILSubdivisions =
    [ { name = "HaDarom"
      , code = "D"
      , unofficialNames = [ "Southern" ]
      }
    , { name = "Haifa"
      , code = "HA"
      , unofficialNames = [ "Hefa", "H??efa", "Haifa", "Haifa", "Haifa" ]
      }
    , { name = "Yerushalayim"
      , code = "JM"
      , unofficialNames = [ "al-Quds", "Yerushalayim", "Jerusalem", "J??rusalem", "Jerusal??n" ]
      }
    , { name = "HaMerkaz"
      , code = "M"
      , unofficialNames = [ "Central" ]
      }
    , { name = "Tel-Aviv"
      , code = "TA"
      , unofficialNames = [ "Tel-Aviv" ]
      }
    , { name = "HaZafon"
      , code = "Z"
      , unofficialNames = [ "Northern" ]
      }
    ]


{-| -}
countryIMSubdivisions : List Subdivision
countryIMSubdivisions =
    [ { name = "Andreas"
      , code = "1"
      , unofficialNames = [ "Andreas" ]
      }
    , { name = "Arbory"
      , code = "2"
      , unofficialNames = [ "Arbory" ]
      }
    , { name = "Ballaugh"
      , code = "3"
      , unofficialNames = [ "Ballaugh" ]
      }
    , { name = "Braddan"
      , code = "4"
      , unofficialNames = [ "Braddan" ]
      }
    , { name = "Bride"
      , code = "5"
      , unofficialNames = [ "Bride" ]
      }
    , { name = "Castletown"
      , code = "6"
      , unofficialNames = [ "Castletown" ]
      }
    , { name = "Douglas"
      , code = "7"
      , unofficialNames = [ "Douglas" ]
      }
    , { name = "German"
      , code = "8"
      , unofficialNames = [ "German" ]
      }
    , { name = "Jurby"
      , code = "9"
      , unofficialNames = [ "Jurby" ]
      }
    , { name = "Laxey"
      , code = "10"
      , unofficialNames = [ "Laxey" ]
      }
    , { name = "Lezayre"
      , code = "11"
      , unofficialNames = [ "Lezayre" ]
      }
    , { name = "Lonan"
      , code = "12"
      , unofficialNames = [ "Lonan" ]
      }
    , { name = "Malew"
      , code = "13"
      , unofficialNames = [ "Malew" ]
      }
    , { name = "Marown"
      , code = "14"
      , unofficialNames = [ "Marown" ]
      }
    , { name = "Maughold"
      , code = "15"
      , unofficialNames = [ "Maughold" ]
      }
    , { name = "Michael"
      , code = "16"
      , unofficialNames = [ "Michael" ]
      }
    , { name = "Onchan"
      , code = "17"
      , unofficialNames = [ "Onchan" ]
      }
    , { name = "Patrick"
      , code = "18"
      , unofficialNames = [ "Patrick" ]
      }
    , { name = "Peel"
      , code = "19"
      , unofficialNames = [ "Peel" ]
      }
    , { name = "Port Erin"
      , code = "20"
      , unofficialNames = [ "Port Erin" ]
      }
    , { name = "Port St Mary"
      , code = "21"
      , unofficialNames = [ "Port St Mary" ]
      }
    , { name = "Ramsey"
      , code = "22"
      , unofficialNames = [ "Ramsey" ]
      }
    , { name = "Rushen"
      , code = "23"
      , unofficialNames = [ "Rushen" ]
      }
    , { name = "Santon"
      , code = "24"
      , unofficialNames = [ "Santon" ]
      }
    ]


{-| -}
countryINSubdivisions : List Subdivision
countryINSubdivisions =
    [ { name = "Andaman and Nicobar Islands"
      , code = "AN"
      , unofficialNames = [ "Andaman and Nicobar Islands" ]
      }
    , { name = "Andhra Pradesh"
      , code = "AP"
      , unofficialNames = [ "Andhra Pradesh" ]
      }
    , { name = "Arunachal Pradesh"
      , code = "AR"
      , unofficialNames = [ "Arunachal Pradesh" ]
      }
    , { name = "Assam"
      , code = "AS"
      , unofficialNames = [ "Assam" ]
      }
    , { name = "Bihar"
      , code = "BR"
      , unofficialNames = [ "Bihar" ]
      }
    , { name = "Chandigarh"
      , code = "CH"
      , unofficialNames = [ "Chandigarh" ]
      }
    , { name = "Chhattisgarh"
      , code = "CT"
      , unofficialNames = [ "Chhattisgarh" ]
      }
    , { name = "Daman and Diu"
      , code = "DD"
      , unofficialNames = [ "Daman and Diu" ]
      }
    , { name = "Delhi"
      , code = "DL"
      , unofficialNames = [ "Delhi" ]
      }
    , { name = "Dadra and Nagar Haveli"
      , code = "DN"
      , unofficialNames = [ "Dadra and Nagar Haveli" ]
      }
    , { name = "Goa"
      , code = "GA"
      , unofficialNames = [ "Goa" ]
      }
    , { name = "Gujarat"
      , code = "GJ"
      , unofficialNames = [ "Gujarat" ]
      }
    , { name = "Himachal Pradesh"
      , code = "HP"
      , unofficialNames = [ "Himachal Pradesh" ]
      }
    , { name = "Haryana"
      , code = "HR"
      , unofficialNames = [ "Haryana" ]
      }
    , { name = "Jharkhand"
      , code = "JH"
      , unofficialNames = [ "Vananchal" ]
      }
    , { name = "Jammu and Kashmir"
      , code = "JK"
      , unofficialNames = [ "Jammu and Kashmir" ]
      }
    , { name = "Karnataka"
      , code = "KA"
      , unofficialNames = [ "Kanara" ]
      }
    , { name = "Kerala"
      , code = "KL"
      , unofficialNames = [ "Kerala" ]
      }
    , { name = "Lakshadweep"
      , code = "LD"
      , unofficialNames = [ "Laccadive", "Lakkadiven" ]
      }
    , { name = "Maharashtra"
      , code = "MH"
      , unofficialNames = [ "Maharashtra" ]
      }
    , { name = "Meghalaya"
      , code = "ML"
      , unofficialNames = [ "Meghalaya" ]
      }
    , { name = "Manipur"
      , code = "MN"
      , unofficialNames = [ "Manipur" ]
      }
    , { name = "Madhya Pradesh"
      , code = "MP"
      , unofficialNames = [ "Madhya Pradesh" ]
      }
    , { name = "Mizoram"
      , code = "MZ"
      , unofficialNames = [ "Mizoram" ]
      }
    , { name = "Nagaland"
      , code = "NL"
      , unofficialNames = [ "Nagaland" ]
      }
    , { name = "Orissa"
      , code = "OR"
      , unofficialNames = [ "Orissa" ]
      }
    , { name = "Punjab"
      , code = "PB"
      , unofficialNames = [ "Punjab" ]
      }
    , { name = "Pondicherry"
      , code = "PY"
      , unofficialNames = [ "Pondicherry" ]
      }
    , { name = "Rajasthan"
      , code = "RJ"
      , unofficialNames = [ "Rajasthan" ]
      }
    , { name = "Sikkim"
      , code = "SK"
      , unofficialNames = [ "Denjong" ]
      }
    , { name = "Tamil Nadu"
      , code = "TN"
      , unofficialNames = [ "Tamil Nadu" ]
      }
    , { name = "Tripura"
      , code = "TR"
      , unofficialNames = [ "Tripura" ]
      }
    , { name = "Telangana"
      , code = "TS"
      , unofficialNames = [ "Telangana" ]
      }
    , { name = "Uttaranchal"
      , code = "UL"
      , unofficialNames = [ "Uttaranchal" ]
      }
    , { name = "Uttar Pradesh"
      , code = "UP"
      , unofficialNames = [ "Uttar Pradesh" ]
      }
    , { name = "West Bengal"
      , code = "WB"
      , unofficialNames = [ "West Bengal" ]
      }
    ]


{-| -}
countryIQSubdivisions : List Subdivision
countryIQSubdivisions =
    [ { name = "Al Anbar"
      , code = "AN"
      , unofficialNames = [ "al-Anbar" ]
      }
    , { name = "Arbil"
      , code = "AR"
      , unofficialNames = [ "Arbil", "Erbil", "Irbil" ]
      }
    , { name = "Al Basrah"
      , code = "BA"
      , unofficialNames = [ "Basra", "Bassora", "al-Basrah" ]
      }
    , { name = "Babil"
      , code = "BB"
      , unofficialNames = [ "Babil", "Babylon" ]
      }
    , { name = "Baghdad"
      , code = "BG"
      , unofficialNames = [ "Ba??d??d", "Bagdad", "Bagdad" ]
      }
    , { name = "Dahuk"
      , code = "DA"
      , unofficialNames = [ "Dahuk" ]
      }
    , { name = "Diyal??"
      , code = "DI"
      , unofficialNames = [ "Diyala" ]
      }
    , { name = "Dhi Qar"
      , code = "DQ"
      , unofficialNames = [ "Dhi Qar", "Thi Qar" ]
      }
    , { name = "Karbala'"
      , code = "KA"
      , unofficialNames = [ "Karbala", "Kerbala", "Kerbela" ]
      }
    , { name = "Maysan"
      , code = "MA"
      , unofficialNames = [ "Maysan" ]
      }
    , { name = "Al Muthann??"
      , code = "MU"
      , unofficialNames = [ "al-Muthanna" ]
      }
    , { name = "An Najaf"
      , code = "NA"
      , unofficialNames = [ "Najaf", "Nedjef", "Nejef" ]
      }
    , { name = "Ninaw??"
      , code = "NI"
      , unofficialNames = [ "Nineveh", "Niniveh" ]
      }
    , { name = "Al Qadisiyah"
      , code = "QA"
      , unofficialNames = [ "al-Qadisiyah" ]
      }
    , { name = "Salah ad Din"
      , code = "SD"
      , unofficialNames = [ "Salah-ad-Din" ]
      }
    , { name = "As Sulaymaniyah"
      , code = "SU"
      , unofficialNames = [ "Sulaymaniya", "Sulaym??n??yah", "as-Sulaymaniyah" ]
      }
    , { name = "At Ta'mim"
      , code = "TS"
      , unofficialNames = [ "at-Tamim" ]
      }
    , { name = "Wasit"
      , code = "WA"
      , unofficialNames = [ "Wasit" ]
      }
    ]


{-| -}
countryIRSubdivisions : List Subdivision
countryIRSubdivisions =
    [ { name = "Az??arbayjan-e Sharqi"
      , code = "01"
      , unofficialNames = [ "Azarbayj??n-e Khavari", "East Azerbaijan" ]
      }
    , { name = "Az??arbayjan-e Gharbi"
      , code = "02"
      , unofficialNames = [ "Azarbayj??n-e Bakhtari", "West Azerbaijan" ]
      }
    , { name = "Ardabil"
      , code = "03"
      , unofficialNames = [ "Ardabil", "Ardebil" ]
      }
    , { name = "Esfahan"
      , code = "04"
      , unofficialNames = [ "Isfahan" ]
      }
    , { name = "Ilam"
      , code = "05"
      , unofficialNames = [ "Ilam" ]
      }
    , { name = "Bushehr"
      , code = "06"
      , unofficialNames = [ "Bushehr" ]
      }
    , { name = "Tehran"
      , code = "07"
      , unofficialNames = [ "Teheran" ]
      }
    , { name = "Chahar Mah??all va Bakhtiari"
      , code = "08"
      , unofficialNames = [ "Chaharmahal Bakhtiari" ]
      }
    , { name = "Khorasan"
      , code = "09"
      , unofficialNames = [ "Khorasan" ]
      }
    , { name = "Khuzestan"
      , code = "10"
      , unofficialNames = [ "Arabistan" ]
      }
    , { name = "Zanjan"
      , code = "11"
      , unofficialNames = [ "Zanjan" ]
      }
    , { name = "Semnan"
      , code = "12"
      , unofficialNames = [ "Semnan" ]
      }
    , { name = "Sistan va Baluchestan"
      , code = "13"
      , unofficialNames = [ "Sistan-e Baluchistan" ]
      }
    , { name = "Fars"
      , code = "14"
      , unofficialNames = [ "Fars" ]
      }
    , { name = "Kerman"
      , code = "15"
      , unofficialNames = [ "Kerman" ]
      }
    , { name = "Kordestan"
      , code = "16"
      , unofficialNames = [ "Kurdestan", "Kurdistan" ]
      }
    , { name = "Kermanshah"
      , code = "17"
      , unofficialNames = [ "Bakhtaran" ]
      }
    , { name = "Kohkiluyeh va Buyer Ahmad"
      , code = "18"
      , unofficialNames = [ "Boyer Ahmad-e Kohkiluyeh", "Kohkilouyeh" ]
      }
    , { name = "Gilan"
      , code = "19"
      , unofficialNames = [ "Gilan" ]
      }
    , { name = "Lorestan"
      , code = "20"
      , unofficialNames = [ "Lorestan" ]
      }
    , { name = "Mazandaran"
      , code = "21"
      , unofficialNames = [ "Mazandaran" ]
      }
    , { name = "Markazi"
      , code = "22"
      , unofficialNames = [ "Markazi" ]
      }
    , { name = "Hormozgan"
      , code = "23"
      , unofficialNames = [ "Hormozgan" ]
      }
    , { name = "Hamadan"
      , code = "24"
      , unofficialNames = [ "Hamedan" ]
      }
    , { name = "Yazd"
      , code = "25"
      , unofficialNames = [ "Yazd" ]
      }
    , { name = "Qom"
      , code = "26"
      , unofficialNames = [ "Qom" ]
      }
    , { name = "Golestan"
      , code = "27"
      , unofficialNames = [ "Golestan" ]
      }
    , { name = "Qazvin"
      , code = "28"
      , unofficialNames = [ "Qazvin" ]
      }
    , { name = "Khorasan-e Janubi"
      , code = "29"
      , unofficialNames = [ "Khorasan-e Janubi" ]
      }
    , { name = "Khorasan-e Razavi"
      , code = "30"
      , unofficialNames = [ "Khorasan-e Razavi" ]
      }
    , { name = "Khorasan-e Shemali"
      , code = "31"
      , unofficialNames = [ "Khorasan-e Shemali" ]
      }
    ]


{-| -}
countryISSubdivisions : List Subdivision
countryISSubdivisions =
    [ { name = "Reykjav??k"
      , code = "0"
      , unofficialNames = [ "Reykjav??k" ]
      }
    , { name = "H??fu??borgarsv????i utan Reykjav??kur"
      , code = "1"
      , unofficialNames = [ "H??fu??borgarsv????i utan Reykjav??kur" ]
      }
    , { name = "Su??urnes"
      , code = "2"
      , unofficialNames = [ "Su??urnes" ]
      }
    , { name = "Vesturland"
      , code = "3"
      , unofficialNames = [ "Vesturland" ]
      }
    , { name = "Vestfir??ir"
      , code = "4"
      , unofficialNames = [ "Vestfir??ir" ]
      }
    , { name = "Nor??urland vestra"
      , code = "5"
      , unofficialNames = [ "Nor??urland vestra" ]
      }
    , { name = "Nor??urland eystra"
      , code = "6"
      , unofficialNames = [ "Nor??urland eystra" ]
      }
    , { name = "Austurland"
      , code = "7"
      , unofficialNames = [ "Austurland" ]
      }
    , { name = "Su??urland"
      , code = "8"
      , unofficialNames = [ "Su??urland" ]
      }
    ]


{-| -}
countryITSubdivisions : List Subdivision
countryITSubdivisions =
    [ { name = "Agrigento"
      , code = "AG"
      , unofficialNames = [ "Agrigento" ]
      }
    , { name = "Alessandria"
      , code = "AL"
      , unofficialNames = [ "Alessandria" ]
      }
    , { name = "Ancona"
      , code = "AN"
      , unofficialNames = [ "Ancona" ]
      }
    , { name = "Aosta"
      , code = "AO"
      , unofficialNames = [ "Aosta" ]
      }
    , { name = "Ascoli Piceno"
      , code = "AP"
      , unofficialNames = [ "Ascoli Piceno" ]
      }
    , { name = "L'Aquila"
      , code = "AQ"
      , unofficialNames = [ "L'Aquila" ]
      }
    , { name = "Arezzo"
      , code = "AR"
      , unofficialNames = [ "Arezzo" ]
      }
    , { name = "Asti"
      , code = "AT"
      , unofficialNames = [ "Asti" ]
      }
    , { name = "Avellino"
      , code = "AV"
      , unofficialNames = [ "Avellino" ]
      }
    , { name = "Bari"
      , code = "BA"
      , unofficialNames = [ "Bari" ]
      }
    , { name = "Bergamo"
      , code = "BG"
      , unofficialNames = [ "Bergamo" ]
      }
    , { name = "Biella"
      , code = "BI"
      , unofficialNames = [ "Biella" ]
      }
    , { name = "Belluno"
      , code = "BL"
      , unofficialNames = [ "Belluno" ]
      }
    , { name = "Benevento"
      , code = "BN"
      , unofficialNames = [ "Benevento" ]
      }
    , { name = "Bologna"
      , code = "BO"
      , unofficialNames = [ "Bologna" ]
      }
    , { name = "Brindisi"
      , code = "BR"
      , unofficialNames = [ "Brindisi" ]
      }
    , { name = "Brescia"
      , code = "BS"
      , unofficialNames = [ "Brescia" ]
      }
    , { name = "Barletta-Andria-Trani"
      , code = "BT"
      , unofficialNames = [ "Barletta-Andria-Trani" ]
      }
    , { name = "Bolzano"
      , code = "BZ"
      , unofficialNames = [ "Bolzano" ]
      }
    , { name = "Cagliari"
      , code = "CA"
      , unofficialNames = [ "Cagliari" ]
      }
    , { name = "Campobasso"
      , code = "CB"
      , unofficialNames = [ "Campobasso" ]
      }
    , { name = "Caserta"
      , code = "CE"
      , unofficialNames = [ "Caserta" ]
      }
    , { name = "Chieti"
      , code = "CH"
      , unofficialNames = [ "Chieti" ]
      }
    , { name = "Carbonia-Iglesias"
      , code = "CI"
      , unofficialNames = [ "Carbonia-Iglesias" ]
      }
    , { name = "Caltanissetta"
      , code = "CL"
      , unofficialNames = [ "Caltanissetta" ]
      }
    , { name = "Cuneo"
      , code = "CN"
      , unofficialNames = [ "Cuneo" ]
      }
    , { name = "Como"
      , code = "CO"
      , unofficialNames = [ "Como" ]
      }
    , { name = "Cremona"
      , code = "CR"
      , unofficialNames = [ "Cremona" ]
      }
    , { name = "Cosenza"
      , code = "CS"
      , unofficialNames = [ "Cosenza" ]
      }
    , { name = "Catania"
      , code = "CT"
      , unofficialNames = [ "Catania" ]
      }
    , { name = "Catanzaro"
      , code = "CZ"
      , unofficialNames = [ "Catanzaro" ]
      }
    , { name = "Enna"
      , code = "EN"
      , unofficialNames = [ "Enna" ]
      }
    , { name = "Ferrara"
      , code = "FE"
      , unofficialNames = [ "Ferrara" ]
      }
    , { name = "Foggia"
      , code = "FG"
      , unofficialNames = [ "Foggia" ]
      }
    , { name = "Firenze"
      , code = "FI"
      , unofficialNames = [ "Firenze" ]
      }
    , { name = "Forl??-Cesena"
      , code = "FC"
      , unofficialNames = [ "Forl??-Cesena" ]
      }
    , { name = "Fermo"
      , code = "FM"
      , unofficialNames = [ "Fermo" ]
      }
    , { name = "Frosinone"
      , code = "FR"
      , unofficialNames = [ "Frosinone" ]
      }
    , { name = "Genova"
      , code = "GE"
      , unofficialNames = [ "Genova" ]
      }
    , { name = "Gorizia"
      , code = "GO"
      , unofficialNames = [ "Gorizia" ]
      }
    , { name = "Grosseto"
      , code = "GR"
      , unofficialNames = [ "Grosseto" ]
      }
    , { name = "Imperia"
      , code = "IM"
      , unofficialNames = [ "Imperia" ]
      }
    , { name = "Isernia"
      , code = "IS"
      , unofficialNames = [ "Isernia" ]
      }
    , { name = "Crotone"
      , code = "KR"
      , unofficialNames = [ "Crotone" ]
      }
    , { name = "Lecco"
      , code = "LC"
      , unofficialNames = [ "Lecco" ]
      }
    , { name = "Lecce"
      , code = "LE"
      , unofficialNames = [ "Lecce" ]
      }
    , { name = "Livorno"
      , code = "LI"
      , unofficialNames = [ "Livorno" ]
      }
    , { name = "Lodi"
      , code = "LO"
      , unofficialNames = [ "Lodi" ]
      }
    , { name = "Latina"
      , code = "LT"
      , unofficialNames = [ "Latina" ]
      }
    , { name = "Lucca"
      , code = "LU"
      , unofficialNames = [ "Lucca" ]
      }
    , { name = "Monza e Brianza"
      , code = "MB"
      , unofficialNames = [ "Monza e Brianza" ]
      }
    , { name = "Macerata"
      , code = "MC"
      , unofficialNames = [ "Macerata" ]
      }
    , { name = "Messina"
      , code = "ME"
      , unofficialNames = [ "Messina" ]
      }
    , { name = "Milano"
      , code = "MI"
      , unofficialNames = [ "Milano" ]
      }
    , { name = "Mantova"
      , code = "MN"
      , unofficialNames = [ "Mantova" ]
      }
    , { name = "Modena"
      , code = "MO"
      , unofficialNames = [ "Modena" ]
      }
    , { name = "Massa-Carrara"
      , code = "MS"
      , unofficialNames = [ "Massa-Carrara" ]
      }
    , { name = "Matera"
      , code = "MT"
      , unofficialNames = [ "Matera" ]
      }
    , { name = "Napoli"
      , code = "NA"
      , unofficialNames = [ "Napoli" ]
      }
    , { name = "Novara"
      , code = "NO"
      , unofficialNames = [ "Novara" ]
      }
    , { name = "Nuoro"
      , code = "NU"
      , unofficialNames = [ "Nuoro" ]
      }
    , { name = "Ogliastra"
      , code = "OG"
      , unofficialNames = [ "Ogliastra" ]
      }
    , { name = "Oristano"
      , code = "OR"
      , unofficialNames = [ "Oristano" ]
      }
    , { name = "Olbia-Tempio"
      , code = "OT"
      , unofficialNames = [ "Olbia-Tempio" ]
      }
    , { name = "Palermo"
      , code = "PA"
      , unofficialNames = [ "Palermo" ]
      }
    , { name = "Piacenza"
      , code = "PC"
      , unofficialNames = [ "Piacenza" ]
      }
    , { name = "Padova"
      , code = "PD"
      , unofficialNames = [ "Padova" ]
      }
    , { name = "Pescara"
      , code = "PE"
      , unofficialNames = [ "Pescara" ]
      }
    , { name = "Perugia"
      , code = "PG"
      , unofficialNames = [ "Perugia" ]
      }
    , { name = "Pisa"
      , code = "PI"
      , unofficialNames = [ "Pisa" ]
      }
    , { name = "Pordenone"
      , code = "PN"
      , unofficialNames = [ "Pordenone" ]
      }
    , { name = "Prato"
      , code = "PO"
      , unofficialNames = [ "Prato" ]
      }
    , { name = "Parma"
      , code = "PR"
      , unofficialNames = [ "Parma" ]
      }
    , { name = "Pesaro e Urbino"
      , code = "PU"
      , unofficialNames = [ "Pesaro e Urbino" ]
      }
    , { name = "Pistoia"
      , code = "PT"
      , unofficialNames = [ "Pistoia" ]
      }
    , { name = "Pavia"
      , code = "PV"
      , unofficialNames = [ "Pavia" ]
      }
    , { name = "Potenza"
      , code = "PZ"
      , unofficialNames = [ "Potenza" ]
      }
    , { name = "Ravenna"
      , code = "RA"
      , unofficialNames = [ "Ravenna" ]
      }
    , { name = "Reggio Calabria"
      , code = "RC"
      , unofficialNames = [ "Reggio Calabria" ]
      }
    , { name = "Reggio Emilia"
      , code = "RE"
      , unofficialNames = [ "Reggio Emilia" ]
      }
    , { name = "Ragusa"
      , code = "RG"
      , unofficialNames = [ "Ragusa" ]
      }
    , { name = "Rieti"
      , code = "RI"
      , unofficialNames = [ "Rieti" ]
      }
    , { name = "Roma"
      , code = "RM"
      , unofficialNames = [ "Roma" ]
      }
    , { name = "Rimini"
      , code = "RN"
      , unofficialNames = [ "Rimini" ]
      }
    , { name = "Rovigo"
      , code = "RO"
      , unofficialNames = [ "Rovigo" ]
      }
    , { name = "Salerno"
      , code = "SA"
      , unofficialNames = [ "Salerno" ]
      }
    , { name = "Siena"
      , code = "SI"
      , unofficialNames = [ "Siena" ]
      }
    , { name = "Sondrio"
      , code = "SO"
      , unofficialNames = [ "Sondrio" ]
      }
    , { name = "La Spezia"
      , code = "SP"
      , unofficialNames = [ "La Spezia" ]
      }
    , { name = "Siracusa"
      , code = "SR"
      , unofficialNames = [ "Siracusa" ]
      }
    , { name = "Sassari"
      , code = "SS"
      , unofficialNames = [ "Sassari" ]
      }
    , { name = "Savona"
      , code = "SV"
      , unofficialNames = [ "Savona" ]
      }
    , { name = "Taranto"
      , code = "TA"
      , unofficialNames = [ "Taranto" ]
      }
    , { name = "Teramo"
      , code = "TE"
      , unofficialNames = [ "Teramo" ]
      }
    , { name = "Trento"
      , code = "TN"
      , unofficialNames = [ "Trento" ]
      }
    , { name = "Torino"
      , code = "TO"
      , unofficialNames = [ "Torino" ]
      }
    , { name = "Trapani"
      , code = "TP"
      , unofficialNames = [ "Trapani" ]
      }
    , { name = "Terni"
      , code = "TR"
      , unofficialNames = [ "Terni" ]
      }
    , { name = "Trieste"
      , code = "TS"
      , unofficialNames = [ "Trieste" ]
      }
    , { name = "Treviso"
      , code = "TV"
      , unofficialNames = [ "Treviso" ]
      }
    , { name = "Udine"
      , code = "UD"
      , unofficialNames = [ "Udine" ]
      }
    , { name = "Varese"
      , code = "VA"
      , unofficialNames = [ "Varese" ]
      }
    , { name = "Verbano-Cusio-Ossola"
      , code = "VB"
      , unofficialNames = [ "Verbano-Cusio-Ossola" ]
      }
    , { name = "Vercelli"
      , code = "VC"
      , unofficialNames = [ "Vercelli" ]
      }
    , { name = "Venezia"
      , code = "VE"
      , unofficialNames = [ "Venezia" ]
      }
    , { name = "Vicenza"
      , code = "VI"
      , unofficialNames = [ "Vicenza" ]
      }
    , { name = "Verona"
      , code = "VR"
      , unofficialNames = [ "Verona" ]
      }
    , { name = "Medio Campidano"
      , code = "VS"
      , unofficialNames = [ "Medio Campidano" ]
      }
    , { name = "Viterbo"
      , code = "VT"
      , unofficialNames = [ "Viterbo" ]
      }
    , { name = "Vibo Valentia"
      , code = "VV"
      , unofficialNames = [ "Vibo Valentia" ]
      }
    ]


{-| -}
countryJESubdivisions : List Subdivision
countryJESubdivisions =
    [ { name = "Saint Clement"
      , code = "1"
      , unofficialNames = [ "Saint Clement" ]
      }
    , { name = "Saint Saviour"
      , code = "2"
      , unofficialNames = [ "Saint Saviour" ]
      }
    , { name = "Saint Brelade"
      , code = "3"
      , unofficialNames = [ "Saint Brelade" ]
      }
    , { name = "Grouville"
      , code = "4"
      , unofficialNames = [ "Grouville" ]
      }
    , { name = "Saint Mary"
      , code = "5"
      , unofficialNames = [ "Saint Mary" ]
      }
    , { name = "Saint Lawrence"
      , code = "6"
      , unofficialNames = [ "Saint Lawrence" ]
      }
    , { name = "Saint Peter"
      , code = "7"
      , unofficialNames = [ "Saint Peter" ]
      }
    , { name = "Saint Ouen"
      , code = "8"
      , unofficialNames = [ "Saint Ouen" ]
      }
    , { name = "Saint John"
      , code = "9"
      , unofficialNames = [ "Saint John" ]
      }
    , { name = "Trinity"
      , code = "10"
      , unofficialNames = [ "Trinity" ]
      }
    , { name = "Saint Martin"
      , code = "11"
      , unofficialNames = [ "Saint Martin" ]
      }
    , { name = "Saint Helier"
      , code = "12"
      , unofficialNames = [ "Saint Helier" ]
      }
    ]


{-| -}
countryJMSubdivisions : List Subdivision
countryJMSubdivisions =
    [ { name = "Kingston"
      , code = "01"
      , unofficialNames = [ "Kingston" ]
      }
    , { name = "Saint Andrew"
      , code = "02"
      , unofficialNames = [ "Saint Andrew" ]
      }
    , { name = "Saint Thomas"
      , code = "03"
      , unofficialNames = [ "Saint Thomas" ]
      }
    , { name = "Portland"
      , code = "04"
      , unofficialNames = [ "Portland" ]
      }
    , { name = "Saint Mary"
      , code = "05"
      , unofficialNames = [ "Saint Mary" ]
      }
    , { name = "Saint Ann"
      , code = "06"
      , unofficialNames = [ "Saint Ann" ]
      }
    , { name = "Trelawny"
      , code = "07"
      , unofficialNames = [ "Trelawny" ]
      }
    , { name = "Saint James"
      , code = "08"
      , unofficialNames = [ "Saint James" ]
      }
    , { name = "Hanover"
      , code = "09"
      , unofficialNames = [ "Hanover" ]
      }
    , { name = "Westmoreland"
      , code = "10"
      , unofficialNames = [ "Westmoreland" ]
      }
    , { name = "Saint Elizabeth"
      , code = "11"
      , unofficialNames = [ "Saint Elizabeth" ]
      }
    , { name = "Manchester"
      , code = "12"
      , unofficialNames = [ "Manchester" ]
      }
    , { name = "Clarendon"
      , code = "13"
      , unofficialNames = [ "Clarendon" ]
      }
    , { name = "Saint Catherine"
      , code = "14"
      , unofficialNames = [ "Saint Catherine" ]
      }
    ]


{-| -}
countryJOSubdivisions : List Subdivision
countryJOSubdivisions =
    [ { name = "Ajlun"
      , code = "AJ"
      , unofficialNames = [ "Ajloan", "Ajlun" ]
      }
    , { name = "Amman"
      , code = "AM"
      , unofficialNames = [ "Amman" ]
      }
    , { name = "Aqaba"
      , code = "AQ"
      , unofficialNames = [ "Akaba", "Aqaba", "Aqqaba", "al-Aqaba" ]
      }
    , { name = "At Tafilah"
      , code = "AT"
      , unofficialNames = [ "Tafiela", "Tafileh", "at-Tafilah" ]
      }
    , { name = "Az Zarqa'"
      , code = "AZ"
      , unofficialNames = [ "Zarka", "Zarqa", "Zerka" ]
      }
    , { name = "Al Balqa'"
      , code = "BA"
      , unofficialNames = [ "Al Balqa'" ]
      }
    , { name = "Irbid"
      , code = "IR"
      , unofficialNames = [ "Irbit" ]
      }
    , { name = "Jarash"
      , code = "JA"
      , unofficialNames = [ "Jarash", "Jerash" ]
      }
    , { name = "Al Karak"
      , code = "KA"
      , unofficialNames = [ "Karak", "Kerak" ]
      }
    , { name = "Al Mafraq"
      , code = "MA"
      , unofficialNames = [ "Mafraq" ]
      }
    , { name = "Madaba"
      , code = "MD"
      , unofficialNames = [ "Madaba", "Ma??daba", "Ma??dab??" ]
      }
    , { name = "Ma`an"
      , code = "MN"
      , unofficialNames = [ "Maan", "Ma??an" ]
      }
    ]


{-| -}
countryJPSubdivisions : List Subdivision
countryJPSubdivisions =
    [ { name = "Hokkaido"
      , code = "01"
      , unofficialNames = [ "Hokkaid??", "Hokkaido" ]
      }
    , { name = "Aomori"
      , code = "02"
      , unofficialNames = [ "Aomori" ]
      }
    , { name = "Iwate"
      , code = "03"
      , unofficialNames = [ "Iwate" ]
      }
    , { name = "Miyagi"
      , code = "04"
      , unofficialNames = [ "Miyagi" ]
      }
    , { name = "Akita"
      , code = "05"
      , unofficialNames = [ "Akita" ]
      }
    , { name = "Yamagata"
      , code = "06"
      , unofficialNames = [ "Yamagata" ]
      }
    , { name = "Fukushima"
      , code = "07"
      , unofficialNames = [ "Hukusima", "Fukushima" ]
      }
    , { name = "Ibaraki"
      , code = "08"
      , unofficialNames = [ "Ibaraki" ]
      }
    , { name = "Tochigi"
      , code = "09"
      , unofficialNames = [ "Totigi", "Tochigi" ]
      }
    , { name = "Gunma"
      , code = "10"
      , unofficialNames = [ "Gunma" ]
      }
    , { name = "Saitama"
      , code = "11"
      , unofficialNames = [ "Saitama" ]
      }
    , { name = "Chiba"
      , code = "12"
      , unofficialNames = [ "Tiba", "Chiba" ]
      }
    , { name = "Tokyo"
      , code = "13"
      , unofficialNames = [ "Tokyo", "Tokio" ]
      }
    , { name = "Kanagawa"
      , code = "14"
      , unofficialNames = [ "Kanagawa" ]
      }
    , { name = "Niigata"
      , code = "15"
      , unofficialNames = [ "Niigata" ]
      }
    , { name = "Toyama"
      , code = "16"
      , unofficialNames = [ "Toyama" ]
      }
    , { name = "Ishikawa"
      , code = "17"
      , unofficialNames = [ "Isikawa", "Ishikawa" ]
      }
    , { name = "Fukui"
      , code = "18"
      , unofficialNames = [ "Hukui", "Fukui" ]
      }
    , { name = "Yamanashi"
      , code = "19"
      , unofficialNames = [ "Yamanasi", "Yamanashi" ]
      }
    , { name = "Nagano"
      , code = "20"
      , unofficialNames = [ "Nagano" ]
      }
    , { name = "Gifu"
      , code = "21"
      , unofficialNames = [ "Gihu", "Gifu" ]
      }
    , { name = "Shizuoka"
      , code = "22"
      , unofficialNames = [ "Sizuoka", "Shizuoka" ]
      }
    , { name = "Aichi"
      , code = "23"
      , unofficialNames = [ "Aiti", "Aichi" ]
      }
    , { name = "Mie"
      , code = "24"
      , unofficialNames = [ "Mie" ]
      }
    , { name = "Shiga"
      , code = "25"
      , unofficialNames = [ "Siga", "Shiga" ]
      }
    , { name = "Kyoto"
      , code = "26"
      , unofficialNames = [ "Kyoto" ]
      }
    , { name = "Osaka"
      , code = "27"
      , unofficialNames = [ "Osaka" ]
      }
    , { name = "Hyogo"
      , code = "28"
      , unofficialNames = [ "Hyogo" ]
      }
    , { name = "Nara"
      , code = "29"
      , unofficialNames = [ "Nara" ]
      }
    , { name = "Wakayama"
      , code = "30"
      , unofficialNames = [ "Wakayama" ]
      }
    , { name = "Tottori"
      , code = "31"
      , unofficialNames = [ "Tottori" ]
      }
    , { name = "Shimane"
      , code = "32"
      , unofficialNames = [ "Simane", "Shimane" ]
      }
    , { name = "Okayama"
      , code = "33"
      , unofficialNames = [ "Okayama" ]
      }
    , { name = "Hiroshima"
      , code = "34"
      , unofficialNames = [ "Hirosima", "Hiroshima" ]
      }
    , { name = "Yamaguchi"
      , code = "35"
      , unofficialNames = [ "Yamaguti", "Yamaguchi" ]
      }
    , { name = "Tokushima"
      , code = "36"
      , unofficialNames = [ "Tokusima", "Tokushima" ]
      }
    , { name = "Kagawa"
      , code = "37"
      , unofficialNames = [ "Kagawa" ]
      }
    , { name = "Ehime"
      , code = "38"
      , unofficialNames = [ "Ehime" ]
      }
    , { name = "Kochi"
      , code = "39"
      , unofficialNames = [ "Kochi" ]
      }
    , { name = "Fukuoka"
      , code = "40"
      , unofficialNames = [ "Hukuoka", "Fukuoka" ]
      }
    , { name = "Saga"
      , code = "41"
      , unofficialNames = [ "Saga" ]
      }
    , { name = "Nagasaki"
      , code = "42"
      , unofficialNames = [ "Nagasaki" ]
      }
    , { name = "Kumamoto"
      , code = "43"
      , unofficialNames = [ "Kumamoto" ]
      }
    , { name = "Oita"
      , code = "44"
      , unofficialNames = [ "Oita" ]
      }
    , { name = "Miyazaki"
      , code = "45"
      , unofficialNames = [ "Miyazaki" ]
      }
    , { name = "Kagoshima"
      , code = "46"
      , unofficialNames = [ "Kagosima", "Kagoshima" ]
      }
    , { name = "Okinawa"
      , code = "47"
      , unofficialNames = [ "Okinawa" ]
      }
    ]


{-| -}
countryKESubdivisions : List Subdivision
countryKESubdivisions =
    [ { name = "Nairobi Municipality"
      , code = "110"
      , unofficialNames = [ "Nairobi Municipality" ]
      }
    , { name = "Central"
      , code = "200"
      , unofficialNames = [ "Central" ]
      }
    , { name = "Coast"
      , code = "300"
      , unofficialNames = [ "Coast" ]
      }
    , { name = "Eastern"
      , code = "400"
      , unofficialNames = [ "Eastern" ]
      }
    , { name = "North-Eastern"
      , code = "500"
      , unofficialNames = [ "North-Eastern" ]
      }
    , { name = "Nyanza"
      , code = "600"
      , unofficialNames = [ "Nyanza" ]
      }
    , { name = "Rift Valley"
      , code = "700"
      , unofficialNames = [ "Rift Valley" ]
      }
    , { name = "Western"
      , code = "900"
      , unofficialNames = [ "Western" ]
      }
    ]


{-| -}
countryKGSubdivisions : List Subdivision
countryKGSubdivisions =
    [ { name = "Batken"
      , code = "B"
      , unofficialNames = [ "Batken" ]
      }
    , { name = "Ch??"
      , code = "C"
      , unofficialNames = [ "Chu", "Chui", "Chuy", "????y" ]
      }
    , { name = "Bishkek"
      , code = "GB"
      , unofficialNames = [ "Bishkek", "Kenesh Bishkek" ]
      }
    , { name = "Jalal-Abad"
      , code = "J"
      , unofficialNames = [ "Jalal-Abad" ]
      }
    , { name = "Naryn"
      , code = "N"
      , unofficialNames = [ "Naryn" ]
      }
    , { name = "Osh"
      , code = "O"
      , unofficialNames = [ "Osh" ]
      }
    , { name = "Talas"
      , code = "T"
      , unofficialNames = [ "Talas" ]
      }
    , { name = "Ysyk-K??l"
      , code = "Y"
      , unofficialNames = [ "Balikchi", "Balykchy", "Bal??k????", "Issyk-Kul" ]
      }
    ]


{-| -}
countryKHSubdivisions : List Subdivision
countryKHSubdivisions =
    [ { name = "Banteay Mean Chey [B??nt??ay M??anchey]"
      , code = "1"
      , unofficialNames = [ "Banteay Mean Chey [B??nt??ay M??anchey]", "banteay meanchey", "b.chey", "bm", "b.m" ]
      }
    , { name = "Kracheh [Kr??ch??h]"
      , code = "10"
      , unofficialNames = [ "Krati??", "Kratie", "kr.ch", "kr", "k.r" ]
      }
    , { name = "Mondol Kiri [M??nd??l Kiri]"
      , code = "11"
      , unofficialNames = [ "Mondolkiri", "Mondulkiri", "m.ri", "mk", "m.k" ]
      }
    , { name = "Phnom Penh [Phnum P??nh]"
      , code = "12"
      , unofficialNames = [ "Phnom Penh", "pp", "p.p" ]
      }
    , { name = "Preah Vihear [Preah Vih??ar]"
      , code = "13"
      , unofficialNames = [ "Preah Vihear [Preah Vih??ar]", "pr.h", "ph", "p.h" ]
      }
    , { name = "Prey Veaeng [Prey V??ng]"
      , code = "14"
      , unofficialNames = [ "Prey V??ng", "Prey Veng", "pr.v", "pv", "p.v" ]
      }
    , { name = "Pousaat [Pouthisat]"
      , code = "15"
      , unofficialNames = [ "Po??th??s??t", "Pursat", "p.s", "ps" ]
      }
    , { name = "Rotanak Kiri [R??t??n??kiri]"
      , code = "16"
      , unofficialNames = [ "Ratanakiri", "Rotanokiri", "R??tanah Kiri", "r.r", "rr", "rk", "r.k" ]
      }
    , { name = "Siem Reab [Siemr??ab]"
      , code = "17"
      , unofficialNames = [ "Siem Reap", "Siemr??ab", "s.r", "sr" ]
      }
    , { name = "Krong Preah Sihanouk [Krong Preah Sihanouk]"
      , code = "18"
      , unofficialNames = [ "Preah Seih??nu", "Sihanoukville", "Kompong Som", "Kampong Som", "Kompong Saom", "Kampong Saom", "k.som", "k.saom", "s.v" ]
      }
    , { name = "Stueng Traeng"
      , code = "19"
      , unofficialNames = [ "Stoeng Tr??ng", "Stung Treng", "s.t", "st" ]
      }
    , { name = "Baat Dambang [Batd??mb??ng]"
      , code = "2"
      , unofficialNames = [ "Batd??mb??ng", "Battambang", "bb", "b.b" ]
      }
    , { name = "Svaay Rieng [Svay Rieng]"
      , code = "20"
      , unofficialNames = [ "Svaay Rieng [Svay Rieng]", "svay rieng", "sv.r", "svr" ]
      }
    , { name = "Taakaev [Tak??v]"
      , code = "21"
      , unofficialNames = [ "Takeo", "Tak??v", "tk", "t.k" ]
      }
    , { name = "Otdar Mean Chey [Otd??r M??anchey] "
      , code = "22"
      , unofficialNames = [ "Otdar Mean Chey [Otd??r M??anchey] ", "Oddar Meanchey", "o.chey", "om", "o.m" ]
      }
    , { name = "Krong Kep [Krong K??b]"
      , code = "23"
      , unofficialNames = [ "Krong Kep [Krong K??b]", "Kep" ]
      }
    , { name = "Krong Pailin [Krong Pailin]"
      , code = "24"
      , unofficialNames = [ "Krong Pailin [Krong Pailin]", "Pailin", "pl", "p.l" ]
      }
    , { name = "Kampong Chaam [K??mp??ng Cham]"
      , code = "3"
      , unofficialNames = [ "Kompong Cham", "Kompong Chaam", "Kampong Cham", "k.cham", "kc", "k.c" ]
      }
    , { name = "Kampong Chhnang [K??mp??ng Chhnang]"
      , code = "4"
      , unofficialNames = [ "Kompong Chhnang", "k.chhnang", "kn", "k.n" ]
      }
    , { name = "Kampong Spueu [K??mp??ng Sp??]"
      , code = "5"
      , unofficialNames = [ "Kompong Speu", "Kompong Spoe", "Kampong Speu", "Kampong Spoe", "k.speu", "ks", "k.s" ]
      }
    , { name = "Kampong Thum [K??mp??ng Thum]"
      , code = "6"
      , unofficialNames = [ "Kompong Thom", "Kompong Thum", "Kampong Thom", "Kampong Thum", "k.thom", "kt", "k.t" ]
      }
    , { name = "Kampot [K??mp??t]"
      , code = "7"
      , unofficialNames = [ "Kampot [K??mp??t]", "k.pot", "kp", "k.p" ]
      }
    , { name = "Kandaal [K??ndal]"
      , code = "8"
      , unofficialNames = [ "Kandaal [K??ndal]", "Kandal", "Kondal", "kd", "k.d" ]
      }
    , { name = "Kaoh Kong [Ka??h Kong]"
      , code = "9"
      , unofficialNames = [ "Koh Kong", "kk", "k.k" ]
      }
    ]


{-| -}
countryKISubdivisions : List Subdivision
countryKISubdivisions =
    [ { name = "Gilbert Islands"
      , code = "G"
      , unofficialNames = [ "Gilbert Islands" ]
      }
    , { name = "Line Islands"
      , code = "L"
      , unofficialNames = [ "Line Islands" ]
      }
    , { name = "Phoenix Islands"
      , code = "P"
      , unofficialNames = [ "Abariringa", "Canton", "Gardner", "Hull", "Kanton", "Kemins", "Manra", "Mary Island", "Nikumaroro", "Orona", "Phoenix", "Rawaki", "Sydney" ]
      }
    ]


{-| -}
countryKMSubdivisions : List Subdivision
countryKMSubdivisions =
    [ { name = "Anjouan"
      , code = "A"
      , unofficialNames = [ "Anjouan", "Ndzuwani", "Nzwani" ]
      }
    , { name = "Grande Comore"
      , code = "G"
      , unofficialNames = [ "Grande Comore", "Njaz??dja" ]
      }
    , { name = "Moh??li"
      , code = "M"
      , unofficialNames = [ "Mohilla", "Moh??li", "Moili" ]
      }
    ]


{-| -}
countryKNSubdivisions : List Subdivision
countryKNSubdivisions =
    [ { name = "Christ Church Nichola Town"
      , code = "01"
      , unofficialNames = [ "Christ Church Nichola Town" ]
      }
    , { name = "Saint Anne Sandy Point"
      , code = "02"
      , unofficialNames = [ "Saint Anne Sandy Point" ]
      }
    , { name = "Saint George Basseterre"
      , code = "03"
      , unofficialNames = [ "Saint George Basseterre" ]
      }
    , { name = "Saint George Gingerland"
      , code = "04"
      , unofficialNames = [ "Saint George Gingerland" ]
      }
    , { name = "Saint James Windward"
      , code = "05"
      , unofficialNames = [ "Saint James Windward" ]
      }
    , { name = "Saint John Capisterre"
      , code = "06"
      , unofficialNames = [ "Saint John Capisterre" ]
      }
    , { name = "Saint John Figtree"
      , code = "07"
      , unofficialNames = [ "Saint John Figtree" ]
      }
    , { name = "Saint Mary Cayon"
      , code = "08"
      , unofficialNames = [ "Saint Mary Cayon" ]
      }
    , { name = "Saint Paul Capisterre"
      , code = "09"
      , unofficialNames = [ "Saint Paul Capisterre" ]
      }
    , { name = "Saint Paul Charlestown"
      , code = "10"
      , unofficialNames = [ "Saint Paul Charlestown" ]
      }
    , { name = "Saint Peter Basseterre"
      , code = "11"
      , unofficialNames = [ "Saint Peter Basseterre" ]
      }
    , { name = "Saint Thomas Lowland"
      , code = "12"
      , unofficialNames = [ "Saint Thomas Lowland" ]
      }
    , { name = "Saint Thomas Middle Island"
      , code = "13"
      , unofficialNames = [ "Saint Thomas Middle Island" ]
      }
    , { name = "Trinity Palmetto Point"
      , code = "15"
      , unofficialNames = [ "Trinity Palmetto Point" ]
      }
    ]


{-| -}
countryKPSubdivisions : List Subdivision
countryKPSubdivisions =
    [ { name = "Chagang-do"
      , code = "CHA"
      , unofficialNames = [ "Chagang", "Jagang" ]
      }
    , { name = "Hamgyongbuk-do"
      , code = "HAB"
      , unofficialNames = [ "Hamgyongbukto", "North Hamgyong" ]
      }
    , { name = "Hamgyongnam-do"
      , code = "HAN"
      , unofficialNames = [ "Hamgyongnamdo", "South Hamgyong" ]
      }
    , { name = "Hwanghaebuk-do"
      , code = "HWB"
      , unofficialNames = [ "North Hwanghae" ]
      }
    , { name = "Hwanghaenam-do"
      , code = "HWN"
      , unofficialNames = [ "South Hwanghae" ]
      }
    , { name = "Kaesong-si"
      , code = "KAE"
      , unofficialNames = [ "Kaesong-si" ]
      }
    , { name = "Kangwon-do"
      , code = "KAN"
      , unofficialNames = [ "Gangweon", "Kangweon", "Kangwon" ]
      }
    , { name = "Najin Sonbong-si"
      , code = "NAJ"
      , unofficialNames = [ "Najin Sonbong-si" ]
      }
    , { name = "Nampo-si"
      , code = "NAM"
      , unofficialNames = [ "Nampo-si" ]
      }
    , { name = "Pyonganbuk-do"
      , code = "PYB"
      , unofficialNames = [ "North Phyongan", "North Pyongan", "Pyonganbukto" ]
      }
    , { name = "Pyongannam-do"
      , code = "PYN"
      , unofficialNames = [ "Pyongannamdo", "South Phyongan", "South Pyongan" ]
      }
    , { name = "Pyongyang-si"
      , code = "PYO"
      , unofficialNames = [ "Pyongyang" ]
      }
    , { name = "Rason"
      , code = "X1~"
      , unofficialNames = [ "Rason" ]
      }
    , { name = "Yanggang-do"
      , code = "YAN"
      , unofficialNames = [ "Ryanggang" ]
      }
    ]


{-| -}
countryKRSubdivisions : List Subdivision
countryKRSubdivisions =
    [ { name = "Seoul Teugbyeolsi [Seoul-T'ukpyolshi]"
      , code = "11"
      , unofficialNames = [ "Seoul", "Soul" ]
      }
    , { name = "Busan Gwang'yeogsi [Pusan-Kwangyokshi]"
      , code = "26"
      , unofficialNames = [ "Busan" ]
      }
    , { name = "Daegu Gwang'yeogsi [Taegu-Kwangyokshi]"
      , code = "27"
      , unofficialNames = [ "Daegu" ]
      }
    , { name = "Incheon Gwang'yeogsi [Inch'n-Kwangyokshi]"
      , code = "28"
      , unofficialNames = [ "Incheon", "Inchon" ]
      }
    , { name = "Gwangju Gwang'yeogsi [Kwangju-Kwangyokshi]"
      , code = "29"
      , unofficialNames = [ "Gwangju" ]
      }
    , { name = "Daejeon Gwang'yeogsi [Taejon-Kwangyokshi]"
      , code = "30"
      , unofficialNames = [ "Daejeon", "Taejeon", "Taejon" ]
      }
    , { name = "Ulsan Gwang'yeogsi [Ulsan-Kwangyokshi]"
      , code = "31"
      , unofficialNames = [ "Ulsan Gwang'yeogsi [Ulsan-Kwangyokshi]" ]
      }
    , { name = "Gyeonggido [Kyonggi-do]"
      , code = "41"
      , unofficialNames = [ "Gyeonggido [Kyonggi-do]" ]
      }
    , { name = "Gang'weondo [Kang-won-do]"
      , code = "42"
      , unofficialNames = [ "Kangwon" ]
      }
    , { name = "Chungcheongbugdo [Ch'ungch'ongbuk-do]"
      , code = "43"
      , unofficialNames = [ "North Chungchong" ]
      }
    , { name = "Chungcheongnamdo [Ch'ungch'ongnam-do]"
      , code = "44"
      , unofficialNames = [ "South Chungchong" ]
      }
    , { name = "Jeonrabugdo[Chollabuk-do]"
      , code = "45"
      , unofficialNames = [ "Chollapuk", "North Cholla" ]
      }
    , { name = "Jeonranamdo [Chollanam-do]"
      , code = "46"
      , unofficialNames = [ "South Cholla" ]
      }
    , { name = "Gyeongsangbugdo [Kyongsangbuk-do]"
      , code = "47"
      , unofficialNames = [ "North Kyongsang" ]
      }
    , { name = "Gyeongsangnamdo [Kyongsangnam-do]"
      , code = "48"
      , unofficialNames = [ "Gyeongsangnamdo/ Kyongsang-namdo/ South Kyongsang" ]
      }
    , { name = "Jejudo [Cheju-do]"
      , code = "49"
      , unofficialNames = [ "Jeju", "Quelpart" ]
      }
    ]


{-| -}
countryKWSubdivisions : List Subdivision
countryKWSubdivisions =
    [ { name = "Al Ahmadi"
      , code = "AH"
      , unofficialNames = [ "Ahmadi" ]
      }
    , { name = "Al Farwaniyah"
      , code = "FA"
      , unofficialNames = [ "Farwaniyah" ]
      }
    , { name = "Hawalli"
      , code = "HA"
      , unofficialNames = [ "Hawalli" ]
      }
    , { name = "Al Jahrah"
      , code = "JA"
      , unofficialNames = [ "Al Jahra", "Jahra", "Jahrah", "al-Jahra", "al-Jahra??" ]
      }
    , { name = "Al Kuwayt"
      , code = "KU"
      , unofficialNames = [ "Capital", "Koweit", "Kuwait", "Kuwayt", "al-Kuwayt" ]
      }
    , { name = "Mubarak al-Kabir"
      , code = "MU"
      , unofficialNames = [ "Mubarak al-Kabir" ]
      }
    ]


{-| -}
countryKYSubdivisions : List Subdivision
countryKYSubdivisions =
    [ { name = "Bodden Town"
      , code = "01~"
      , unofficialNames = [ "Bodden Town" ]
      }
    , { name = "Cayman Brac"
      , code = "02~"
      , unofficialNames = [ "Cayman Brac" ]
      }
    , { name = "East End"
      , code = "03~"
      , unofficialNames = [ "East End" ]
      }
    , { name = "George Town"
      , code = "04~"
      , unofficialNames = [ "George Town" ]
      }
    , { name = "North Side"
      , code = "06~"
      , unofficialNames = [ "North Side" ]
      }
    , { name = "West Bay"
      , code = "07~"
      , unofficialNames = [ "West Bay" ]
      }
    ]


{-| -}
countryKZSubdivisions : List Subdivision
countryKZSubdivisions =
    [ { name = "Aqmola oblysy"
      , code = "AKM"
      , unofficialNames = [ "Akmola", "Akmolinsk", "A??mola", "Celinograd", "Tselinograd" ]
      }
    , { name = "Aqt??be oblysy"
      , code = "AKT"
      , unofficialNames = [ "Aktjubinsk", "Aktyubinsk", "Akt??be", "Akt??ubinsk" ]
      }
    , { name = "Almaty"
      , code = "ALA"
      , unofficialNames = [ "Almati Oblasti", "Almaty Oblasty", "Almat??" ]
      }
    , { name = "Almaty oblysy"
      , code = "ALM"
      , unofficialNames = [ "Almaty oblysy" ]
      }
    , { name = "Astana"
      , code = "AST"
      , unofficialNames = [ "Astana" ]
      }
    , { name = "Atyrau oblysy"
      , code = "ATY"
      , unofficialNames = [ "Ateransk", "Aterau", "Atirau", "At??rau", "Gurjev", "Guryev" ]
      }
    , { name = "Bayqongyr"
      , code = "BAY"
      , unofficialNames = [ "Bayqongyr" ]
      }
    , { name = "Qaraghandy oblysy"
      , code = "KAR"
      , unofficialNames = [ "Karaganda", "Karagandi", "Karagandy", "Qaraghandy", "??aragand??" ]
      }
    , { name = "Qostanay oblysy"
      , code = "KUS"
      , unofficialNames = [ "Kostanay", "Kustanai", "Kustanaj", "Kustanay", "??ostanay" ]
      }
    , { name = "Qyzylorda oblysy"
      , code = "KZY"
      , unofficialNames = [ "Ak-Mechet", "Kizilorda", "Kyzyl-Orda", "Kyzylorda", "Kzyl-Orda", "Qyzylorda", "????z??lorda" ]
      }
    , { name = "Mangghystau oblysy"
      , code = "MAN"
      , unofficialNames = [ "Mangghystau", "Mangistau", "Mangkistau", "Mangqystau" ]
      }
    , { name = "Pavlodar oblysy"
      , code = "PAV"
      , unofficialNames = [ "Pavlodar oblysy" ]
      }
    , { name = "Solt??stik Qazaqstan oblysy"
      , code = "SEV"
      , unofficialNames = [ "Northern Kazakhstan", "Solt??stik Kazakstan", "Solt??stik Qazaqstan" ]
      }
    , { name = "Shyghys Qazaqstan oblysy"
      , code = "VOS"
      , unofficialNames = [ "Eastern Kazakhstan", "Shyghys Qazaqstan", "Sigis Kazakstan" ]
      }
    , { name = "Ongt??stik Qazaqstan oblysy"
      , code = "YUZ"
      , unofficialNames = [ "Ongt??stik Qazaqstan", "Ongt??st??k Kazakstan", "Southern Kazakhstan" ]
      }
    , { name = "Batys Qazaqstan oblysy"
      , code = "ZAP"
      , unofficialNames = [ "Batis Kazakstan", "Batys Qazaqstan", "Uralsk", "Uralskaya Oblast", "Western Kazakhstan" ]
      }
    , { name = "Zhambyl oblysy"
      , code = "ZHA"
      , unofficialNames = [ "Aulie-Ata", "Auliye-Ata", "Cambil", "Camb??l", "Djambul", "Dzhambul", "Zhambul", "Zhambyl", "Zhamb??l" ]
      }
    ]


{-| -}
countryLASubdivisions : List Subdivision
countryLASubdivisions =
    [ { name = "Attapu [Attopeu]"
      , code = "AT"
      , unofficialNames = [ "Attapu", "Attopei", "Attopeu" ]
      }
    , { name = "Bok??o"
      , code = "BK"
      , unofficialNames = [ "Bok??o" ]
      }
    , { name = "Bolikhamxai [Borikhane]"
      , code = "BL"
      , unofficialNames = [ "Bolikhamsai", "Bolikhamxai", "Borikhamxai" ]
      }
    , { name = "Champasak [Champassak]"
      , code = "CH"
      , unofficialNames = [ "Champasack", "Champassak" ]
      }
    , { name = "Houaphan"
      , code = "HO"
      , unofficialNames = [ "Houaphan" ]
      }
    , { name = "Khammouan"
      , code = "KH"
      , unofficialNames = [ "Khammouan" ]
      }
    , { name = "Louang Namtha"
      , code = "LM"
      , unofficialNames = [ "Louang Namtha", "Louangnamtha", "Luang Namtha", "Luong Nam Tha" ]
      }
    , { name = "Louangphabang [Louang Prabang]"
      , code = "LP"
      , unofficialNames = [ "Louang Phrabang", "Louang Prabang", "Louangphrabang", "Luang Phrabang" ]
      }
    , { name = "Oud??mxai [Oudomsai]"
      , code = "OU"
      , unofficialNames = [ "Oudomsai", "Oudomsay" ]
      }
    , { name = "Ph??ngsali [Phong Saly]"
      , code = "PH"
      , unofficialNames = [ "Phongsali" ]
      }
    , { name = "Salavan [Saravane]"
      , code = "SL"
      , unofficialNames = [ "Saravane" ]
      }
    , { name = "Savannakh??t"
      , code = "SV"
      , unofficialNames = [ "Savannakh??t" ]
      }
    , { name = "Vientiane"
      , code = "VI"
      , unofficialNames = [ "Vientiane Province" ]
      }
    , { name = "Vientiane Prefecture"
      , code = "VT"
      , unofficialNames = [ "Viangchan City", "Vientiane City" ]
      }
    , { name = "Xaignabouli [Sayaboury]"
      , code = "XA"
      , unofficialNames = [ "Sayaboury", "Sayabury", "Xaignaboury" ]
      }
    , { name = "X??kong [S??kong]"
      , code = "XE"
      , unofficialNames = [ "X??kong" ]
      }
    , { name = "Xiangkhoang [Xieng Khouang]"
      , code = "XI"
      , unofficialNames = [ "Xiang Khouang", "Xiangkhouang", "Xiangkhuang", "Xieng Khouang" ]
      }
    , { name = "Xais??mboun"
      , code = "XN"
      , unofficialNames = [ "Xais??mboun" ]
      }
    ]


{-| -}
countryLBSubdivisions : List Subdivision
countryLBSubdivisions =
    [ { name = "Loubn??ne ech Chem??li"
      , code = "AS"
      , unofficialNames = [ "Ash Shamal", "North" ]
      }
    , { name = "Beirut"
      , code = "BA"
      , unofficialNames = [ "Bayrout", "Bayrut", "Beirut", "Beyrout", "Beyrouth", "Beyr??t" ]
      }
    , { name = "El B??qaa"
      , code = "BI"
      , unofficialNames = [ "Bekaa" ]
      }
    , { name = "Loubn??ne ej Jno??bi"
      , code = "JA"
      , unofficialNames = [ "South" ]
      }
    , { name = "Jabal Loubn??ne"
      , code = "JL"
      , unofficialNames = [ "Mount Lebanon" ]
      }
    , { name = "Nabat??y??"
      , code = "NA"
      , unofficialNames = [ "Nabatiyeh" ]
      }
    ]


{-| -}
countryLCSubdivisions : List Subdivision
countryLCSubdivisions =
    []


{-| -}
countryLISubdivisions : List Subdivision
countryLISubdivisions =
    [ { name = "Balzers"
      , code = "01"
      , unofficialNames = [ "Balzers" ]
      }
    , { name = "Eschen"
      , code = "02"
      , unofficialNames = [ "Eschen" ]
      }
    , { name = "Gamprin"
      , code = "03"
      , unofficialNames = [ "Gamprin" ]
      }
    , { name = "Mauren"
      , code = "04"
      , unofficialNames = [ "Mauren" ]
      }
    , { name = "Planken"
      , code = "05"
      , unofficialNames = [ "Planken" ]
      }
    , { name = "Ruggell"
      , code = "06"
      , unofficialNames = [ "Ruggel" ]
      }
    , { name = "Schaan"
      , code = "07"
      , unofficialNames = [ "Schaan" ]
      }
    , { name = "Schellenberg"
      , code = "08"
      , unofficialNames = [ "Schellenberg" ]
      }
    , { name = "Triesen"
      , code = "09"
      , unofficialNames = [ "Triesen" ]
      }
    , { name = "Triesenberg"
      , code = "10"
      , unofficialNames = [ "Triesenberg" ]
      }
    , { name = "Vaduz"
      , code = "11"
      , unofficialNames = [ "Vaduz" ]
      }
    ]


{-| -}
countryLKSubdivisions : List Subdivision
countryLKSubdivisions =
    [ { name = "Colombo"
      , code = "11"
      , unofficialNames = [ "Kolamba", "Colombo", "Colombo" ]
      }
    , { name = "Gampaha"
      , code = "12"
      , unofficialNames = [ "Gampaha" ]
      }
    , { name = "Kalutara"
      , code = "13"
      , unofficialNames = [ "Kalutara" ]
      }
    , { name = "Kandy"
      , code = "21"
      , unofficialNames = [ "Mahe Nuwara", "Maha Nuwara" ]
      }
    , { name = "Matale"
      , code = "22"
      , unofficialNames = [ "Matale" ]
      }
    , { name = "Nuwara Eliya"
      , code = "23"
      , unofficialNames = [ "Nuwara Eliya" ]
      }
    , { name = "Galle"
      , code = "31"
      , unofficialNames = [ "G??lla" ]
      }
    , { name = "Matara"
      , code = "32"
      , unofficialNames = [ "Matara" ]
      }
    , { name = "Hambantota"
      , code = "33"
      , unofficialNames = [ "Hambantota" ]
      }
    , { name = "Jaffna"
      , code = "41"
      , unofficialNames = [ "Yapnaya", "Y??panaya" ]
      }
    , { name = "Kilinochchi"
      , code = "42"
      , unofficialNames = [ "Kilinochchi" ]
      }
    , { name = "Mannar"
      , code = "43"
      , unofficialNames = [ "Manar", "Mannar", "Mannerama" ]
      }
    , { name = "Vavuniya"
      , code = "44"
      , unofficialNames = [ "Vavuniy??wa" ]
      }
    , { name = "Mullaittivu"
      , code = "45"
      , unofficialNames = [ "Mulativu" ]
      }
    , { name = "Batticaloa"
      , code = "51"
      , unofficialNames = [ "Mad??akalp??wa" ]
      }
    , { name = "Ampara"
      , code = "52"
      , unofficialNames = [ "Ampara" ]
      }
    , { name = "Trincomalee"
      , code = "53"
      , unofficialNames = [ "Trinkomali", "Tirikun??malaya" ]
      }
    , { name = "Kurunegala"
      , code = "61"
      , unofficialNames = [ "Kurunegala" ]
      }
    , { name = "Puttalam"
      , code = "62"
      , unofficialNames = [ "Puttalam" ]
      }
    , { name = "Anuradhapura"
      , code = "71"
      , unofficialNames = [ "Anuradhapur", "Anur??dhap??raya" ]
      }
    , { name = "Polonnaruwa"
      , code = "72"
      , unofficialNames = [ "Polonaruwa", "Polunnaruwa" ]
      }
    , { name = "Badulla"
      , code = "81"
      , unofficialNames = [ "Badulla" ]
      }
    , { name = "Monaragala"
      , code = "82"
      , unofficialNames = [ "Monaragalla", "Moneragala" ]
      }
    , { name = "Ratnapura"
      , code = "91"
      , unofficialNames = [ "Ratnap??raya" ]
      }
    , { name = "Kegalla"
      , code = "92"
      , unofficialNames = [ "Kegalle" ]
      }
    ]


{-| -}
countryLRSubdivisions : List Subdivision
countryLRSubdivisions =
    [ { name = "Bong"
      , code = "BG"
      , unofficialNames = [ "Bong" ]
      }
    , { name = "Bomi"
      , code = "BM"
      , unofficialNames = [ "Bomi" ]
      }
    , { name = "Grand Cape Mount"
      , code = "CM"
      , unofficialNames = [ "Grand Cape Mount" ]
      }
    , { name = "Grand Bassa"
      , code = "GB"
      , unofficialNames = [ "Grand Bassa" ]
      }
    , { name = "Grand Gedeh"
      , code = "GG"
      , unofficialNames = [ "Grand Gedah" ]
      }
    , { name = "Grand Kru"
      , code = "GK"
      , unofficialNames = [ "Grand Kru" ]
      }
    , { name = "Lofa"
      , code = "LO"
      , unofficialNames = [ "Lofa" ]
      }
    , { name = "Margibi"
      , code = "MG"
      , unofficialNames = [ "Margibi" ]
      }
    , { name = "Montserrado"
      , code = "MO"
      , unofficialNames = [ "Montserrado" ]
      }
    , { name = "Maryland"
      , code = "MY"
      , unofficialNames = [ "Maryland" ]
      }
    , { name = "Nimba"
      , code = "NI"
      , unofficialNames = [ "Nimba" ]
      }
    , { name = "Rivercess"
      , code = "RI"
      , unofficialNames = [ "Rivercess" ]
      }
    , { name = "Sinoe"
      , code = "SI"
      , unofficialNames = [ "Sinoe" ]
      }
    , { name = "Gbarpolu"
      , code = "X1~"
      , unofficialNames = [ "Gbarpolu" ]
      }
    , { name = "River Gee"
      , code = "X2~"
      , unofficialNames = [ "River Gee" ]
      }
    ]


{-| -}
countryLSSubdivisions : List Subdivision
countryLSSubdivisions =
    [ { name = "Maseru"
      , code = "A"
      , unofficialNames = [ "Maseru" ]
      }
    , { name = "Butha-Buthe"
      , code = "B"
      , unofficialNames = [ "Butha-Buthe" ]
      }
    , { name = "Leribe"
      , code = "C"
      , unofficialNames = [ "Leribe" ]
      }
    , { name = "Berea"
      , code = "D"
      , unofficialNames = [ "Berea" ]
      }
    , { name = "Mafeteng"
      , code = "E"
      , unofficialNames = [ "Mafeteng" ]
      }
    , { name = "Mohale's Hoek"
      , code = "F"
      , unofficialNames = [ "Mohale's Hoek" ]
      }
    , { name = "Quthing"
      , code = "G"
      , unofficialNames = [ "Quthing" ]
      }
    , { name = "Qacha's Nek"
      , code = "H"
      , unofficialNames = [ "Qacha's Nek" ]
      }
    , { name = "Mokhotlong"
      , code = "J"
      , unofficialNames = [ "Mokhotlong" ]
      }
    , { name = "Thaba-Tseka"
      , code = "K"
      , unofficialNames = [ "Thaba-Tseka" ]
      }
    ]


{-| -}
countryLTSubdivisions : List Subdivision
countryLTSubdivisions =
    [ { name = "Alytaus Apskritis"
      , code = "AL"
      , unofficialNames = [ "Alytaus Apskritis" ]
      }
    , { name = "Klaipedos Apskritis"
      , code = "KL"
      , unofficialNames = [ "Klaipedos" ]
      }
    , { name = "Kauno Apskritis"
      , code = "KU"
      , unofficialNames = [ "Kauno Apskritis" ]
      }
    , { name = "Marijampoles Apskritis"
      , code = "MR"
      , unofficialNames = [ "Mariampoles" ]
      }
    , { name = "Paneve??io Apskritis"
      , code = "PN"
      , unofficialNames = [ "Panevezhio" ]
      }
    , { name = "??iauliu Apskritis"
      , code = "SA"
      , unofficialNames = [ "Shiauliu" ]
      }
    , { name = "Taurages Apskritis"
      , code = "TA"
      , unofficialNames = [ "Taurages" ]
      }
    , { name = "Tel??iu Apskritis"
      , code = "TE"
      , unofficialNames = [ "Telshiu" ]
      }
    , { name = "Utenos Apskritis"
      , code = "UT"
      , unofficialNames = [ "Utenos Apskritis" ]
      }
    , { name = "Vilniaus Apskritis"
      , code = "VL"
      , unofficialNames = [ "Vilniaus Apskritis" ]
      }
    ]


{-| -}
countryLUSubdivisions : List Subdivision
countryLUSubdivisions =
    [ { name = "Diekirch"
      , code = "D"
      , unofficialNames = [ "Diekirch" ]
      }
    , { name = "Grevenmacher"
      , code = "G"
      , unofficialNames = [ "Grevenmacher" ]
      }
    , { name = "Luxembourg (fr)"
      , code = "L"
      , unofficialNames = [ "Luxemburg" ]
      }
    ]


{-| -}
countryLVSubdivisions : List Subdivision
countryLVSubdivisions =
    [ { name = "Aizkraukles Aprinkis"
      , code = "AI"
      , unofficialNames = [ "Aizkraukles Aprinkis" ]
      }
    , { name = "Aluksnes Aprinkis"
      , code = "AL"
      , unofficialNames = [ "Aluksnes Aprinkis" ]
      }
    , { name = "Balvu Aprinkis"
      , code = "BL"
      , unofficialNames = [ "Balvu Aprinkis" ]
      }
    , { name = "Bauskas Aprinkis"
      , code = "BU"
      , unofficialNames = [ "Bauskas Aprinkis" ]
      }
    , { name = "Cesu Aprinkis"
      , code = "CE"
      , unofficialNames = [ "Cesu Aprinkis" ]
      }
    , { name = "Daugavpils Aprinkis"
      , code = "DA"
      , unofficialNames = [ "Daugavpils Aprinkis" ]
      }
    , { name = "Daugavpils"
      , code = "DGV"
      , unofficialNames = [ "Daugavpils" ]
      }
    , { name = "Dobeles Aprinkis"
      , code = "DO"
      , unofficialNames = [ "Dobeles Aprinkis" ]
      }
    , { name = "Gulbenes Aprinkis"
      , code = "GU"
      , unofficialNames = [ "Gulbenes Aprinkis" ]
      }
    , { name = "Jelgava"
      , code = "JEL"
      , unofficialNames = [ "Jelgava" ]
      }
    , { name = "Jekabpils Aprinkis"
      , code = "JK"
      , unofficialNames = [ "Jekabpils Aprinkis" ]
      }
    , { name = "Jelgavas Aprinkis"
      , code = "JL"
      , unofficialNames = [ "Jelgavas Aprinkis" ]
      }
    , { name = "Jurmala"
      , code = "JUR"
      , unofficialNames = [ "Jurmala" ]
      }
    , { name = "Kraslavas Aprinkis"
      , code = "KR"
      , unofficialNames = [ "Kraslavas Aprinkis" ]
      }
    , { name = "Kuldigas Aprinkis"
      , code = "KU"
      , unofficialNames = [ "Kuldigas Aprinkis" ]
      }
    , { name = "Liepajas Aprinkis"
      , code = "LE"
      , unofficialNames = [ "Liepajas Aprinkis" ]
      }
    , { name = "Limba??u Aprinkis"
      , code = "LM"
      , unofficialNames = [ "Limba??u Aprinkis" ]
      }
    , { name = "Liepaja"
      , code = "LPX"
      , unofficialNames = [ "Liepaja" ]
      }
    , { name = "Ludzas Aprinkis"
      , code = "LU"
      , unofficialNames = [ "Ludzas Aprinkis" ]
      }
    , { name = "Madonas Aprinkis"
      , code = "MA"
      , unofficialNames = [ "Madonas Aprinkis" ]
      }
    , { name = "Ogres Aprinkis"
      , code = "OG"
      , unofficialNames = [ "Ogres Aprinkis" ]
      }
    , { name = "Preilu Aprinkis"
      , code = "PR"
      , unofficialNames = [ "Preiju" ]
      }
    , { name = "Rezeknes Aprinkis"
      , code = "RE"
      , unofficialNames = [ "Rezeknes Aprinkis" ]
      }
    , { name = "Rezekne"
      , code = "REZ"
      , unofficialNames = [ "Rezekne" ]
      }
    , { name = "Rigas Aprinkis"
      , code = "RI"
      , unofficialNames = [ "Rigas Aprinkis" ]
      }
    , { name = "Riga"
      , code = "RIX"
      , unofficialNames = [ "Riga" ]
      }
    , { name = "Saldus Aprinkis"
      , code = "SA"
      , unofficialNames = [ "Saldus Aprinkis" ]
      }
    , { name = "Talsu Aprinkis"
      , code = "TA"
      , unofficialNames = [ "Talsu Aprinkis" ]
      }
    , { name = "Tukuma Aprinkis"
      , code = "TU"
      , unofficialNames = [ "Tukuma Aprinkis" ]
      }
    , { name = "Ventspils Aprinkis"
      , code = "VE"
      , unofficialNames = [ "Ventspils Aprinkis" ]
      }
    , { name = "Ventspils"
      , code = "VEN"
      , unofficialNames = [ "Ventspils" ]
      }
    , { name = "Valkas Aprinkis"
      , code = "VK"
      , unofficialNames = [ "Valkas Aprinkis" ]
      }
    , { name = "Valmieras Aprinkis"
      , code = "VM"
      , unofficialNames = [ "Valmieras Aprinkis" ]
      }
    ]


{-| -}
countryLYSubdivisions : List Subdivision
countryLYSubdivisions =
    [ { name = "Banghazi"
      , code = "BA"
      , unofficialNames = [ "Banghazi" ]
      }
    , { name = "Al Butnan"
      , code = "BU"
      , unofficialNames = [ "Al Butnan" ]
      }
    , { name = "Darnah"
      , code = "DR"
      , unofficialNames = [ "Darnah" ]
      }
    , { name = "Ghat"
      , code = "GT"
      , unofficialNames = [ "Ghat" ]
      }
    , { name = "Al Jabal al Akh???ar"
      , code = "JA"
      , unofficialNames = [ "Al Jabal al Akh???ar" ]
      }
    , { name = "Al Jabal al Gharb??"
      , code = "JG"
      , unofficialNames = [ "Al Jabal al Gharb??" ]
      }
    , { name = "Al Jifarah"
      , code = "JI"
      , unofficialNames = [ "Al Jifarah" ]
      }
    , { name = "Al Jufrah"
      , code = "JU"
      , unofficialNames = [ "Al Jufrah", "Jofra" ]
      }
    , { name = "Al Kufrah"
      , code = "KF"
      , unofficialNames = [ "Al Kufrah", "Kofra", "Kufra", "Cufra" ]
      }
    , { name = "Al Murqub"
      , code = "MB"
      , unofficialNames = [ "Al Murqub", "Al Marqab", "al-Morqib" ]
      }
    , { name = "Mi??r??tah"
      , code = "MI"
      , unofficialNames = [ "Mi??r??tah", "Misurata", "Misratah" ]
      }
    , { name = "Al Marj"
      , code = "MJ"
      , unofficialNames = [ "Al Marj", "The Meadows", "Marj" ]
      }
    , { name = "Murzuq"
      , code = "MQ"
      , unofficialNames = [ "Murzuq" ]
      }
    , { name = "N??l??t"
      , code = "NL"
      , unofficialNames = [ "N??l??t" ]
      }
    , { name = "An Nuqa?? al Khams"
      , code = "NQ"
      , unofficialNames = [ "An Nuqa?? al Khams", "Nuq????? al ???ams" ]
      }
    , { name = "Sabh??"
      , code = "SB"
      , unofficialNames = [ "Sabh??" ]
      }
    , { name = "Sirte"
      , code = "SR"
      , unofficialNames = [ "Sirt", "Surt" ]
      }
    , { name = "Tarabulus"
      , code = "TB"
      , unofficialNames = [ "??ar??bulus", "Tripoli", "Tripoli" ]
      }
    , { name = "Al Wahat"
      , code = "WA"
      , unofficialNames = [ "Al Wahat", "The Oases", "Al Wahad", "Al Wahah" ]
      }
    , { name = "W??d?? al ???ay??t"
      , code = "WD"
      , unofficialNames = [ "W??d?? al ???ay??t" ]
      }
    , { name = "W??d?? ash Sh????i??"
      , code = "WS"
      , unofficialNames = [ "W??d?? ash Sh????i??" ]
      }
    , { name = "Az Zawiyah"
      , code = "ZA"
      , unofficialNames = [ "Az Zawiyah" ]
      }
    ]


{-| -}
countryMASubdivisions : List Subdivision
countryMASubdivisions =
    [ { name = "Agadir*"
      , code = "AGD"
      , unofficialNames = [ "Agadir*" ]
      }
    , { name = "Aousserd"
      , code = "AOU"
      , unofficialNames = [ "Aousserd" ]
      }
    , { name = "Assa-Zag"
      , code = "ASZ"
      , unofficialNames = [ "Assa-Zag" ]
      }
    , { name = "Azilal"
      , code = "AZI"
      , unofficialNames = [ "Azilal" ]
      }
    , { name = "A??t Baha"
      , code = "BAH"
      , unofficialNames = [ "A??t Baha" ]
      }
    , { name = "Beni Mellal"
      , code = "BEM"
      , unofficialNames = [ "Beni Mellal" ]
      }
    , { name = "Berkane"
      , code = "BER"
      , unofficialNames = [ "Berkane" ]
      }
    , { name = "Ben Slimane"
      , code = "BES"
      , unofficialNames = [ "Ben Slimane" ]
      }
    , { name = "Boujdour (EH)"
      , code = "BOD"
      , unofficialNames = [ "Boujdour (EH)" ]
      }
    , { name = "Boulemane"
      , code = "BOM"
      , unofficialNames = [ "Boulemane" ]
      }
    , { name = "Casablanca [Dar el Be??da]*"
      , code = "CAS"
      , unofficialNames = [ "Casablanca [Dar el Be??da]*" ]
      }
    , { name = "Chefchaouene"
      , code = "CHE"
      , unofficialNames = [ "Chefchaouene" ]
      }
    , { name = "Chichaoua"
      , code = "CHI"
      , unofficialNames = [ "Chichaoua" ]
      }
    , { name = "Chtouka-Ait Baha"
      , code = "CHT"
      , unofficialNames = [ "Chtouka-Ait Baha" ]
      }
    , { name = "Errachidia"
      , code = "ERR"
      , unofficialNames = [ "Errachidia" ]
      }
    , { name = "Essaouira"
      , code = "ESI"
      , unofficialNames = [ "Essaouira" ]
      }
    , { name = "Es Smara (EH)"
      , code = "ESM"
      , unofficialNames = [ "Es Smara (EH)" ]
      }
    , { name = "Fahs-Beni Makada"
      , code = "FAH"
      , unofficialNames = [ "Fahs-Beni Makada" ]
      }
    , { name = "F??s*"
      , code = "FES"
      , unofficialNames = [ "F??s*" ]
      }
    , { name = "Figuig"
      , code = "FIG"
      , unofficialNames = [ "Figuig" ]
      }
    , { name = "Guelmim"
      , code = "GUE"
      , unofficialNames = [ "Guelmim" ]
      }
    , { name = "El Hajeb"
      , code = "HAJ"
      , unofficialNames = [ "El Hajeb" ]
      }
    , { name = "Al Haouz"
      , code = "HAO"
      , unofficialNames = [ "Al Haouz" ]
      }
    , { name = "Al Hoce??ma"
      , code = "HOC"
      , unofficialNames = [ "Al Hoce??ma" ]
      }
    , { name = "Ifrane"
      , code = "IFR"
      , unofficialNames = [ "Ifrane" ]
      }
    , { name = "El Jadida"
      , code = "JDI"
      , unofficialNames = [ "El Jadida" ]
      }
    , { name = "Jerada"
      , code = "JRA"
      , unofficialNames = [ "Jerada" ]
      }
    , { name = "K??nitra"
      , code = "KEN"
      , unofficialNames = [ "K??nitra" ]
      }
    , { name = "Kelaat Sraghna"
      , code = "KES"
      , unofficialNames = [ "Kelaat Sraghna" ]
      }
    , { name = "Khemisset"
      , code = "KHE"
      , unofficialNames = [ "Khemisset" ]
      }
    , { name = "Khenifra"
      , code = "KHN"
      , unofficialNames = [ "Khenifra" ]
      }
    , { name = "Khouribga"
      , code = "KHO"
      , unofficialNames = [ "Khouribga" ]
      }
    , { name = "La??youne* (EH)"
      , code = "LAA"
      , unofficialNames = [ "La??youne* (EH)" ]
      }
    , { name = "Larache"
      , code = "LAR"
      , unofficialNames = [ "Larache" ]
      }
    , { name = "Marrakech*"
      , code = "MAR"
      , unofficialNames = [ "Marrakech*" ]
      }
    , { name = "M??diouna"
      , code = "MED"
      , unofficialNames = [ "M??diouna" ]
      }
    , { name = "Mekn??s*"
      , code = "MEK"
      , unofficialNames = [ "Mekn??s*" ]
      }
    , { name = "A??t Melloul"
      , code = "MEL"
      , unofficialNames = [ "A??t Melloul" ]
      }
    , { name = "Moulay Yacoub"
      , code = "MOU"
      , unofficialNames = [ "Moulay Yacoub" ]
      }
    , { name = "Nador"
      , code = "NAD"
      , unofficialNames = [ "Nador" ]
      }
    , { name = "Nouaceur"
      , code = "NOU"
      , unofficialNames = [ "Nouaceur" ]
      }
    , { name = "Ouarzazate"
      , code = "OUA"
      , unofficialNames = [ "Ouarzazate" ]
      }
    , { name = "Oued ed Dahab (EH)"
      , code = "OUD"
      , unofficialNames = [ "Oued ed Dahab (EH)" ]
      }
    , { name = "Oujda*"
      , code = "OUJ"
      , unofficialNames = [ "Oujda*" ]
      }
    , { name = "Rabat-Sal??*"
      , code = "RBA"
      , unofficialNames = [ "Rabat-Sal??*" ]
      }
    , { name = "Safi"
      , code = "SAF"
      , unofficialNames = [ "Safi" ]
      }
    , { name = "Sal??"
      , code = "SAL"
      , unofficialNames = [ "Sal??" ]
      }
    , { name = "Sefrou"
      , code = "SEF"
      , unofficialNames = [ "Sefrou" ]
      }
    , { name = "Settat"
      , code = "SET"
      , unofficialNames = [ "Settat" ]
      }
    , { name = "Sidi Kacem"
      , code = "SIK"
      , unofficialNames = [ "Sidi Kacem" ]
      }
    , { name = "Skhirate-T??mara"
      , code = "SKH"
      , unofficialNames = [ "Skhirate-T??mara" ]
      }
    , { name = "Sidi Youssef Ben Ali"
      , code = "SYB"
      , unofficialNames = [ "Sidi Youssef Ben Ali" ]
      }
    , { name = "Taourirt"
      , code = "TAI"
      , unofficialNames = [ "Taourirt" ]
      }
    , { name = "Taounate"
      , code = "TAO"
      , unofficialNames = [ "Taounate" ]
      }
    , { name = "Taroudannt"
      , code = "TAR"
      , unofficialNames = [ "Taroudannt" ]
      }
    , { name = "Tata"
      , code = "TAT"
      , unofficialNames = [ "Tata" ]
      }
    , { name = "Taza"
      , code = "TAZ"
      , unofficialNames = [ "Taza" ]
      }
    , { name = "T??touan*"
      , code = "TET"
      , unofficialNames = [ "T??touan*" ]
      }
    , { name = "Tiznit"
      , code = "TIZ"
      , unofficialNames = [ "Tiznit" ]
      }
    , { name = "Tanger"
      , code = "TNG"
      , unofficialNames = [ "Tanger" ]
      }
    , { name = "Tan-Tan"
      , code = "TNT"
      , unofficialNames = [ "Tan-Tan" ]
      }
    , { name = "Laayoune-Boujdour-Sakia El Hamra"
      , code = "X1~"
      , unofficialNames = [ "Laayoune-Boujdour-Sakia El Hamra" ]
      }
    , { name = "Zagora"
      , code = "ZAG"
      , unofficialNames = [ "Zagora" ]
      }
    ]


{-| -}
countryMCSubdivisions : List Subdivision
countryMCSubdivisions =
    []


{-| -}
countryMDSubdivisions : List Subdivision
countryMDSubdivisions =
    [ { name = "Balti"
      , code = "BA"
      , unofficialNames = [ "Balti" ]
      }
    , { name = "Cahul"
      , code = "CA"
      , unofficialNames = [ "Cahul" ]
      }
    , { name = "Chisinau City"
      , code = "CH"
      , unofficialNames = [ "Chisinau City" ]
      }
    , { name = "Chisinau"
      , code = "CU"
      , unofficialNames = [ "Chisinau" ]
      }
    , { name = "Edinet"
      , code = "ED"
      , unofficialNames = [ "Edinet" ]
      }
    , { name = "Gagauzia, Unitate Teritoriala Autonoma (UTAG)"
      , code = "GA"
      , unofficialNames = [ "Gagauzia, Unitate Teritoriala Autonoma (UTAG)" ]
      }
    , { name = "Lapusna"
      , code = "LA"
      , unofficialNames = [ "Lapusna" ]
      }
    , { name = "Orhei"
      , code = "OR"
      , unofficialNames = [ "Orhei" ]
      }
    , { name = "St??nga Nistrului, unitatea teritoriala din"
      , code = "SN"
      , unofficialNames = [ "St??nga Nistrului, unitatea teritoriala din" ]
      }
    , { name = "Soroca"
      , code = "SO"
      , unofficialNames = [ "Soroca" ]
      }
    , { name = "Taraclia"
      , code = "TA"
      , unofficialNames = [ "Taraclia" ]
      }
    , { name = "Tighina [Bender]"
      , code = "TI"
      , unofficialNames = [ "Tighina [Bender]" ]
      }
    , { name = "Ungheni"
      , code = "UN"
      , unofficialNames = [ "Ungheni" ]
      }
    ]


{-| -}
countryMESubdivisions : List Subdivision
countryMESubdivisions =
    [ { name = "Andrijevica"
      , code = "01"
      , unofficialNames = [ "Andrijevica" ]
      }
    , { name = "Bar"
      , code = "02"
      , unofficialNames = [ "Bar" ]
      }
    , { name = "Berane"
      , code = "03"
      , unofficialNames = [ "Berane" ]
      }
    , { name = "Bijelo Polje"
      , code = "04"
      , unofficialNames = [ "Bijelo Polje" ]
      }
    , { name = "Budva"
      , code = "05"
      , unofficialNames = [ "Budva" ]
      }
    , { name = "Cetinje"
      , code = "06"
      , unofficialNames = [ "Cetinje" ]
      }
    , { name = "Danilovgrad"
      , code = "07"
      , unofficialNames = [ "Danilovgrad" ]
      }
    , { name = "Herceg-Novi"
      , code = "08"
      , unofficialNames = [ "Herceg-Novi" ]
      }
    , { name = "Kola??in"
      , code = "09"
      , unofficialNames = [ "Kola??in" ]
      }
    , { name = "Kotor"
      , code = "10"
      , unofficialNames = [ "Kotor" ]
      }
    , { name = "Mojkovac"
      , code = "11"
      , unofficialNames = [ "Mojkovac" ]
      }
    , { name = "Nik??ic??"
      , code = "12"
      , unofficialNames = [ "Nik??ic??" ]
      }
    , { name = "Plav"
      , code = "13"
      , unofficialNames = [ "Plav" ]
      }
    , { name = "Pljevlja"
      , code = "14"
      , unofficialNames = [ "Pljevlja" ]
      }
    , { name = "Plu??ine"
      , code = "15"
      , unofficialNames = [ "Plu??ine" ]
      }
    , { name = "Podgorica"
      , code = "16"
      , unofficialNames = [ "Podgorica" ]
      }
    , { name = "Ro??aje"
      , code = "17"
      , unofficialNames = [ "Ro??aje" ]
      }
    , { name = "??avnik"
      , code = "18"
      , unofficialNames = [ "??avnik" ]
      }
    , { name = "Tivat"
      , code = "19"
      , unofficialNames = [ "Tivat" ]
      }
    , { name = "Ulcinj"
      , code = "20"
      , unofficialNames = [ "Ulcinj" ]
      }
    , { name = "??abljak"
      , code = "21"
      , unofficialNames = [ "??abljak" ]
      }
    ]


{-| -}
countryMFSubdivisions : List Subdivision
countryMFSubdivisions =
    []


{-| -}
countryMGSubdivisions : List Subdivision
countryMGSubdivisions =
    [ { name = "Toamasina"
      , code = "A"
      , unofficialNames = [ "Tamatave" ]
      }
    , { name = "Antsiranana"
      , code = "D"
      , unofficialNames = [ "Antseranana", "Di??go Suarez" ]
      }
    , { name = "Fianarantsoa"
      , code = "F"
      , unofficialNames = [ "Fianar" ]
      }
    , { name = "Mahajanga"
      , code = "M"
      , unofficialNames = [ "Majunga" ]
      }
    , { name = "Antananarivo"
      , code = "T"
      , unofficialNames = [ "Tananarive" ]
      }
    , { name = "Toliara"
      , code = "U"
      , unofficialNames = [ "Toliara", "Tul??ar" ]
      }
    ]


{-| -}
countryMHSubdivisions : List Subdivision
countryMHSubdivisions =
    [ { name = "Ailuk"
      , code = "ALK"
      , unofficialNames = [ "Ailuk" ]
      }
    , { name = "Ailinglapalap"
      , code = "ALL"
      , unofficialNames = [ "Ailinglaplap" ]
      }
    , { name = "Arno"
      , code = "ARN"
      , unofficialNames = [ "Arno" ]
      }
    , { name = "Aur"
      , code = "AUR"
      , unofficialNames = [ "Aur" ]
      }
    , { name = "Ebon"
      , code = "EBO"
      , unofficialNames = [ "Epoon" ]
      }
    , { name = "Eniwetok"
      , code = "ENI"
      , unofficialNames = [ "Eniwetok" ]
      }
    , { name = "Jabat"
      , code = "JAB"
      , unofficialNames = [ "Jabat" ]
      }
    , { name = "Jaluit"
      , code = "JAL"
      , unofficialNames = [ "J??lw??j" ]
      }
    , { name = "Kili"
      , code = "KIL"
      , unofficialNames = [ "K??le" ]
      }
    , { name = "Kwajalein"
      , code = "KWA"
      , unofficialNames = [ "Kuwajleen" ]
      }
    , { name = "Lae"
      , code = "LAE"
      , unofficialNames = [ "Lae" ]
      }
    , { name = "Lib"
      , code = "LIB"
      , unofficialNames = [ "Ellep" ]
      }
    , { name = "Likiep"
      , code = "LIK"
      , unofficialNames = [ "Likiep" ]
      }
    , { name = "Majuro"
      , code = "MAJ"
      , unofficialNames = [ "M??jro" ]
      }
    , { name = "Maloelap"
      , code = "MAL"
      , unofficialNames = [ "Maloelap" ]
      }
    , { name = "Mejit"
      , code = "MEJ"
      , unofficialNames = [ "M??jeej" ]
      }
    , { name = "Mili"
      , code = "MIL"
      , unofficialNames = [ "Mili" ]
      }
    , { name = "Namorik"
      , code = "NMK"
      , unofficialNames = [ "Namorik" ]
      }
    , { name = "Namu"
      , code = "NMU"
      , unofficialNames = [ "Namo" ]
      }
    , { name = "Rongelap"
      , code = "RON"
      , unofficialNames = [ "Rongelap" ]
      }
    , { name = "Ujae"
      , code = "UJA"
      , unofficialNames = [ "Ujae" ]
      }
    , { name = "Ujelang"
      , code = "UJL"
      , unofficialNames = [ "Ujelang" ]
      }
    , { name = "Utirik"
      , code = "UTI"
      , unofficialNames = [ "Utirik", "Utr??k", "Utr??nk" ]
      }
    , { name = "Wotho"
      , code = "WTH"
      , unofficialNames = [ "W??tto" ]
      }
    , { name = "Wotje"
      , code = "WTJ"
      , unofficialNames = [ "Wotje" ]
      }
    ]


{-| -}
countryMKSubdivisions : List Subdivision
countryMKSubdivisions =
    [ { name = "Aerodrom *"
      , code = "AD"
      , unofficialNames = [ "Aerodrom *" ]
      }
    , { name = "Saraj *"
      , code = "AJ"
      , unofficialNames = [ "Saraj *" ]
      }
    , { name = "Aracinovo"
      , code = "AR"
      , unofficialNames = [ "Aracinovo" ]
      }
    , { name = "Kavadarci"
      , code = "AV"
      , unofficialNames = [ "Kavadarci" ]
      }
    , { name = "Bogdanci"
      , code = "BG"
      , unofficialNames = [ "Bogdanci" ]
      }
    , { name = "Brvenica"
      , code = "BN"
      , unofficialNames = [ "Brvenica" ]
      }
    , { name = "Berovo"
      , code = "BR"
      , unofficialNames = [ "Berovo" ]
      }
    , { name = "Bosilovo"
      , code = "BS"
      , unofficialNames = [ "Bosilovo" ]
      }
    , { name = "Butel *"
      , code = "BU"
      , unofficialNames = [ "Butel *" ]
      }
    , { name = "Ca??ka"
      , code = "CA"
      , unofficialNames = [ "Ca??ka" ]
      }
    , { name = "Centar *"
      , code = "CE"
      , unofficialNames = [ "Centar *" ]
      }
    , { name = "Ce??inovo-Oble??evo"
      , code = "CH"
      , unofficialNames = [ "Ce??inovo-Oble??evo" ]
      }
    , { name = "Cair *"
      , code = "CI"
      , unofficialNames = [ "Cair *" ]
      }
    , { name = "Cucer Sandevo"
      , code = "CS"
      , unofficialNames = [ "Cucer Sandevo" ]
      }
    , { name = "Centar ??upa"
      , code = "CZ"
      , unofficialNames = [ "Centar ??upa" ]
      }
    , { name = "Debarca"
      , code = "DA"
      , unofficialNames = [ "Debarca" ]
      }
    , { name = "Debar"
      , code = "DB"
      , unofficialNames = [ "Debar" ]
      }
    , { name = "Dolneni"
      , code = "DE"
      , unofficialNames = [ "Dolneni" ]
      }
    , { name = "Demir Kapija"
      , code = "DK"
      , unofficialNames = [ "Demir Kapija" ]
      }
    , { name = "Delcevo"
      , code = "DL"
      , unofficialNames = [ "Delcevo" ]
      }
    , { name = "Demir Hisar"
      , code = "DM"
      , unofficialNames = [ "Murga??evo" ]
      }
    , { name = "Drugovo"
      , code = "DR"
      , unofficialNames = [ "Drugovo" ]
      }
    , { name = "Tetovo"
      , code = "ET"
      , unofficialNames = [ "Tetovo" ]
      }
    , { name = "Gazi Baba *"
      , code = "GB"
      , unofficialNames = [ "Gazi Baba *" ]
      }
    , { name = "Gjorce Petrov *"
      , code = "GP"
      , unofficialNames = [ "Gjorce Petrov *" ]
      }
    , { name = "Gradsko"
      , code = "GR"
      , unofficialNames = [ "Gradsko" ]
      }
    , { name = "Gostivar"
      , code = "GT"
      , unofficialNames = [ "Gostivar" ]
      }
    , { name = "Gevgelija"
      , code = "GV"
      , unofficialNames = [ "Gevgelija" ]
      }
    , { name = "Ilinden"
      , code = "IL"
      , unofficialNames = [ "Ilinden" ]
      }
    , { name = "Jegunovce"
      , code = "JG"
      , unofficialNames = [ "Jegunovce" ]
      }
    , { name = "Karbinci"
      , code = "KB"
      , unofficialNames = [ "Karbinci" ]
      }
    , { name = "Krivoga??tani"
      , code = "KG"
      , unofficialNames = [ "Krivoga??tani" ]
      }
    , { name = "Kicevo"
      , code = "KH"
      , unofficialNames = [ "Kicevo" ]
      }
    , { name = "Konce"
      , code = "KN"
      , unofficialNames = [ "Konce" ]
      }
    , { name = "Kru??evo"
      , code = "KS"
      , unofficialNames = [ "Kru??evo" ]
      }
    , { name = "Karpo?? *"
      , code = "KX"
      , unofficialNames = [ "Karpo?? *" ]
      }
    , { name = "Kratovo"
      , code = "KY"
      , unofficialNames = [ "Kratovo" ]
      }
    , { name = "Kriva Palanka"
      , code = "KZ"
      , unofficialNames = [ "Kriva Palanka" ]
      }
    , { name = "Lipkovo"
      , code = "LI"
      , unofficialNames = [ "Lipkovo" ]
      }
    , { name = "Lozovo"
      , code = "LO"
      , unofficialNames = [ "Lozovo" ]
      }
    , { name = "Makedonski Brod"
      , code = "MD"
      , unofficialNames = [ "Makedonski Brod" ]
      }
    , { name = "Mogila"
      , code = "MG"
      , unofficialNames = [ "Mogila" ]
      }
    , { name = "Makedonska Kamenica"
      , code = "MK"
      , unofficialNames = [ "Makedonska Kamenica" ]
      }
    , { name = "Mavrovo-i-Rostu??a"
      , code = "MR"
      , unofficialNames = [ "Mavrovo-i-Rostu??a" ]
      }
    , { name = "Staro Nagoricane"
      , code = "NA"
      , unofficialNames = [ "Staro Nagoricane" ]
      }
    , { name = "Negotino"
      , code = "NG"
      , unofficialNames = [ "Negotino" ]
      }
    , { name = "Vinica"
      , code = "NI"
      , unofficialNames = [ "Vinica" ]
      }
    , { name = "Novo Selo"
      , code = "NS"
      , unofficialNames = [ "Novo Selo" ]
      }
    , { name = "Novaci"
      , code = "NV"
      , unofficialNames = [ "Novaci" ]
      }
    , { name = "Kocani"
      , code = "OC"
      , unofficialNames = [ "Kocani" ]
      }
    , { name = "Ohrid"
      , code = "OD"
      , unofficialNames = [ "Ohrid" ]
      }
    , { name = "Oslomej"
      , code = "OS"
      , unofficialNames = [ "Oslomej" ]
      }
    , { name = "Petrovec"
      , code = "PE"
      , unofficialNames = [ "Petrovec" ]
      }
    , { name = "Pehcevo"
      , code = "PH"
      , unofficialNames = [ "Pehcevo" ]
      }
    , { name = "Plasnica"
      , code = "PN"
      , unofficialNames = [ "Plasnica" ]
      }
    , { name = "Prilep"
      , code = "PP"
      , unofficialNames = [ "Prilep" ]
      }
    , { name = "Probi??tip"
      , code = "PT"
      , unofficialNames = [ "Probi??tip" ]
      }
    , { name = "Resen"
      , code = "RE"
      , unofficialNames = [ "Resen" ]
      }
    , { name = "Rosoman"
      , code = "RM"
      , unofficialNames = [ "Rosoman" ]
      }
    , { name = "Rankovce"
      , code = "RN"
      , unofficialNames = [ "Rankovce" ]
      }
    , { name = "Strumica"
      , code = "RU"
      , unofficialNames = [ "Strumica" ]
      }
    , { name = "Radovi??"
      , code = "RV"
      , unofficialNames = [ "Radovi??" ]
      }
    , { name = "Dojran"
      , code = "SD"
      , unofficialNames = [ "Dojran" ]
      }
    , { name = "Sveti Nikole"
      , code = "SL"
      , unofficialNames = [ "Sveti Nikole" ]
      }
    , { name = "??uto Orizari *"
      , code = "SO"
      , unofficialNames = [ "??uto Orizari *" ]
      }
    , { name = "Sopi??te"
      , code = "SS"
      , unofficialNames = [ "Sopi??te" ]
      }
    , { name = "??tip"
      , code = "ST"
      , unofficialNames = [ "??tip" ]
      }
    , { name = "Studenicani"
      , code = "SU"
      , unofficialNames = [ "Studenicani" ]
      }
    , { name = "Bitola"
      , code = "TL"
      , unofficialNames = [ "Bitola" ]
      }
    , { name = "Tearce"
      , code = "TR"
      , unofficialNames = [ "Tearce" ]
      }
    , { name = "Struga"
      , code = "UG"
      , unofficialNames = [ "Struga" ]
      }
    , { name = "Kumanovo"
      , code = "UM"
      , unofficialNames = [ "Kumanovo" ]
      }
    , { name = "Valandovo"
      , code = "VA"
      , unofficialNames = [ "Valandovo" ]
      }
    , { name = "Vrane??tica"
      , code = "VC"
      , unofficialNames = [ "Vrane??tica" ]
      }
    , { name = "Kisela Voda *"
      , code = "VD"
      , unofficialNames = [ "Kisela Voda *" ]
      }
    , { name = "Veles"
      , code = "VE"
      , unofficialNames = [ "Veles" ]
      }
    , { name = "Vrapci??te"
      , code = "VH"
      , unofficialNames = [ "Vrapci??te" ]
      }
    , { name = "Bogovinje"
      , code = "VJ"
      , unofficialNames = [ "Bogovinje" ]
      }
    , { name = "Vasilevo"
      , code = "VL"
      , unofficialNames = [ "Vasilevo" ]
      }
    , { name = "Vevcani"
      , code = "VV"
      , unofficialNames = [ "Vevcani" ]
      }
    , { name = "Skopje"
      , code = "X1~"
      , unofficialNames = [ "Skopje" ]
      }
    , { name = "Zajas"
      , code = "ZA"
      , unofficialNames = [ "Zajas" ]
      }
    , { name = "??elino"
      , code = "ZE"
      , unofficialNames = [ "??elino" ]
      }
    , { name = "Zelenikovo"
      , code = "ZK"
      , unofficialNames = [ "Zelenikovo" ]
      }
    , { name = "Zrnovci"
      , code = "ZR"
      , unofficialNames = [ "Zrnovci" ]
      }
    ]


{-| -}
countryMLSubdivisions : List Subdivision
countryMLSubdivisions =
    [ { name = "Kayes"
      , code = "1"
      , unofficialNames = [ "Kayes" ]
      }
    , { name = "Koulikoro"
      , code = "2"
      , unofficialNames = [ "Koulikoro" ]
      }
    , { name = "Sikasso"
      , code = "3"
      , unofficialNames = [ "Sikasso" ]
      }
    , { name = "S??gou"
      , code = "4"
      , unofficialNames = [ "S??gou" ]
      }
    , { name = "Mopti"
      , code = "5"
      , unofficialNames = [ "Mopti" ]
      }
    , { name = "Tombouctou"
      , code = "6"
      , unofficialNames = [ "Tombouctou" ]
      }
    , { name = "Gao"
      , code = "7"
      , unofficialNames = [ "Gao" ]
      }
    , { name = "Kidal"
      , code = "8"
      , unofficialNames = [ "Kidal" ]
      }
    , { name = "Bamako"
      , code = "BKO"
      , unofficialNames = [ "Bamako" ]
      }
    ]


{-| -}
countryMMSubdivisions : List Subdivision
countryMMSubdivisions =
    [ { name = "Sagaing"
      , code = "01"
      , unofficialNames = [ "Sagaing" ]
      }
    , { name = "Bago"
      , code = "02"
      , unofficialNames = [ "Pegu" ]
      }
    , { name = "Magway"
      , code = "03"
      , unofficialNames = [ "Magwe" ]
      }
    , { name = "Mandalay"
      , code = "04"
      , unofficialNames = [ "Mandalay" ]
      }
    , { name = "Tanintharyi"
      , code = "05"
      , unofficialNames = [ "Tenasserim" ]
      }
    , { name = "Yangon"
      , code = "06"
      , unofficialNames = [ "Yangon", "Rangun", "Rangoun", "Rang??n" ]
      }
    , { name = "Ayeyarwady"
      , code = "07"
      , unofficialNames = [ "Irrawaddy" ]
      }
    , { name = "Kachin"
      , code = "11"
      , unofficialNames = [ "Kachin" ]
      }
    , { name = "Kayah"
      , code = "12"
      , unofficialNames = [ "Kayah" ]
      }
    , { name = "Kayin"
      , code = "13"
      , unofficialNames = [ "Karen" ]
      }
    , { name = "Chin"
      , code = "14"
      , unofficialNames = [ "Chin" ]
      }
    , { name = "Mon"
      , code = "15"
      , unofficialNames = [ "Mon" ]
      }
    , { name = "Rakhine"
      , code = "16"
      , unofficialNames = [ "Arakan" ]
      }
    , { name = "Shan"
      , code = "17"
      , unofficialNames = [ "Shan" ]
      }
    ]


{-| -}
countryMNSubdivisions : List Subdivision
countryMNSubdivisions =
    [ { name = "Orhon"
      , code = "035"
      , unofficialNames = [ "Orhon" ]
      }
    , { name = "Darhan uul"
      , code = "037"
      , unofficialNames = [ "Darhan uul" ]
      }
    , { name = "Hentiy"
      , code = "039"
      , unofficialNames = [ "Hentii", "Khentii" ]
      }
    , { name = "H??vsg??l"
      , code = "041"
      , unofficialNames = [ "Hovsgol", "Khuvsgul" ]
      }
    , { name = "Hovd"
      , code = "043"
      , unofficialNames = [ "Khovd" ]
      }
    , { name = "Uvs"
      , code = "046"
      , unofficialNames = [ "Uvs" ]
      }
    , { name = "T??v"
      , code = "047"
      , unofficialNames = [ "Tov" ]
      }
    , { name = "Selenge"
      , code = "049"
      , unofficialNames = [ "Selenge" ]
      }
    , { name = "S??hbaatar"
      , code = "051"
      , unofficialNames = [ "Sukhbaatar" ]
      }
    , { name = "??mn??govi"
      , code = "053"
      , unofficialNames = [ "Omnogobi" ]
      }
    , { name = "??v??rhangay"
      , code = "055"
      , unofficialNames = [ "Ovorhangai", "Uvurkhangai" ]
      }
    , { name = "Dzavhan"
      , code = "057"
      , unofficialNames = [ "Zavkhan" ]
      }
    , { name = "Dundgovi"
      , code = "059"
      , unofficialNames = [ "Dundgobi" ]
      }
    , { name = "Dornod"
      , code = "061"
      , unofficialNames = [ "Dornod" ]
      }
    , { name = "Dornogovi"
      , code = "063"
      , unofficialNames = [ "Dornogobi" ]
      }
    , { name = "Govi-S??mber"
      , code = "064"
      , unofficialNames = [ "Gobisumber" ]
      }
    , { name = "Govi-Altay"
      , code = "065"
      , unofficialNames = [ "Gobi-Altai", "Gobi-Altay" ]
      }
    , { name = "Bulgan"
      , code = "067"
      , unofficialNames = [ "Bulgan" ]
      }
    , { name = "Bayanhongor"
      , code = "069"
      , unofficialNames = [ "Bayanhongor", "Bayankhongor" ]
      }
    , { name = "Bayan-??lgiy"
      , code = "071"
      , unofficialNames = [ "Bayan-Olgii", "Bayan-Ulgii" ]
      }
    , { name = "Arhangay"
      , code = "073"
      , unofficialNames = [ "Arhangai", "Arhangay", "Arkhangai" ]
      }
    , { name = "Ulaanbaatar"
      , code = "1"
      , unofficialNames = [ "Ulaanbaatar" ]
      }
    ]


{-| -}
countryMOSubdivisions : List Subdivision
countryMOSubdivisions =
    []


{-| -}
countryMPSubdivisions : List Subdivision
countryMPSubdivisions =
    [ { name = "Northern Islands"
      , code = "N"
      , unofficialNames = [ "Northern Islands" ]
      }
    , { name = "Rota"
      , code = "R"
      , unofficialNames = [ "Rota" ]
      }
    , { name = "Saipan"
      , code = "S"
      , unofficialNames = [ "Saipan" ]
      }
    , { name = "Tinian"
      , code = "T"
      , unofficialNames = [ "Tinian" ]
      }
    ]


{-| -}
countryMQSubdivisions : List Subdivision
countryMQSubdivisions =
    []


{-| -}
countryMRSubdivisions : List Subdivision
countryMRSubdivisions =
    [ { name = "Hodh ech Chargui"
      , code = "01"
      , unofficialNames = [ "Hud-ash-Sharqi", "Hu??-a??-??arqi", "Hodh ech Chargui" ]
      }
    , { name = "Hodh el Gharbi"
      , code = "02"
      , unofficialNames = [ "Hud-al-Garbi", "Hu??-al-??arbi", "Hodh el Gharbi" ]
      }
    , { name = "Assaba"
      , code = "03"
      , unofficialNames = [ "a??-??abah", "A??aba" ]
      }
    , { name = "Gorgol"
      , code = "04"
      , unofficialNames = [ "Gorgol" ]
      }
    , { name = "Brakna"
      , code = "05"
      , unofficialNames = [ "Brakna" ]
      }
    , { name = "Trarza"
      , code = "06"
      , unofficialNames = [ "Trarza" ]
      }
    , { name = "Adrar"
      , code = "07"
      , unofficialNames = [ "Adrar" ]
      }
    , { name = "Dakhlet Nou??dhibou"
      , code = "08"
      , unofficialNames = [ "Dakhlat Nawadibu", "??ah??lat Nawad??bu", "Dakhlet Nouadhibou" ]
      }
    , { name = "Tagant"
      , code = "09"
      , unofficialNames = [ "Tagant" ]
      }
    , { name = "Guidimaka"
      , code = "10"
      , unofficialNames = [ "Guidimaka" ]
      }
    , { name = "Tiris Zemmour"
      , code = "11"
      , unofficialNames = [ "Tiris Zammur", "Tiris Zamm??r", "Tiris Zemmour" ]
      }
    , { name = "Inchiri"
      , code = "12"
      , unofficialNames = [ "In??iri", "Inchiri" ]
      }
    , { name = "Nouakchott"
      , code = "NKC"
      , unofficialNames = [ "Anw??ks????", "Nawakshut", "Naw??k??????", "Nouakchott" ]
      }
    ]


{-| -}
countryMSSubdivisions : List Subdivision
countryMSSubdivisions =
    [ { name = "Saint Anthony"
      , code = "1"
      , unofficialNames = [ "Saint Anthony" ]
      }
    , { name = "Saint Georges"
      , code = "2"
      , unofficialNames = [ "Saint Georges" ]
      }
    , { name = "Saint Peter"
      , code = "3"
      , unofficialNames = [ "Saint Peter" ]
      }
    ]


{-| -}
countryMTSubdivisions : List Subdivision
countryMTSubdivisions =
    [ { name = "Attard"
      , code = "01"
      , unofficialNames = [ "Attard" ]
      }
    , { name = "Balzan"
      , code = "02"
      , unofficialNames = [ "Balzan" ]
      }
    , { name = "Birgu"
      , code = "03"
      , unofficialNames = [ "Birgu" ]
      }
    , { name = "Birkirkara"
      , code = "04"
      , unofficialNames = [ "Birkirkara" ]
      }
    , { name = "Bir??ebbu??a"
      , code = "05"
      , unofficialNames = [ "Bir??ebbu??a" ]
      }
    , { name = "Bormla"
      , code = "06"
      , unofficialNames = [ "Bormla" ]
      }
    , { name = "Dingli"
      , code = "07"
      , unofficialNames = [ "Dingli" ]
      }
    , { name = "Fgura"
      , code = "08"
      , unofficialNames = [ "Fgura" ]
      }
    , { name = "Floriana"
      , code = "09"
      , unofficialNames = [ "Floriana" ]
      }
    , { name = "Fontana"
      , code = "10"
      , unofficialNames = [ "Fontana" ]
      }
    , { name = "Gudja"
      , code = "11"
      , unofficialNames = [ "Gudja" ]
      }
    , { name = "G??ira"
      , code = "12"
      , unofficialNames = [ "G??ira" ]
      }
    , { name = "G??ajnsielem"
      , code = "13"
      , unofficialNames = [ "G??ajnsielem" ]
      }
    , { name = "G??arb"
      , code = "14"
      , unofficialNames = [ "G??arb" ]
      }
    , { name = "G??arg??ur"
      , code = "15"
      , unofficialNames = [ "G??arg??ur" ]
      }
    , { name = "G??asri"
      , code = "16"
      , unofficialNames = [ "G??asri" ]
      }
    , { name = "G??axaq"
      , code = "17"
      , unofficialNames = [ "G??axaq" ]
      }
    , { name = "??amrun"
      , code = "18"
      , unofficialNames = [ "??amrun" ]
      }
    , { name = "Iklin"
      , code = "19"
      , unofficialNames = [ "Iklin" ]
      }
    , { name = "Isla"
      , code = "20"
      , unofficialNames = [ "Isla" ]
      }
    , { name = "Kalkara"
      , code = "21"
      , unofficialNames = [ "Kalkara" ]
      }
    , { name = "Ker??em"
      , code = "22"
      , unofficialNames = [ "Ker??em" ]
      }
    , { name = "Kirkop"
      , code = "23"
      , unofficialNames = [ "Kirkop" ]
      }
    , { name = "Lija"
      , code = "24"
      , unofficialNames = [ "Lija" ]
      }
    , { name = "Luqa"
      , code = "25"
      , unofficialNames = [ "Luqa" ]
      }
    , { name = "Marsa"
      , code = "26"
      , unofficialNames = [ "Marsa" ]
      }
    , { name = "Marsaskala"
      , code = "27"
      , unofficialNames = [ "Marsaskala" ]
      }
    , { name = "Marsaxlokk"
      , code = "28"
      , unofficialNames = [ "Marsaxlokk" ]
      }
    , { name = "Mdina"
      , code = "29"
      , unofficialNames = [ "Mdina" ]
      }
    , { name = "Mellie??a"
      , code = "30"
      , unofficialNames = [ "Mellie??a" ]
      }
    , { name = "M??arr"
      , code = "31"
      , unofficialNames = [ "M??arr" ]
      }
    , { name = "Mosta"
      , code = "32"
      , unofficialNames = [ "Mosta" ]
      }
    , { name = "Mqabba"
      , code = "33"
      , unofficialNames = [ "Mqabba" ]
      }
    , { name = "Msida"
      , code = "34"
      , unofficialNames = [ "Msida" ]
      }
    , { name = "Mtarfa"
      , code = "35"
      , unofficialNames = [ "Mtarfa" ]
      }
    , { name = "Munxar"
      , code = "36"
      , unofficialNames = [ "Munxar" ]
      }
    , { name = "Nadur"
      , code = "37"
      , unofficialNames = [ "Nadur" ]
      }
    , { name = "Naxxar"
      , code = "38"
      , unofficialNames = [ "Naxxar" ]
      }
    , { name = "Paola"
      , code = "39"
      , unofficialNames = [ "Paola" ]
      }
    , { name = "Pembroke"
      , code = "40"
      , unofficialNames = [ "Pembroke" ]
      }
    , { name = "Piet??"
      , code = "41"
      , unofficialNames = [ "Piet??" ]
      }
    , { name = "Qala"
      , code = "42"
      , unofficialNames = [ "Qala" ]
      }
    , { name = "Qormi"
      , code = "43"
      , unofficialNames = [ "Qormi" ]
      }
    , { name = "Qrendi"
      , code = "44"
      , unofficialNames = [ "Qrendi" ]
      }
    , { name = "Rabat Gozo"
      , code = "45"
      , unofficialNames = [ "Rabat Gozo", "Rabat G??awdex" ]
      }
    , { name = "Rabat Malta"
      , code = "46"
      , unofficialNames = [ "Rabat Malta" ]
      }
    , { name = "Safi"
      , code = "47"
      , unofficialNames = [ "Safi" ]
      }
    , { name = "Saint Julian's"
      , code = "48"
      , unofficialNames = [ "Saint Julian's", "San ??iljan" ]
      }
    , { name = "Saint John"
      , code = "49"
      , unofficialNames = [ "Saint John", "San ??wann" ]
      }
    , { name = "Saint Lawrence"
      , code = "50"
      , unofficialNames = [ "Saint Lawrence", "San Lawrenz" ]
      }
    , { name = "Saint Paul's Bay"
      , code = "51"
      , unofficialNames = [ "Saint Paul's Bay", "San Pawl il-Ba??ar" ]
      }
    , { name = "Sannat"
      , code = "52"
      , unofficialNames = [ "Sannat" ]
      }
    , { name = "Saint Lucia's"
      , code = "53"
      , unofficialNames = [ "Saint Lucia's", "Santa Lu??ija" ]
      }
    , { name = "Santa Venera"
      , code = "54"
      , unofficialNames = [ "Santa Venera" ]
      }
    , { name = "Si????iewi"
      , code = "55"
      , unofficialNames = [ "Si????iewi" ]
      }
    , { name = "Sliema"
      , code = "56"
      , unofficialNames = [ "Sliema" ]
      }
    , { name = "Swieqi"
      , code = "57"
      , unofficialNames = [ "Swieqi" ]
      }
    , { name = "Ta' Xbiex"
      , code = "58"
      , unofficialNames = [ "Ta' Xbiex" ]
      }
    , { name = "Tarxien"
      , code = "59"
      , unofficialNames = [ "Tarxien" ]
      }
    , { name = "Valletta"
      , code = "60"
      , unofficialNames = [ "Valletta" ]
      }
    , { name = "Xag??ra"
      , code = "61"
      , unofficialNames = [ "Xag??ra" ]
      }
    , { name = "Xewkija"
      , code = "62"
      , unofficialNames = [ "Xewkija" ]
      }
    , { name = "Xg??ajra"
      , code = "63"
      , unofficialNames = [ "Xg??ajra" ]
      }
    , { name = "??abbar"
      , code = "64"
      , unofficialNames = [ "??abbar" ]
      }
    , { name = "??ebbu?? Gozo"
      , code = "65"
      , unofficialNames = [ "??ebbu?? Gozo", "??ebbu?? G??awdex" ]
      }
    , { name = "??ebbu?? Malta"
      , code = "66"
      , unofficialNames = [ "??ebbu?? Malta" ]
      }
    , { name = "??ejtun"
      , code = "67"
      , unofficialNames = [ "??ejtun" ]
      }
    , { name = "??urrieq"
      , code = "68"
      , unofficialNames = [ "??urrieq" ]
      }
    ]


{-| -}
countryMUSubdivisions : List Subdivision
countryMUSubdivisions =
    [ { name = "Agalega Islands"
      , code = "AG"
      , unofficialNames = [ "Agalega Islands" ]
      }
    , { name = "Black River"
      , code = "BL"
      , unofficialNames = [ "Black River" ]
      }
    , { name = "Beau Bassin-Rose Hill"
      , code = "BR"
      , unofficialNames = [ "Beau Bassin-Rose Hill" ]
      }
    , { name = "Cargados Carajos Shoals [Saint Brandon Islands]"
      , code = "CC"
      , unofficialNames = [ "Cargados Carajos Shoals [Saint Brandon Islands]" ]
      }
    , { name = "Curepipe"
      , code = "CU"
      , unofficialNames = [ "Curepipe" ]
      }
    , { name = "Flacq"
      , code = "FL"
      , unofficialNames = [ "Flacq" ]
      }
    , { name = "Grand Port"
      , code = "GP"
      , unofficialNames = [ "Grand Port" ]
      }
    , { name = "Moka"
      , code = "MO"
      , unofficialNames = [ "Moka" ]
      }
    , { name = "Pamplemousses"
      , code = "PA"
      , unofficialNames = [ "Pamplemousses" ]
      }
    , { name = "Port Louis City"
      , code = "PL"
      , unofficialNames = [ "Port Louis City" ]
      }
    , { name = "Port Louis District"
      , code = "PU"
      , unofficialNames = [ "Port Louis District" ]
      }
    , { name = "Plaines Wilhems"
      , code = "PW"
      , unofficialNames = [ "Plaines Wilhems" ]
      }
    , { name = "Quatre Bornes"
      , code = "QB"
      , unofficialNames = [ "Quatre Bornes" ]
      }
    , { name = "Rodrigues Island"
      , code = "RO"
      , unofficialNames = [ "Rodrigues Island" ]
      }
    , { name = "Rivi??re du Rempart"
      , code = "RR"
      , unofficialNames = [ "Rivi??re du Rempart" ]
      }
    , { name = "Savanne"
      , code = "SA"
      , unofficialNames = [ "Savanne" ]
      }
    , { name = "Vacoas-Phoenix"
      , code = "VP"
      , unofficialNames = [ "Vacoas-Phoenix" ]
      }
    ]


{-| -}
countryMVSubdivisions : List Subdivision
countryMVSubdivisions =
    [ { name = "Seenu"
      , code = "01"
      , unofficialNames = [ "Addu", "Addu Atholhu", "Addu Atoll", "Seenu", "S??n" ]
      }
    , { name = "Alif"
      , code = "02"
      , unofficialNames = [ "Alif Atoll Dhekunu", "Ari Atholhu Uthuruburi", "North Ari Atoll" ]
      }
    , { name = "Lhaviyani"
      , code = "03"
      , unofficialNames = [ "Faadhippolhu", "Fadiffolu", "Laviyani" ]
      }
    , { name = "Vaavu"
      , code = "04"
      , unofficialNames = [ "Felidhe Atholhu", "Felidhu Atoll", "Felidu", "Vaafu", "Vaavu", "V??v" ]
      }
    , { name = "Laamu"
      , code = "05"
      , unofficialNames = [ "Haddumati", "Hadhdhunmathi", "Hadhunmathi", "Laamu", "L??m" ]
      }
    , { name = "Haa Alif"
      , code = "07"
      , unofficialNames = [ "Haa Alifu", "H?? Alif", "North Thiladhunmathi", "Thiladhunmathi Uthuruburi", "Tiladummati-North" ]
      }
    , { name = "Thaa"
      , code = "08"
      , unofficialNames = [ "Kolhumadhulu", "Kolhumadulu", "Kolumadulu", "Th??" ]
      }
    , { name = "Meemu"
      , code = "12"
      , unofficialNames = [ "Meemu", "Mimu", "Mulakatholhu", "Mulaku", "Mulaku Atholhu", "M??m" ]
      }
    , { name = "Raa"
      , code = "13"
      , unofficialNames = [ "Maalhosmadhulu Uthuruburi", "Malosmadulu-North", "North Maalhosmadhulu", "R??" ]
      }
    , { name = "Faafu"
      , code = "14"
      , unofficialNames = [ "Faafu", "Faafu Atoll", "F??f", "Nilandhe Atholhu Uthuruburi", "Nilandu-North", "North Nilandhe", "North Nilandhe Atoll" ]
      }
    , { name = "Dhaalu"
      , code = "17"
      , unofficialNames = [ "Dhaalu", "Dh??l", "Nilandhe Atholhu Dhekunuburi", "Nilandu-South", "South Nilandhe Atoll" ]
      }
    , { name = "Baa"
      , code = "20"
      , unofficialNames = [ "B??", "Maalhosmadhulu Dhekunuburi", "Malosmadulu-South", "South Maalhosmadhulu" ]
      }
    , { name = "Haa Dhaalu"
      , code = "23"
      , unofficialNames = [ "Haa Dhaalu", "H?? Dh??l", "South Thiladhunmathi", "Thiladhunmathi Dhekunuburi", "Tiladummati-South" ]
      }
    , { name = "Shaviyani"
      , code = "24"
      , unofficialNames = [ "Miladhunmadhulu Uthuruburi", "Miladummadulu-North", "North Miladhunmadhulu" ]
      }
    , { name = "Noonu"
      , code = "25"
      , unofficialNames = [ "Miladhunmadhulu Dhekunuburi", "Miladummadulu-South", "Mulakatholhu", "Noonu", "N??n", "South Miladhunmadhulu" ]
      }
    , { name = "Kaafu"
      , code = "26"
      , unofficialNames = [ "Kaafu", "K??f", "Male?? Atholhu", "Mal?? Atoll" ]
      }
    , { name = "Gaaf Alif"
      , code = "27"
      , unofficialNames = [ "Gaafu Alifu", "G??f Alif", "Huvadhu Atholhu Uthuruburi", "North Huvadhu Atoll", "Suvadiva-Huvadu-North" ]
      }
    , { name = "Gaafu Dhaalu"
      , code = "28"
      , unofficialNames = [ "Gaafu Dhaalu", "G??f Dh??l", "Huvadhu Atholhu Dhekunuburi", "South Huvadhu", "Suvadiva-Huvadu-South" ]
      }
    , { name = "Gnaviyani"
      , code = "29"
      , unofficialNames = [ "Foah Mulah", "Foahmulah", "Foammulah", "Foamulah", "Fua Mulak", "Fuamulaku", "Fuvahmulah", "Gnyaviani" ]
      }
    , { name = "Male"
      , code = "MLE"
      , unofficialNames = [ "Maale", "M??le" ]
      }
    , { name = "Alif Dhaal"
      , code = "X1~"
      , unofficialNames = [ "Alif Atoll Uthuru", "Alif Dh??l", "Ari Atholhu Dhekunuburi", "South Ari Atoll" ]
      }
    ]


{-| -}
countryMWSubdivisions : List Subdivision
countryMWSubdivisions =
    [ { name = "Balaka"
      , code = "BA"
      , unofficialNames = [ "Balaka" ]
      }
    , { name = "Blantyre"
      , code = "BL"
      , unofficialNames = [ "Blantyre" ]
      }
    , { name = "Chikwawa"
      , code = "CK"
      , unofficialNames = [ "Chikwawa" ]
      }
    , { name = "Chiradzulu"
      , code = "CR"
      , unofficialNames = [ "Chiradzulu" ]
      }
    , { name = "Chitipa"
      , code = "CT"
      , unofficialNames = [ "Chitipa" ]
      }
    , { name = "Dedza"
      , code = "DE"
      , unofficialNames = [ "Dedza" ]
      }
    , { name = "Dowa"
      , code = "DO"
      , unofficialNames = [ "Dowa" ]
      }
    , { name = "Karonga"
      , code = "KR"
      , unofficialNames = [ "Karonga" ]
      }
    , { name = "Kasungu"
      , code = "KS"
      , unofficialNames = [ "Kasungu" ]
      }
    , { name = "Lilongwe"
      , code = "LI"
      , unofficialNames = [ "Lilongwe" ]
      }
    , { name = "Likoma Island"
      , code = "LK"
      , unofficialNames = [ "Likoma Island" ]
      }
    , { name = "Mchinji"
      , code = "MC"
      , unofficialNames = [ "Mchinji" ]
      }
    , { name = "Mangochi"
      , code = "MG"
      , unofficialNames = [ "Mangochi" ]
      }
    , { name = "Machinga"
      , code = "MH"
      , unofficialNames = [ "Machinga" ]
      }
    , { name = "Mulanje"
      , code = "MU"
      , unofficialNames = [ "Mulanje" ]
      }
    , { name = "Mwanza"
      , code = "MW"
      , unofficialNames = [ "Mwanza" ]
      }
    , { name = "Mzimba"
      , code = "MZ"
      , unofficialNames = [ "Mzimba" ]
      }
    , { name = "Nkhata Bay"
      , code = "NB"
      , unofficialNames = [ "Nkhata Bay" ]
      }
    , { name = "Ntchisi"
      , code = "NI"
      , unofficialNames = [ "Ntchisi" ]
      }
    , { name = "Nkhotakota"
      , code = "NK"
      , unofficialNames = [ "Nkhotakota" ]
      }
    , { name = "Nsanje"
      , code = "NS"
      , unofficialNames = [ "Nsanje" ]
      }
    , { name = "Ntcheu"
      , code = "NU"
      , unofficialNames = [ "Ntcheu" ]
      }
    , { name = "Phalombe"
      , code = "PH"
      , unofficialNames = [ "Phalombe" ]
      }
    , { name = "Rumphi"
      , code = "RU"
      , unofficialNames = [ "Rumphi" ]
      }
    , { name = "Salima"
      , code = "SA"
      , unofficialNames = [ "Salima" ]
      }
    , { name = "Thyolo"
      , code = "TH"
      , unofficialNames = [ "Thyolo" ]
      }
    , { name = "Zomba"
      , code = "ZO"
      , unofficialNames = [ "Zomba" ]
      }
    ]


{-| -}
countryMXSubdivisions : List Subdivision
countryMXSubdivisions =
    [ { name = "Aguascalientes"
      , code = "AGU"
      , unofficialNames = [ "Aguascalientes" ]
      }
    , { name = "Baja California"
      , code = "BCN"
      , unofficialNames = [ "Baja California" ]
      }
    , { name = "Baja California Sur"
      , code = "BCS"
      , unofficialNames = [ "Baja California Sur" ]
      }
    , { name = "Campeche"
      , code = "CAM"
      , unofficialNames = [ "Campeche" ]
      }
    , { name = "Chihuahua"
      , code = "CHH"
      , unofficialNames = [ "Chihuahua" ]
      }
    , { name = "Chiapas"
      , code = "CHP"
      , unofficialNames = [ "Chiapas" ]
      }
    , { name = "Ciudad de M??xico"
      , code = "CMX"
      , unofficialNames = [ "Ciudad de M??xico" ]
      }
    , { name = "Coahuila"
      , code = "COA"
      , unofficialNames = [ "Coahuila" ]
      }
    , { name = "Colima"
      , code = "COL"
      , unofficialNames = [ "Colima" ]
      }
    , { name = "Durango"
      , code = "DUR"
      , unofficialNames = [ "Durango" ]
      }
    , { name = "Guerrero"
      , code = "GRO"
      , unofficialNames = [ "Guerrero" ]
      }
    , { name = "Guanajuato"
      , code = "GUA"
      , unofficialNames = [ "Guanajuato" ]
      }
    , { name = "Hidalgo"
      , code = "HID"
      , unofficialNames = [ "Hidalgo" ]
      }
    , { name = "Jalisco"
      , code = "JAL"
      , unofficialNames = [ "Jalisco" ]
      }
    , { name = "M??xico"
      , code = "MEX"
      , unofficialNames = [ "M??xico" ]
      }
    , { name = "Michoac??n"
      , code = "MIC"
      , unofficialNames = [ "Michoac??n" ]
      }
    , { name = "Morelos"
      , code = "MOR"
      , unofficialNames = [ "Morelos" ]
      }
    , { name = "Nayarit"
      , code = "NAY"
      , unofficialNames = [ "Nayarit" ]
      }
    , { name = "Nuevo Le??n"
      , code = "NLE"
      , unofficialNames = [ "Nuevo Le??n" ]
      }
    , { name = "Oaxaca"
      , code = "OAX"
      , unofficialNames = [ "Oaxaca" ]
      }
    , { name = "Puebla"
      , code = "PUE"
      , unofficialNames = [ "Puebla" ]
      }
    , { name = "Quer??taro"
      , code = "QUE"
      , unofficialNames = [ "Quer??taro" ]
      }
    , { name = "Quintana Roo"
      , code = "ROO"
      , unofficialNames = [ "Quintana Roo" ]
      }
    , { name = "Sinaloa"
      , code = "SIN"
      , unofficialNames = [ "Sinaloa" ]
      }
    , { name = "San Luis Potos??"
      , code = "SLP"
      , unofficialNames = [ "San Luis Potos??" ]
      }
    , { name = "Sonora"
      , code = "SON"
      , unofficialNames = [ "Sonora" ]
      }
    , { name = "Tabasco"
      , code = "TAB"
      , unofficialNames = [ "Tabasco" ]
      }
    , { name = "Tamaulipas"
      , code = "TAM"
      , unofficialNames = [ "Tamaulipas" ]
      }
    , { name = "Tlaxcala"
      , code = "TLA"
      , unofficialNames = [ "Tlaxcala" ]
      }
    , { name = "Veracruz"
      , code = "VER"
      , unofficialNames = [ "Veracruz" ]
      }
    , { name = "Yucat??n"
      , code = "YUC"
      , unofficialNames = [ "Yucat??n" ]
      }
    , { name = "Zacatecas"
      , code = "ZAC"
      , unofficialNames = [ "Zacatecas" ]
      }
    ]


{-| -}
countryMYSubdivisions : List Subdivision
countryMYSubdivisions =
    [ { name = "Johor"
      , code = "01"
      , unofficialNames = [ "Johor" ]
      }
    , { name = "Kedah"
      , code = "02"
      , unofficialNames = [ "Kedah" ]
      }
    , { name = "Kelantan"
      , code = "03"
      , unofficialNames = [ "Kelantan" ]
      }
    , { name = "Melaka"
      , code = "04"
      , unofficialNames = [ "Melaka" ]
      }
    , { name = "Negeri Sembilan"
      , code = "05"
      , unofficialNames = [ "Negri Sembilan" ]
      }
    , { name = "Pahang"
      , code = "06"
      , unofficialNames = [ "Pahang" ]
      }
    , { name = "Pulau Pinang"
      , code = "07"
      , unofficialNames = [ "Pulau Pinang" ]
      }
    , { name = "Perak"
      , code = "08"
      , unofficialNames = [ "Perak" ]
      }
    , { name = "Perlis"
      , code = "09"
      , unofficialNames = [ "Perlis" ]
      }
    , { name = "Selangor"
      , code = "10"
      , unofficialNames = [ "Selangor" ]
      }
    , { name = "Terengganu"
      , code = "11"
      , unofficialNames = [ "Terengganu" ]
      }
    , { name = "Sabah"
      , code = "12"
      , unofficialNames = [ "Sabah" ]
      }
    , { name = "Sarawak"
      , code = "13"
      , unofficialNames = [ "Sarawak" ]
      }
    , { name = "Wilayah Persekutuan Kuala Lumpur"
      , code = "14"
      , unofficialNames = [ "Wilayah Persekutuan Kuala Lumpur" ]
      }
    , { name = "Wilayah Persekutuan Labuan"
      , code = "15"
      , unofficialNames = [ "Wilayah Persekutuan Labuan" ]
      }
    , { name = "Wilayah Persekutuan Putrajaya"
      , code = "16"
      , unofficialNames = [ "Wilayah Persekutuan Putrajaya" ]
      }
    ]


{-| -}
countryMZSubdivisions : List Subdivision
countryMZSubdivisions =
    [ { name = "Niassa"
      , code = "A"
      , unofficialNames = [ "Niassa" ]
      }
    , { name = "Manica"
      , code = "B"
      , unofficialNames = [ "Manica" ]
      }
    , { name = "Gaza"
      , code = "G"
      , unofficialNames = [ "Gaza" ]
      }
    , { name = "Inhambane"
      , code = "I"
      , unofficialNames = [ "Inhambane" ]
      }
    , { name = "Maputo"
      , code = "L"
      , unofficialNames = [ "Maputo" ]
      }
    , { name = "Maputo City"
      , code = "MPM"
      , unofficialNames = [ "Maputo City" ]
      }
    , { name = "Nampula"
      , code = "N"
      , unofficialNames = [ "Nampula" ]
      }
    , { name = "Cabo Delgado"
      , code = "P"
      , unofficialNames = [ "Cabo Delgado" ]
      }
    , { name = "Zamb??zia"
      , code = "Q"
      , unofficialNames = [ "Zamb??zia" ]
      }
    , { name = "Sofala"
      , code = "S"
      , unofficialNames = [ "Sofala" ]
      }
    , { name = "Tete"
      , code = "T"
      , unofficialNames = [ "Tete" ]
      }
    ]


{-| -}
countryNASubdivisions : List Subdivision
countryNASubdivisions =
    [ { name = "Zambezi"
      , code = "CA"
      , unofficialNames = [ "Zambezi" ]
      }
    , { name = "Erongo"
      , code = "ER"
      , unofficialNames = [ "Erongo" ]
      }
    , { name = "Hardap"
      , code = "HA"
      , unofficialNames = [ "Hardap" ]
      }
    , { name = "Karas"
      , code = "KA"
      , unofficialNames = [ "Karas" ]
      }
    , { name = "Kavango East"
      , code = "KE"
      , unofficialNames = [ "Kavango East" ]
      }
    , { name = "Kavango West"
      , code = "KW"
      , unofficialNames = [ "Kavango West" ]
      }
    , { name = "Khomas"
      , code = "KH"
      , unofficialNames = [ "Khomas" ]
      }
    , { name = "Kunene"
      , code = "KU"
      , unofficialNames = [ "Kunene" ]
      }
    , { name = "Otjozondjupa"
      , code = "OD"
      , unofficialNames = [ "Otjozondjupa" ]
      }
    , { name = "Omaheke"
      , code = "OH"
      , unofficialNames = [ "Omaheke" ]
      }
    , { name = "Oshana"
      , code = "ON"
      , unofficialNames = [ "Oshana" ]
      }
    , { name = "Omusati"
      , code = "OS"
      , unofficialNames = [ "Omusati" ]
      }
    , { name = "Oshikoto"
      , code = "OT"
      , unofficialNames = [ "Otjikoto" ]
      }
    , { name = "Ohangwena"
      , code = "OW"
      , unofficialNames = [ "Ohangwena" ]
      }
    ]


{-| -}
countryNCSubdivisions : List Subdivision
countryNCSubdivisions =
    [ { name = "Nord"
      , code = "N"
      , unofficialNames = [ "Nord" ]
      }
    , { name = "Sud"
      , code = "S"
      , unofficialNames = [ "Sud" ]
      }
    , { name = "Iles Loyaute"
      , code = "L"
      , unofficialNames = [ "Iles Loyaute" ]
      }
    ]


{-| -}
countryNESubdivisions : List Subdivision
countryNESubdivisions =
    [ { name = "Agadez"
      , code = "1"
      , unofficialNames = [ "Agadez" ]
      }
    , { name = "Diffa"
      , code = "2"
      , unofficialNames = [ "Diffa" ]
      }
    , { name = "Dosso"
      , code = "3"
      , unofficialNames = [ "Dosso" ]
      }
    , { name = "Maradi"
      , code = "4"
      , unofficialNames = [ "Maradi" ]
      }
    , { name = "Tahoua"
      , code = "5"
      , unofficialNames = [ "Tahoua" ]
      }
    , { name = "Tillab??ri"
      , code = "6"
      , unofficialNames = [ "Tillaberi" ]
      }
    , { name = "Zinder"
      , code = "7"
      , unofficialNames = [ "Zinder" ]
      }
    , { name = "Niamey"
      , code = "8"
      , unofficialNames = [ "Niamey" ]
      }
    ]


{-| -}
countryNGSubdivisions : List Subdivision
countryNGSubdivisions =
    [ { name = "Abia"
      , code = "AB"
      , unofficialNames = [ "Abia" ]
      }
    , { name = "Adamawa"
      , code = "AD"
      , unofficialNames = [ "Adamaoua", "Gongola" ]
      }
    , { name = "Akwa Ibom"
      , code = "AK"
      , unofficialNames = [ "Akwa Ibom" ]
      }
    , { name = "Anambra"
      , code = "AN"
      , unofficialNames = [ "Anambra" ]
      }
    , { name = "Bauchi"
      , code = "BA"
      , unofficialNames = [ "Bauchi" ]
      }
    , { name = "Benue"
      , code = "BE"
      , unofficialNames = [ "Benue" ]
      }
    , { name = "Borno"
      , code = "BO"
      , unofficialNames = [ "Borno" ]
      }
    , { name = "Bayelsa"
      , code = "BY"
      , unofficialNames = [ "Bayelsa" ]
      }
    , { name = "Cross River"
      , code = "CR"
      , unofficialNames = [ "Cross River" ]
      }
    , { name = "Delta"
      , code = "DE"
      , unofficialNames = [ "Delta" ]
      }
    , { name = "Ebonyi"
      , code = "EB"
      , unofficialNames = [ "Ebonyi" ]
      }
    , { name = "Edo"
      , code = "ED"
      , unofficialNames = [ "Bendel" ]
      }
    , { name = "Ekiti"
      , code = "EK"
      , unofficialNames = [ "Ekiti" ]
      }
    , { name = "Enugu"
      , code = "EN"
      , unofficialNames = [ "Enugu" ]
      }
    , { name = "Abuja Capital Territory"
      , code = "FC"
      , unofficialNames = [ "Abuja Capital Territory" ]
      }
    , { name = "Gombe"
      , code = "GO"
      , unofficialNames = [ "Gombe" ]
      }
    , { name = "Imo"
      , code = "IM"
      , unofficialNames = [ "Imo" ]
      }
    , { name = "Jigawa"
      , code = "JI"
      , unofficialNames = [ "Jigawa" ]
      }
    , { name = "Kaduna"
      , code = "KD"
      , unofficialNames = [ "Kaduna" ]
      }
    , { name = "Kebbi"
      , code = "KE"
      , unofficialNames = [ "Kebbi" ]
      }
    , { name = "Kano"
      , code = "KN"
      , unofficialNames = [ "Kano" ]
      }
    , { name = "Kogi"
      , code = "KO"
      , unofficialNames = [ "Kogi" ]
      }
    , { name = "Katsina"
      , code = "KT"
      , unofficialNames = [ "Katsina" ]
      }
    , { name = "Kwara"
      , code = "KW"
      , unofficialNames = [ "Kwara" ]
      }
    , { name = "Lagos"
      , code = "LA"
      , unofficialNames = [ "Lagos" ]
      }
    , { name = "Nassarawa"
      , code = "NA"
      , unofficialNames = [ "Nasarawa" ]
      }
    , { name = "Niger"
      , code = "NI"
      , unofficialNames = [ "Niger" ]
      }
    , { name = "Ogun"
      , code = "OG"
      , unofficialNames = [ "Ogun" ]
      }
    , { name = "Ondo"
      , code = "ON"
      , unofficialNames = [ "Ondo" ]
      }
    , { name = "Osun"
      , code = "OS"
      , unofficialNames = [ "Osun" ]
      }
    , { name = "Oyo"
      , code = "OY"
      , unofficialNames = [ "Oyo" ]
      }
    , { name = "Plateau"
      , code = "PL"
      , unofficialNames = [ "Plateau" ]
      }
    , { name = "Rivers"
      , code = "RI"
      , unofficialNames = [ "Rivers" ]
      }
    , { name = "Sokoto"
      , code = "SO"
      , unofficialNames = [ "Sokoto" ]
      }
    , { name = "Taraba"
      , code = "TA"
      , unofficialNames = [ "Taraba" ]
      }
    , { name = "Yobe"
      , code = "YO"
      , unofficialNames = [ "Yobe" ]
      }
    , { name = "Zamfara"
      , code = "ZA"
      , unofficialNames = [ "Zamfara" ]
      }
    ]


{-| -}
countryNISubdivisions : List Subdivision
countryNISubdivisions =
    [ { name = "Atl??ntico Norte*"
      , code = "AN"
      , unofficialNames = [ "RAAN", "Regi??n Aut??noma Atl??ntico Norte", "Zelaya Norte" ]
      }
    , { name = "Atl??ntico Sur*"
      , code = "AS"
      , unofficialNames = [ "RAAS", "Regi??n Aut??noma Atl??ntico Sur", "Zelaya Sur" ]
      }
    , { name = "Boaco"
      , code = "BO"
      , unofficialNames = [ "Boaco" ]
      }
    , { name = "Carazo"
      , code = "CA"
      , unofficialNames = [ "Carazo" ]
      }
    , { name = "Chinandega"
      , code = "CI"
      , unofficialNames = [ "Chinandega" ]
      }
    , { name = "Chontales"
      , code = "CO"
      , unofficialNames = [ "Chontales" ]
      }
    , { name = "Estel??"
      , code = "ES"
      , unofficialNames = [ "Estel??" ]
      }
    , { name = "Granada"
      , code = "GR"
      , unofficialNames = [ "Granada" ]
      }
    , { name = "Jinotega"
      , code = "JI"
      , unofficialNames = [ "Jinotega" ]
      }
    , { name = "Le??n"
      , code = "LE"
      , unofficialNames = [ "Le??n" ]
      }
    , { name = "Madriz"
      , code = "MD"
      , unofficialNames = [ "Madriz" ]
      }
    , { name = "Managua"
      , code = "MN"
      , unofficialNames = [ "Managua" ]
      }
    , { name = "Masaya"
      , code = "MS"
      , unofficialNames = [ "Masaya" ]
      }
    , { name = "Matagalpa"
      , code = "MT"
      , unofficialNames = [ "Matagalpa" ]
      }
    , { name = "Nueva Segovia"
      , code = "NS"
      , unofficialNames = [ "Nueva Segovia" ]
      }
    , { name = "Rivas"
      , code = "RI"
      , unofficialNames = [ "Rivas" ]
      }
    , { name = "R??o San Juan"
      , code = "SJ"
      , unofficialNames = [ "R??o San Juan" ]
      }
    ]


{-| -}
countryNLSubdivisions : List Subdivision
countryNLSubdivisions =
    [ { name = "Drenthe"
      , code = "DR"
      , unofficialNames = [ "Drenthe" ]
      }
    , { name = "Flevoland"
      , code = "FL"
      , unofficialNames = [ "Flevoland" ]
      }
    , { name = "Friesland"
      , code = "FR"
      , unofficialNames = [ "Friesland" ]
      }
    , { name = "Gelderland"
      , code = "GE"
      , unofficialNames = [ "Gueldre" ]
      }
    , { name = "Groningen"
      , code = "GR"
      , unofficialNames = [ "Groningue", "Groninga" ]
      }
    , { name = "Limburg"
      , code = "LI"
      , unofficialNames = [ "Limburg" ]
      }
    , { name = "Noord-Brabant"
      , code = "NB"
      , unofficialNames = [ "Noord-Brabant" ]
      }
    , { name = "Noord-Holland"
      , code = "NH"
      , unofficialNames = [ "Noord-Holland" ]
      }
    , { name = "Overijssel"
      , code = "OV"
      , unofficialNames = [ "Overijssel" ]
      }
    , { name = "Utrecht"
      , code = "UT"
      , unofficialNames = [ "Utrecht" ]
      }
    , { name = "Zeeland"
      , code = "ZE"
      , unofficialNames = [ "Zeeland" ]
      }
    , { name = "Zuid-Holland"
      , code = "ZH"
      , unofficialNames = [ "Zuid-Holland" ]
      }
    ]


{-| -}
countryNOSubdivisions : List Subdivision
countryNOSubdivisions =
    [ { name = "Oslo"
      , code = "NO-03"
      , unofficialNames = [ "Oslo" ]
      }
    , { name = "Rogaland"
      , code = "NO-11"
      , unofficialNames = [ "Rogaland" ]
      }
    , { name = "M??re og Romsdal"
      , code = "NO-15"
      , unofficialNames = [ "M??re og Romsdal" ]
      }
    , { name = "Nordland"
      , code = "NO-18"
      , unofficialNames = [ "Nordland" ]
      }
    , { name = "Svalbard (Arctic Region)"
      , code = "NO-21"
      , unofficialNames = [ "Svalbard (Arctic Region)" ]
      }
    , { name = "Jan Mayen (Arctic Region)"
      , code = "NO-22"
      , unofficialNames = [ "Jan Mayen (Arctic Region)" ]
      }
    , { name = "Viken"
      , code = "NO-30"
      , unofficialNames = [ "" ]
      }
    , { name = "Innlandet"
      , code = "NO-34"
      , unofficialNames = [ "" ]
      }
    , { name = "Vestfold og Telemark"
      , code = "NO-38"
      , unofficialNames = [ "" ]
      }
    , { name = "Agder"
      , code = "NO-42"
      , unofficialNames = [ "" ]
      }
    , { name = "Vestland"
      , code = "NO-46"
      , unofficialNames = [ "" ]
      }
    , { name = "Tr??ndelag"
      , code = "NO-50"
      , unofficialNames = [ "" ]
      }
    , { name = "Troms og Finnmark"
      , code = "NO-54"
      , unofficialNames = [ "" ]
      }
    ]


{-| -}
countryNPSubdivisions : List Subdivision
countryNPSubdivisions =
    [ { name = "Bagmati"
      , code = "BA"
      , unofficialNames = [ "Bagmati" ]
      }
    , { name = "Bheri"
      , code = "BH"
      , unofficialNames = [ "Bheri" ]
      }
    , { name = "Dhawalagiri"
      , code = "DH"
      , unofficialNames = [ "Dhawalagiri" ]
      }
    , { name = "Gandaki"
      , code = "GA"
      , unofficialNames = [ "Gandaki" ]
      }
    , { name = "Janakpur"
      , code = "JA"
      , unofficialNames = [ "Janakpur" ]
      }
    , { name = "Karnali"
      , code = "KA"
      , unofficialNames = [ "Karnali" ]
      }
    , { name = "Kosi [Koshi]"
      , code = "KO"
      , unofficialNames = [ "Kosi [Koshi]" ]
      }
    , { name = "Lumbini"
      , code = "LU"
      , unofficialNames = [ "Lumbini" ]
      }
    , { name = "Mahakali"
      , code = "MA"
      , unofficialNames = [ "Mahakali" ]
      }
    , { name = "Mechi"
      , code = "ME"
      , unofficialNames = [ "Mechi" ]
      }
    , { name = "Narayani"
      , code = "NA"
      , unofficialNames = [ "Narayani" ]
      }
    , { name = "Rapti"
      , code = "RA"
      , unofficialNames = [ "Rapti" ]
      }
    , { name = "Sagarmatha"
      , code = "SA"
      , unofficialNames = [ "Sagarmatha" ]
      }
    , { name = "Seti"
      , code = "SE"
      , unofficialNames = [ "Seti" ]
      }
    ]


{-| -}
countryNRSubdivisions : List Subdivision
countryNRSubdivisions =
    [ { name = "Aiwo"
      , code = "01"
      , unofficialNames = [ "Aiwo" ]
      }
    , { name = "Anabar"
      , code = "02"
      , unofficialNames = [ "Anabar" ]
      }
    , { name = "Anetan"
      , code = "03"
      , unofficialNames = [ "Anetan" ]
      }
    , { name = "Anibare"
      , code = "04"
      , unofficialNames = [ "Anibare" ]
      }
    , { name = "Baiti"
      , code = "05"
      , unofficialNames = [ "Baiti" ]
      }
    , { name = "Boe"
      , code = "06"
      , unofficialNames = [ "Boe" ]
      }
    , { name = "Buada"
      , code = "07"
      , unofficialNames = [ "Buada" ]
      }
    , { name = "Denigomodu"
      , code = "08"
      , unofficialNames = [ "Denigomodu" ]
      }
    , { name = "Ewa"
      , code = "09"
      , unofficialNames = [ "Ewa" ]
      }
    , { name = "Ijuw"
      , code = "10"
      , unofficialNames = [ "Ijuw" ]
      }
    , { name = "Meneng"
      , code = "11"
      , unofficialNames = [ "Meneng" ]
      }
    , { name = "Nibok"
      , code = "12"
      , unofficialNames = [ "Nibok" ]
      }
    , { name = "Uaboe"
      , code = "13"
      , unofficialNames = [ "Uaboe" ]
      }
    , { name = "Yaren"
      , code = "14"
      , unofficialNames = [ "Yaren" ]
      }
    ]


{-| -}
countryNZSubdivisions : List Subdivision
countryNZSubdivisions =
    [ { name = "Auckland"
      , code = "AUK"
      , unofficialNames = [ "Auckland" ]
      }
    , { name = "Bay of Plenty"
      , code = "BOP"
      , unofficialNames = [ "Bay of Plenty" ]
      }
    , { name = "Canterbury"
      , code = "CAN"
      , unofficialNames = [ "Canterbury" ]
      }
    , { name = "Gisborne"
      , code = "GIS"
      , unofficialNames = [ "Gisborne" ]
      }
    , { name = "Hawke's Bay"
      , code = "HKB"
      , unofficialNames = [ "Hawke's Bay" ]
      }
    , { name = "Marlborough"
      , code = "MBH"
      , unofficialNames = [ "Marlborough" ]
      }
    , { name = "Manawatu-Wanganui"
      , code = "MWT"
      , unofficialNames = [ "Wanganui-Manawatu" ]
      }
    , { name = "Nelson"
      , code = "NSN"
      , unofficialNames = [ "Nelson" ]
      }
    , { name = "Northland"
      , code = "NTL"
      , unofficialNames = [ "Northland" ]
      }
    , { name = "Otago"
      , code = "OTA"
      , unofficialNames = [ "Otago" ]
      }
    , { name = "Southland"
      , code = "STL"
      , unofficialNames = [ "Southland" ]
      }
    , { name = "Tasman"
      , code = "TAS"
      , unofficialNames = [ "Tasman" ]
      }
    , { name = "Taranaki"
      , code = "TKI"
      , unofficialNames = [ "Taranaki" ]
      }
    , { name = "Wellington"
      , code = "WGN"
      , unofficialNames = [ "Wellington" ]
      }
    , { name = "Waikato"
      , code = "WKO"
      , unofficialNames = [ "Waikato" ]
      }
    , { name = "West Coast"
      , code = "WTC"
      , unofficialNames = [ "West Coast" ]
      }
    , { name = "Chatham Islands"
      , code = "X1~"
      , unofficialNames = [ "Chatham Islands" ]
      }
    ]


{-| -}
countryOMSubdivisions : List Subdivision
countryOMSubdivisions =
    [ { name = "Al Batinah"
      , code = "BA"
      , unofficialNames = [ "Al Batinah" ]
      }
    , { name = "Ad Dakhiliyah"
      , code = "DA"
      , unofficialNames = [ "Ad Dakhiliya" ]
      }
    , { name = "Dhofar"
      , code = "JA"
      , unofficialNames = [ "Dhofar", "Dhufar", "Janubiyah" ]
      }
    , { name = "Masqat"
      , code = "MA"
      , unofficialNames = [ "Masqa??", "Maskat", "Mascate" ]
      }
    , { name = "Musandam"
      , code = "MU"
      , unofficialNames = [ "Musandam" ]
      }
    , { name = "Ash Sharqiyah"
      , code = "SH"
      , unofficialNames = [ "Ash Sharqiyah" ]
      }
    , { name = "Al Wust??"
      , code = "WU"
      , unofficialNames = [ "Al Wust??" ]
      }
    , { name = "Al Buraymi"
      , code = "X1~"
      , unofficialNames = [ "Al Buraymi" ]
      }
    , { name = "Adh Dhahirah"
      , code = "ZA"
      , unofficialNames = [ "Adh Dhahirah" ]
      }
    ]


{-| -}
countryPASubdivisions : List Subdivision
countryPASubdivisions =
    [ { name = "Bocas del Toro"
      , code = "1"
      , unofficialNames = [ "Bocas del Toro" ]
      }
    , { name = "Cocl??"
      , code = "2"
      , unofficialNames = [ "Cocl??" ]
      }
    , { name = "Col??n"
      , code = "3"
      , unofficialNames = [ "Col??n" ]
      }
    , { name = "Chiriqu??"
      , code = "4"
      , unofficialNames = [ "Chiriqu??" ]
      }
    , { name = "Dari??n"
      , code = "5"
      , unofficialNames = [ "Dari??n" ]
      }
    , { name = "Herrera"
      , code = "6"
      , unofficialNames = [ "Herrera" ]
      }
    , { name = "Los Santos"
      , code = "7"
      , unofficialNames = [ "Los Santos" ]
      }
    , { name = "Panam??"
      , code = "8"
      , unofficialNames = [ "Panam??" ]
      }
    , { name = "Veraguas"
      , code = "9"
      , unofficialNames = [ "Veraguas" ]
      }
    , { name = "Panam?? Oeste"
      , code = "10"
      , unofficialNames = [ "Panam?? Oeste" ]
      }
    , { name = "Ember??-Wounaan"
      , code = "EM"
      , unofficialNames = [ "Ember??-Wounaan" ]
      }
    , { name = "Guna Yala"
      , code = "KY"
      , unofficialNames = [ "Guna Yala" ]
      }
    , { name = "Ng??be-Bugl??"
      , code = "NB"
      , unofficialNames = [ "Ng??be-Bugl??" ]
      }
    ]


{-| -}
countryPESubdivisions : List Subdivision
countryPESubdivisions =
    [ { name = "Amazonas"
      , code = "AMA"
      , unofficialNames = [ "Amazonas" ]
      }
    , { name = "Ancash"
      , code = "ANC"
      , unofficialNames = [ "Anqas" ]
      }
    , { name = "Apur??mac"
      , code = "APU"
      , unofficialNames = [ "Apur??mac" ]
      }
    , { name = "Arequipa"
      , code = "ARE"
      , unofficialNames = [ "Areqepa" ]
      }
    , { name = "Ayacucho"
      , code = "AYA"
      , unofficialNames = [ "Ayakuchu" ]
      }
    , { name = "Cajamarca"
      , code = "CAJ"
      , unofficialNames = [ "Cajamarca" ]
      }
    , { name = "El Callao"
      , code = "CAL"
      , unofficialNames = [ "El Callao" ]
      }
    , { name = "Cuzco [Cusco]"
      , code = "CUS"
      , unofficialNames = [ "Cuzco", "Qosqo" ]
      }
    , { name = "Hu??nuco"
      , code = "HUC"
      , unofficialNames = [ "Hu??nuco" ]
      }
    , { name = "Huancavelica"
      , code = "HUV"
      , unofficialNames = [ "Huancavelica" ]
      }
    , { name = "Ica"
      , code = "ICA"
      , unofficialNames = [ "Ica" ]
      }
    , { name = "Jun??n"
      , code = "JUN"
      , unofficialNames = [ "Jun??n" ]
      }
    , { name = "La Libertad"
      , code = "LAL"
      , unofficialNames = [ "La Libertad" ]
      }
    , { name = "Lambayeque"
      , code = "LAM"
      , unofficialNames = [ "Lambayeque" ]
      }
    , { name = "Lima"
      , code = "LIM"
      , unofficialNames = [ "Lima" ]
      }
    , { name = "Loreto"
      , code = "LOR"
      , unofficialNames = [ "Loreto" ]
      }
    , { name = "Madre de Dios"
      , code = "MDD"
      , unofficialNames = [ "Madre de Dios" ]
      }
    , { name = "Moquegua"
      , code = "MOQ"
      , unofficialNames = [ "Moquegua" ]
      }
    , { name = "Pasco"
      , code = "PAS"
      , unofficialNames = [ "Pasco" ]
      }
    , { name = "Piura"
      , code = "PIU"
      , unofficialNames = [ "Piura" ]
      }
    , { name = "Puno"
      , code = "PUN"
      , unofficialNames = [ "Puno" ]
      }
    , { name = "San Mart??n"
      , code = "SAM"
      , unofficialNames = [ "San Mart??n" ]
      }
    , { name = "Tacna"
      , code = "TAC"
      , unofficialNames = [ "Tacna" ]
      }
    , { name = "Tumbes"
      , code = "TUM"
      , unofficialNames = [ "Tumbes" ]
      }
    , { name = "Ucayali"
      , code = "UCA"
      , unofficialNames = [ "Ucayali" ]
      }
    , { name = "Lima Metropolitana"
      , code = "LMA"
      , unofficialNames = [ "Lima Metropolitana" ]
      }
    ]


{-| -}
countryPFSubdivisions : List Subdivision
countryPFSubdivisions =
    [ { name = "Austral Islands"
      , code = "I"
      , unofficialNames = [ "Austral Islands" ]
      }
    , { name = "Marquesas Islands"
      , code = "M"
      , unofficialNames = [ "Marquesas Islands" ]
      }
    , { name = "Leeward Islands"
      , code = "S"
      , unofficialNames = [ "Leeward Islands" ]
      }
    , { name = "Iles Tuamotu-Gambier"
      , code = "T"
      , unofficialNames = [ "Iles Tuamotu-Gambier" ]
      }
    , { name = "Windward Islands"
      , code = "V"
      , unofficialNames = [ "Windward Islands" ]
      }
    ]


{-| -}
countryPGSubdivisions : List Subdivision
countryPGSubdivisions =
    [ { name = "Chimbu"
      , code = "CPK"
      , unofficialNames = [ "Chimbu", "Simb??a" ]
      }
    , { name = "Central"
      , code = "CPM"
      , unofficialNames = [ "Papua Central" ]
      }
    , { name = "East New Britain"
      , code = "EBR"
      , unofficialNames = [ "New Britain East" ]
      }
    , { name = "Eastern Highlands"
      , code = "EHG"
      , unofficialNames = [ "Highlands East" ]
      }
    , { name = "Enga"
      , code = "EPW"
      , unofficialNames = [ "Enga" ]
      }
    , { name = "East Sepik"
      , code = "ESW"
      , unofficialNames = [ "Sepik East" ]
      }
    , { name = "Gulf"
      , code = "GPK"
      , unofficialNames = [ "Papua Gulf" ]
      }
    , { name = "Milne Bay"
      , code = "MBA"
      , unofficialNames = [ "Milne Bay" ]
      }
    , { name = "Morobe"
      , code = "MPL"
      , unofficialNames = [ "Morobe" ]
      }
    , { name = "Madang"
      , code = "MPM"
      , unofficialNames = [ "Madang" ]
      }
    , { name = "Manus"
      , code = "MRL"
      , unofficialNames = [ "Great Admiralty Island", "Mwanus" ]
      }
    , { name = "National Capital District (Port Moresby)"
      , code = "NCD"
      , unofficialNames = [ "National Capital District (Port Moresby)" ]
      }
    , { name = "New Ireland"
      , code = "NIK"
      , unofficialNames = [ "Niu Ailan" ]
      }
    , { name = "Northern"
      , code = "NPP"
      , unofficialNames = [ "Northern" ]
      }
    , { name = "North Solomons"
      , code = "NSA"
      , unofficialNames = [ "Bougainville", "Mekamui", "North Solomons" ]
      }
    , { name = "Sandaun [West Sepik]"
      , code = "SAN"
      , unofficialNames = [ "West Sepik" ]
      }
    , { name = "Southern Highlands"
      , code = "SHM"
      , unofficialNames = [ "Highlands South" ]
      }
    , { name = "West New Britain"
      , code = "WBK"
      , unofficialNames = [ "New Britain West" ]
      }
    , { name = "Western Highlands"
      , code = "WHM"
      , unofficialNames = [ "Highlands West" ]
      }
    , { name = "Western"
      , code = "WPD"
      , unofficialNames = [ "Papua West", "Western" ]
      }
    ]


{-| -}
countryPHSubdivisions : List Subdivision
countryPHSubdivisions =
    [ { name = "Abra"
      , code = "ABR"
      , unofficialNames = [ "Abra" ]
      }
    , { name = "Agusan del Norte"
      , code = "AGN"
      , unofficialNames = [ "Agusan del Norte" ]
      }
    , { name = "Agusan del Sur"
      , code = "AGS"
      , unofficialNames = [ "Agusan del Sur" ]
      }
    , { name = "Aklan"
      , code = "AKL"
      , unofficialNames = [ "Aklan" ]
      }
    , { name = "Albay"
      , code = "ALB"
      , unofficialNames = [ "Albay" ]
      }
    , { name = "Antique"
      , code = "ANT"
      , unofficialNames = [ "Antique" ]
      }
    , { name = "Apayao"
      , code = "APA"
      , unofficialNames = [ "Apayao" ]
      }
    , { name = "Aurora"
      , code = "AUR"
      , unofficialNames = [ "Aurora" ]
      }
    , { name = "Bataan"
      , code = "BAN"
      , unofficialNames = [ "Bataan" ]
      }
    , { name = "Basilan"
      , code = "BAS"
      , unofficialNames = [ "Basilan" ]
      }
    , { name = "Benguet"
      , code = "BEN"
      , unofficialNames = [ "Benguet" ]
      }
    , { name = "Biliran"
      , code = "BIL"
      , unofficialNames = [ "Biliran" ]
      }
    , { name = "Bohol"
      , code = "BOH"
      , unofficialNames = [ "Bohol" ]
      }
    , { name = "Batangas"
      , code = "BTG"
      , unofficialNames = [ "Batangas" ]
      }
    , { name = "Batanes"
      , code = "BTN"
      , unofficialNames = [ "Batanes" ]
      }
    , { name = "Bukidnon"
      , code = "BUK"
      , unofficialNames = [ "Bukidnon" ]
      }
    , { name = "Bulacan"
      , code = "BUL"
      , unofficialNames = [ "Bulacan" ]
      }
    , { name = "Cagayan"
      , code = "CAG"
      , unofficialNames = [ "Cagayan" ]
      }
    , { name = "Camiguin"
      , code = "CAM"
      , unofficialNames = [ "Camiguin" ]
      }
    , { name = "Camarines Norte"
      , code = "CAN"
      , unofficialNames = [ "Camarines Norte" ]
      }
    , { name = "Capiz"
      , code = "CAP"
      , unofficialNames = [ "Capiz" ]
      }
    , { name = "Camarines Sur"
      , code = "CAS"
      , unofficialNames = [ "Camarines Sur" ]
      }
    , { name = "Catanduanes"
      , code = "CAT"
      , unofficialNames = [ "Catanduanes" ]
      }
    , { name = "Cavite"
      , code = "CAV"
      , unofficialNames = [ "Cavite" ]
      }
    , { name = "Cebu"
      , code = "CEB"
      , unofficialNames = [ "Cebu" ]
      }
    , { name = "Compostela Valley"
      , code = "COM"
      , unofficialNames = [ "Compostela Valley" ]
      }
    , { name = "Davao Oriental"
      , code = "DAO"
      , unofficialNames = [ "Davao Oriental" ]
      }
    , { name = "Davao del Sur"
      , code = "DAS"
      , unofficialNames = [ "Davao del Sur" ]
      }
    , { name = "Davao del Norte"
      , code = "DAV"
      , unofficialNames = [ "Davao" ]
      }
    , { name = "Dinagat Islands"
      , code = "DIN"
      , unofficialNames = [ "Dinagat Islands" ]
      }
    , { name = "Davao Occidental"
      , code = "DVO"
      , unofficialNames = [ "Davao Occidental" ]
      }
    , { name = "Eastern Samar"
      , code = "EAS"
      , unofficialNames = [ "Eastern Samar" ]
      }
    , { name = "Guimaras"
      , code = "GUI"
      , unofficialNames = [ "Guimaras" ]
      }
    , { name = "Ifugao"
      , code = "IFU"
      , unofficialNames = [ "Ifugao" ]
      }
    , { name = "Iloilo"
      , code = "ILI"
      , unofficialNames = [ "Iloilo" ]
      }
    , { name = "Ilocos Norte"
      , code = "ILN"
      , unofficialNames = [ "Ilocos Norte" ]
      }
    , { name = "Ilocos Sur"
      , code = "ILS"
      , unofficialNames = [ "Ilocos Sur" ]
      }
    , { name = "Isabela"
      , code = "ISA"
      , unofficialNames = [ "Isabela" ]
      }
    , { name = "Kalinga"
      , code = "KAL"
      , unofficialNames = [ "Kalinga" ]
      }
    , { name = "Laguna"
      , code = "LAG"
      , unofficialNames = [ "Laguna" ]
      }
    , { name = "Lanao del Norte"
      , code = "LAN"
      , unofficialNames = [ "Lanao del Norte" ]
      }
    , { name = "Lanao del Sur"
      , code = "LAS"
      , unofficialNames = [ "Lanao del Sur" ]
      }
    , { name = "Leyte"
      , code = "LEY"
      , unofficialNames = [ "Leyte" ]
      }
    , { name = "La Union"
      , code = "LUN"
      , unofficialNames = [ "La Union" ]
      }
    , { name = "Marinduque"
      , code = "MAD"
      , unofficialNames = [ "Marinduque" ]
      }
    , { name = "Maguindanao"
      , code = "MAG"
      , unofficialNames = [ "Maguindanao" ]
      }
    , { name = "Masbate"
      , code = "MAS"
      , unofficialNames = [ "Masbate" ]
      }
    , { name = "Mindoro Occidental"
      , code = "MDC"
      , unofficialNames = [ "Mindoro Occidental" ]
      }
    , { name = "Mindoro Oriental"
      , code = "MDR"
      , unofficialNames = [ "Mindoro Oriental" ]
      }
    , { name = "Mountain Province"
      , code = "MOU"
      , unofficialNames = [ "Mountain Province" ]
      }
    , { name = "Misamis Occidental"
      , code = "MSC"
      , unofficialNames = [ "Misamis Occidental" ]
      }
    , { name = "Misamis Oriental"
      , code = "MSR"
      , unofficialNames = [ "Misamis Oriental" ]
      }
    , { name = "North Cotabato"
      , code = "NCO"
      , unofficialNames = [ "North Cotabato" ]
      }
    , { name = "Negros Occidental"
      , code = "NEC"
      , unofficialNames = [ "Negros Occidental" ]
      }
    , { name = "Negros Oriental"
      , code = "NER"
      , unofficialNames = [ "Negros Oriental" ]
      }
    , { name = "Northern Samar"
      , code = "NSA"
      , unofficialNames = [ "Northern Samar" ]
      }
    , { name = "Nueva Ecija"
      , code = "NUE"
      , unofficialNames = [ "Nueva Ecija" ]
      }
    , { name = "Nueva Vizcaya"
      , code = "NUV"
      , unofficialNames = [ "Nueva Vizcaya" ]
      }
    , { name = "Pampanga"
      , code = "PAM"
      , unofficialNames = [ "Pampanga" ]
      }
    , { name = "Pangasinan"
      , code = "PAN"
      , unofficialNames = [ "Pangasinan" ]
      }
    , { name = "Palawan"
      , code = "PLW"
      , unofficialNames = [ "Palawan" ]
      }
    , { name = "Quezon"
      , code = "QUE"
      , unofficialNames = [ "Quezon" ]
      }
    , { name = "Quirino"
      , code = "QUI"
      , unofficialNames = [ "Angkaki" ]
      }
    , { name = "Rizal"
      , code = "RIZ"
      , unofficialNames = [ "Rizal" ]
      }
    , { name = "Romblon"
      , code = "ROM"
      , unofficialNames = [ "Romblon" ]
      }
    , { name = "Sarangani"
      , code = "SAR"
      , unofficialNames = [ "Sarangani" ]
      }
    , { name = "South Cotabato"
      , code = "SCO"
      , unofficialNames = [ "South Cotabato" ]
      }
    , { name = "Siquijor"
      , code = "SIG"
      , unofficialNames = [ "Siquijor" ]
      }
    , { name = "Southern Leyte"
      , code = "SLE"
      , unofficialNames = [ "Southern Leyte" ]
      }
    , { name = "Sulu"
      , code = "SLU"
      , unofficialNames = [ "Sulu" ]
      }
    , { name = "Sorsogon"
      , code = "SOR"
      , unofficialNames = [ "Sorsogon" ]
      }
    , { name = "Sultan Kudarat"
      , code = "SUK"
      , unofficialNames = [ "Sultan Kudarat" ]
      }
    , { name = "Surigao del Norte"
      , code = "SUN"
      , unofficialNames = [ "Surigao del Norte" ]
      }
    , { name = "Surigao del Sur"
      , code = "SUR"
      , unofficialNames = [ "Surigao del Sur" ]
      }
    , { name = "Tarlac"
      , code = "TAR"
      , unofficialNames = [ "Tarlac" ]
      }
    , { name = "Tawi-Tawi"
      , code = "TAW"
      , unofficialNames = [ "Tawi-Tawi" ]
      }
    , { name = "Western Samar"
      , code = "WSA"
      , unofficialNames = [ "Western Samar" ]
      }
    , { name = "Dinagat"
      , code = "X1~"
      , unofficialNames = [ "Dinagat" ]
      }
    , { name = "Shariff Kabunsuan"
      , code = "X2~"
      , unofficialNames = [ "Shariff Kabunsuan" ]
      }
    , { name = "Zamboanga del Norte"
      , code = "ZAN"
      , unofficialNames = [ "Zamboanga del Norte" ]
      }
    , { name = "Zamboanga del Sur"
      , code = "ZAS"
      , unofficialNames = [ "Zamboanga del Sur" ]
      }
    , { name = "Zambales"
      , code = "ZMB"
      , unofficialNames = [ "Zambales" ]
      }
    , { name = "Zamboanga Sibuguey [Zamboanga Sibugay]"
      , code = "ZSI"
      , unofficialNames = [ "Zamboanga Sibuguey [Zamboanga Sibugay]" ]
      }
    , { name = "National Capital Region"
      , code = "00"
      , unofficialNames = [ "National Capital Region", "Pambansang Punong Rehiyon" ]
      }
    ]


{-| -}
countryPKSubdivisions : List Subdivision
countryPKSubdivisions =
    [ { name = "Baluchistan (en)"
      , code = "BA"
      , unofficialNames = [ "Baluchistan (en)" ]
      }
    , { name = "Islamabad"
      , code = "IS"
      , unofficialNames = [ "Islamabad" ]
      }
    , { name = "Azad Kashmir"
      , code = "JK"
      , unofficialNames = [ "Azad Kashmir" ]
      }
    , { name = "Northern Areas"
      , code = "NA"
      , unofficialNames = [ "Northern Areas" ]
      }
    , { name = "North-West Frontier"
      , code = "NW"
      , unofficialNames = [ "North-West Frontier" ]
      }
    , { name = "Punjab"
      , code = "PB"
      , unofficialNames = [ "Punjab" ]
      }
    , { name = "Sind (en)"
      , code = "SD"
      , unofficialNames = [ "Sind (en)" ]
      }
    , { name = "Federally Administered Tribal Areas"
      , code = "TA"
      , unofficialNames = [ "Federally Administered Tribal Areas" ]
      }
    ]


{-| -}
countryPLSubdivisions : List Subdivision
countryPLSubdivisions =
    [ { name = "Dolno??l??skie"
      , code = "DS"
      , unofficialNames = [ "dolno??l??skie", "Dolno??l??skie" ]
      }
    , { name = "Kujawsko-pomorskie"
      , code = "KP"
      , unofficialNames = [ "kujawsko-pomorskie", "Kujawsko-pomorskie" ]
      }
    , { name = "Lubelskie"
      , code = "LU"
      , unofficialNames = [ "lubelskie", "Lubelskie" ]
      }
    , { name = "Lubuskie"
      , code = "LB"
      , unofficialNames = [ "lubuskie", "Lubuskie" ]
      }
    , { name = "????dzkie"
      , code = "LD"
      , unofficialNames = [ "????dzkie", "????dzkie" ]
      }
    , { name = "Ma??opolskie"
      , code = "MA"
      , unofficialNames = [ "ma??opolskie", "Ma??opolskie" ]
      }
    , { name = "Mazowieckie"
      , code = "MZ"
      , unofficialNames = [ "mazowieckie", "Mazowieckie" ]
      }
    , { name = "Opolskie"
      , code = "OP"
      , unofficialNames = [ "opolskie", "Opolskie" ]
      }
    , { name = "Podkarpackie"
      , code = "PK"
      , unofficialNames = [ "podkarpackie", "Podkarpackie" ]
      }
    , { name = "Podlaskie"
      , code = "PD"
      , unofficialNames = [ "podlaskie", "Podlaskie" ]
      }
    , { name = "Pomorskie"
      , code = "PM"
      , unofficialNames = [ "pomorskie", "Pomorskie" ]
      }
    , { name = "??l??skie"
      , code = "SL"
      , unofficialNames = [ "??l??skie", "??l??skie" ]
      }
    , { name = "??wi??tokrzyskie"
      , code = "SK"
      , unofficialNames = [ "??wi??tokrzyskie", "??wi??tokrzyskie" ]
      }
    , { name = "Warmi??sko-mazurskie"
      , code = "WN"
      , unofficialNames = [ "warmi??sko-mazurskie", "Warmi??sko-mazurskie" ]
      }
    , { name = "Wielkopolskie"
      , code = "WP"
      , unofficialNames = [ "wielkopolskie", "Wielkopolskie" ]
      }
    , { name = "Zachodniopomorskie"
      , code = "ZP"
      , unofficialNames = [ "zachodniopomorskie", "Zachodniopomorskie" ]
      }
    ]


{-| -}
countryPMSubdivisions : List Subdivision
countryPMSubdivisions =
    [ { name = "Miquelon"
      , code = "M"
      , unofficialNames = [ "Miquelon" ]
      }
    , { name = "Saint Pierre"
      , code = "P"
      , unofficialNames = [ "Saint Pierre" ]
      }
    ]


{-| -}
countryPRSubdivisions : List Subdivision
countryPRSubdivisions =
    [ { name = "Adjuntas"
      , code = "1"
      , unofficialNames = [ "Adjuntas" ]
      }
    , { name = "Aguada"
      , code = "2"
      , unofficialNames = [ "Aguada" ]
      }
    , { name = "Aguadilla"
      , code = "3"
      , unofficialNames = [ "Aguadilla" ]
      }
    , { name = "Aguas Buenas"
      , code = "4"
      , unofficialNames = [ "Aguas Buenas" ]
      }
    , { name = "Aibonito"
      , code = "5"
      , unofficialNames = [ "Aibonito" ]
      }
    , { name = "Anasco"
      , code = "6"
      , unofficialNames = [ "Anasco" ]
      }
    , { name = "Arecibo"
      , code = "7"
      , unofficialNames = [ "Arecibo" ]
      }
    , { name = "Arroyo"
      , code = "8"
      , unofficialNames = [ "Arroyo" ]
      }
    , { name = "Barceloneta"
      , code = "9"
      , unofficialNames = [ "Barceloneta" ]
      }
    , { name = "Barranquitas"
      , code = "10"
      , unofficialNames = [ "Barranquitas" ]
      }
    , { name = "Bayamon"
      , code = "11"
      , unofficialNames = [ "Bayamon" ]
      }
    , { name = "Cabo Rojo"
      , code = "12"
      , unofficialNames = [ "Cabo Rojo" ]
      }
    , { name = "Caguas"
      , code = "13"
      , unofficialNames = [ "Caguas" ]
      }
    , { name = "Camuy"
      , code = "14"
      , unofficialNames = [ "Camuy" ]
      }
    , { name = "Canovanas"
      , code = "15"
      , unofficialNames = [ "Canovanas" ]
      }
    , { name = "Carolina"
      , code = "16"
      , unofficialNames = [ "Carolina" ]
      }
    , { name = "Catano"
      , code = "17"
      , unofficialNames = [ "Catano" ]
      }
    , { name = "Cayey"
      , code = "18"
      , unofficialNames = [ "Cayey" ]
      }
    , { name = "Ceiba"
      , code = "19"
      , unofficialNames = [ "Ceiba" ]
      }
    , { name = "Ciales"
      , code = "20"
      , unofficialNames = [ "Ciales" ]
      }
    , { name = "Cidra"
      , code = "21"
      , unofficialNames = [ "Cidra" ]
      }
    , { name = "Coamo"
      , code = "22"
      , unofficialNames = [ "Coamo" ]
      }
    , { name = "Comerio"
      , code = "23"
      , unofficialNames = [ "Comerio" ]
      }
    , { name = "Corozal"
      , code = "24"
      , unofficialNames = [ "Corozal" ]
      }
    , { name = "Culebra"
      , code = "25"
      , unofficialNames = [ "Culebra" ]
      }
    , { name = "Dorado"
      , code = "26"
      , unofficialNames = [ "Dorado" ]
      }
    , { name = "Fajardo"
      , code = "27"
      , unofficialNames = [ "Fajardo" ]
      }
    , { name = "Florida"
      , code = "28"
      , unofficialNames = [ "Florida" ]
      }
    , { name = "Guanica"
      , code = "29"
      , unofficialNames = [ "Guanica" ]
      }
    , { name = "Guayama"
      , code = "30"
      , unofficialNames = [ "Guayama" ]
      }
    , { name = "Guayanilla"
      , code = "31"
      , unofficialNames = [ "Guayanilla" ]
      }
    , { name = "Guaynabo"
      , code = "32"
      , unofficialNames = [ "Guaynabo" ]
      }
    , { name = "Gurabo"
      , code = "33"
      , unofficialNames = [ "Gurabo" ]
      }
    , { name = "Hatillo"
      , code = "34"
      , unofficialNames = [ "Hatillo" ]
      }
    , { name = "Hormigueros"
      , code = "35"
      , unofficialNames = [ "Hormigueros" ]
      }
    , { name = "Humacao"
      , code = "36"
      , unofficialNames = [ "Humacao" ]
      }
    , { name = "Isabela"
      , code = "37"
      , unofficialNames = [ "Isabela" ]
      }
    , { name = "Jayuya"
      , code = "38"
      , unofficialNames = [ "Jayuya" ]
      }
    , { name = "Juana Diaz"
      , code = "39"
      , unofficialNames = [ "Juana Diaz" ]
      }
    , { name = "Juncos"
      , code = "40"
      , unofficialNames = [ "Juncos" ]
      }
    , { name = "Lajas"
      , code = "41"
      , unofficialNames = [ "Lajas" ]
      }
    , { name = "Lares"
      , code = "42"
      , unofficialNames = [ "Lares" ]
      }
    , { name = "Las Marias"
      , code = "43"
      , unofficialNames = [ "Las Marias" ]
      }
    , { name = "Las Piedras"
      , code = "44"
      , unofficialNames = [ "Las Piedras" ]
      }
    , { name = "Loiza"
      , code = "45"
      , unofficialNames = [ "Loiza" ]
      }
    , { name = "Luquillo"
      , code = "46"
      , unofficialNames = [ "Luquillo" ]
      }
    , { name = "Manati"
      , code = "47"
      , unofficialNames = [ "Manati" ]
      }
    , { name = "Maricao"
      , code = "48"
      , unofficialNames = [ "Maricao" ]
      }
    , { name = "Maunabo"
      , code = "49"
      , unofficialNames = [ "Maunabo" ]
      }
    , { name = "Mayaguez"
      , code = "50"
      , unofficialNames = [ "Mayaguez" ]
      }
    , { name = "Moca"
      , code = "51"
      , unofficialNames = [ "Moca" ]
      }
    , { name = "Morovis"
      , code = "52"
      , unofficialNames = [ "Morovis" ]
      }
    , { name = "Naguabo"
      , code = "53"
      , unofficialNames = [ "Naguabo" ]
      }
    , { name = "Naranjito"
      , code = "54"
      , unofficialNames = [ "Naranjito" ]
      }
    , { name = "Orocovis"
      , code = "55"
      , unofficialNames = [ "Orocovis" ]
      }
    , { name = "Patillas"
      , code = "56"
      , unofficialNames = [ "Patillas" ]
      }
    , { name = "Penuelas"
      , code = "57"
      , unofficialNames = [ "Penuelas" ]
      }
    , { name = "Ponce"
      , code = "58"
      , unofficialNames = [ "Ponce" ]
      }
    , { name = "Quebradillas"
      , code = "59"
      , unofficialNames = [ "Quebradillas" ]
      }
    , { name = "Rincon"
      , code = "60"
      , unofficialNames = [ "Rincon" ]
      }
    , { name = "Rio Grande"
      , code = "61"
      , unofficialNames = [ "Rio Grande" ]
      }
    , { name = "Sabana Grande"
      , code = "62"
      , unofficialNames = [ "Sabana Grande" ]
      }
    , { name = "Salinas"
      , code = "63"
      , unofficialNames = [ "Salinas" ]
      }
    , { name = "San German"
      , code = "64"
      , unofficialNames = [ "San German" ]
      }
    , { name = "San Juan"
      , code = "65"
      , unofficialNames = [ "San Juan" ]
      }
    , { name = "San Lorenzo"
      , code = "66"
      , unofficialNames = [ "San Lorenzo" ]
      }
    , { name = "San Sebastian"
      , code = "67"
      , unofficialNames = [ "San Sebastian" ]
      }
    , { name = "Santa Isabel"
      , code = "68"
      , unofficialNames = [ "Santa Isabel" ]
      }
    , { name = "Toa Alta"
      , code = "69"
      , unofficialNames = [ "Toa Alta" ]
      }
    , { name = "Toa Baja"
      , code = "70"
      , unofficialNames = [ "Toa Baja" ]
      }
    , { name = "Trujillo Alto"
      , code = "71"
      , unofficialNames = [ "Trujillo Alto" ]
      }
    , { name = "Utuado"
      , code = "72"
      , unofficialNames = [ "Utuado" ]
      }
    , { name = "Vega Alta"
      , code = "73"
      , unofficialNames = [ "Vega Alta" ]
      }
    , { name = "Vega Baja"
      , code = "74"
      , unofficialNames = [ "Vega Baja" ]
      }
    , { name = "Vieques"
      , code = "75"
      , unofficialNames = [ "Vieques" ]
      }
    , { name = "Villalba"
      , code = "76"
      , unofficialNames = [ "Villalba" ]
      }
    , { name = "Yabucoa"
      , code = "77"
      , unofficialNames = [ "Yabucoa" ]
      }
    , { name = "Yauco"
      , code = "78"
      , unofficialNames = [ "Yauco" ]
      }
    ]


{-| -}
countryPSSubdivisions : List Subdivision
countryPSSubdivisions =
    []


{-| -}
countryPTSubdivisions : List Subdivision
countryPTSubdivisions =
    [ { name = "Aveiro"
      , code = "01"
      , unofficialNames = [ "Aveiro" ]
      }
    , { name = "Beja"
      , code = "02"
      , unofficialNames = [ "Beja" ]
      }
    , { name = "Braga"
      , code = "03"
      , unofficialNames = [ "Braga" ]
      }
    , { name = "Bragan??a"
      , code = "04"
      , unofficialNames = [ "Bragan??a" ]
      }
    , { name = "Castelo Branco"
      , code = "05"
      , unofficialNames = [ "Castelo Branco" ]
      }
    , { name = "Coimbra"
      , code = "06"
      , unofficialNames = [ "Coimbra" ]
      }
    , { name = "??vora"
      , code = "07"
      , unofficialNames = [ "??vora" ]
      }
    , { name = "Faro"
      , code = "08"
      , unofficialNames = [ "Faro" ]
      }
    , { name = "Guarda"
      , code = "09"
      , unofficialNames = [ "Guarda" ]
      }
    , { name = "Leiria"
      , code = "10"
      , unofficialNames = [ "Leiria" ]
      }
    , { name = "Lisboa"
      , code = "11"
      , unofficialNames = [ "Lisboa" ]
      }
    , { name = "Portalegre"
      , code = "12"
      , unofficialNames = [ "Portalegre" ]
      }
    , { name = "Porto"
      , code = "13"
      , unofficialNames = [ "Porto" ]
      }
    , { name = "Santar??m"
      , code = "14"
      , unofficialNames = [ "Santar??m" ]
      }
    , { name = "Set??bal"
      , code = "15"
      , unofficialNames = [ "Set??bal" ]
      }
    , { name = "Viana do Castelo"
      , code = "16"
      , unofficialNames = [ "Viana do Castelo" ]
      }
    , { name = "Vila Real"
      , code = "17"
      , unofficialNames = [ "Vila Real" ]
      }
    , { name = "Viseu"
      , code = "18"
      , unofficialNames = [ "Viseu" ]
      }
    , { name = "A??ores"
      , code = "20"
      , unofficialNames = [ "A??ores" ]
      }
    , { name = "Madeira"
      , code = "30"
      , unofficialNames = [ "Madeira" ]
      }
    ]


{-| -}
countryPWSubdivisions : List Subdivision
countryPWSubdivisions =
    [ { name = "Aimeliik"
      , code = "002"
      , unofficialNames = [ "Aimeliik" ]
      }
    , { name = "Airai"
      , code = "004"
      , unofficialNames = [ "Airai" ]
      }
    , { name = "Angaur"
      , code = "010"
      , unofficialNames = [ "Angaur" ]
      }
    , { name = "Hatobohei"
      , code = "050"
      , unofficialNames = [ "Hatobohei" ]
      }
    , { name = "Kayangel"
      , code = "100"
      , unofficialNames = [ "Kayangel" ]
      }
    , { name = "Koror"
      , code = "150"
      , unofficialNames = [ "Koror" ]
      }
    , { name = "Melekeok"
      , code = "212"
      , unofficialNames = [ "Melekeok" ]
      }
    , { name = "Ngaraard"
      , code = "214"
      , unofficialNames = [ "Ngaraard" ]
      }
    , { name = "Ngarchelong"
      , code = "218"
      , unofficialNames = [ "Ngarchelong" ]
      }
    , { name = "Ngardmau"
      , code = "222"
      , unofficialNames = [ "Ngardmau" ]
      }
    , { name = "Ngatpang"
      , code = "224"
      , unofficialNames = [ "Ngatpang" ]
      }
    , { name = "Ngchesar"
      , code = "226"
      , unofficialNames = [ "Ngchesar" ]
      }
    , { name = "Ngeremlengui"
      , code = "227"
      , unofficialNames = [ "Ngeremlengui" ]
      }
    , { name = "Ngiwal"
      , code = "228"
      , unofficialNames = [ "Ngiwal" ]
      }
    , { name = "Peleliu"
      , code = "350"
      , unofficialNames = [ "Peleliu" ]
      }
    , { name = "Sonsorol"
      , code = "370"
      , unofficialNames = [ "Sonsorol" ]
      }
    ]


{-| -}
countryPYSubdivisions : List Subdivision
countryPYSubdivisions =
    [ { name = "Concepci??n"
      , code = "1"
      , unofficialNames = [ "Concepci??n" ]
      }
    , { name = "Alto Paran??"
      , code = "10"
      , unofficialNames = [ "Alto Paran??" ]
      }
    , { name = "Central"
      , code = "11"
      , unofficialNames = [ "Central" ]
      }
    , { name = "??eembuc??"
      , code = "12"
      , unofficialNames = [ "Neembuc??" ]
      }
    , { name = "Amambay"
      , code = "13"
      , unofficialNames = [ "Amambay" ]
      }
    , { name = "Canindey??"
      , code = "14"
      , unofficialNames = [ "Canindey??", "Canindiy??" ]
      }
    , { name = "Presidente Hayes"
      , code = "15"
      , unofficialNames = [ "Presidente Hayes" ]
      }
    , { name = "Alto Paraguay"
      , code = "16"
      , unofficialNames = [ "Alto Paraguay" ]
      }
    , { name = "Boquer??n"
      , code = "19"
      , unofficialNames = [ "Boquer??n" ]
      }
    , { name = "San Pedro"
      , code = "2"
      , unofficialNames = [ "San Pedro" ]
      }
    , { name = "Cordillera"
      , code = "3"
      , unofficialNames = [ "Cordillera" ]
      }
    , { name = "Guair??"
      , code = "4"
      , unofficialNames = [ "Guair??" ]
      }
    , { name = "Caaguaz??"
      , code = "5"
      , unofficialNames = [ "Caaguaz??" ]
      }
    , { name = "Caazap??"
      , code = "6"
      , unofficialNames = [ "Caazap??" ]
      }
    , { name = "Itap??a"
      , code = "7"
      , unofficialNames = [ "Itap??a" ]
      }
    , { name = "Misiones"
      , code = "8"
      , unofficialNames = [ "Misiones" ]
      }
    , { name = "Paraguar??"
      , code = "9"
      , unofficialNames = [ "Paraguar??" ]
      }
    , { name = "Asunci??n"
      , code = "ASU"
      , unofficialNames = [ "Asunci??n" ]
      }
    ]


{-| -}
countryQASubdivisions : List Subdivision
countryQASubdivisions =
    [ { name = "Ad Dawhah"
      , code = "DA"
      , unofficialNames = [ "Dawhah", "Doha", "ad-Dawhah", "ad-Dawh??ah", "Doha", "Doha", "Doha" ]
      }
    , { name = "Al Ghuwayriyah"
      , code = "GH"
      , unofficialNames = [ "al-Ghuwayriyah" ]
      }
    , { name = "Jariyan al Batnah"
      , code = "JB"
      , unofficialNames = [ "Jariyan al Batnah" ]
      }
    , { name = "Al Jumayliyah"
      , code = "JU"
      , unofficialNames = [ "al-Jumayliyah" ]
      }
    , { name = "Al Khawr"
      , code = "KH"
      , unofficialNames = [ "H????r", "al-Khawr", "al-Khour", "al-H??awr" ]
      }
    , { name = "Madinat ash Shamal"
      , code = "MS"
      , unofficialNames = [ "ash-Shamal" ]
      }
    , { name = "Ar Rayyan"
      , code = "RA"
      , unofficialNames = [ "Rayyan", "ar-Rayyan" ]
      }
    , { name = "Umm Salal"
      , code = "US"
      , unofficialNames = [ "Umm Shalal" ]
      }
    , { name = "Al Wakrah"
      , code = "WA"
      , unofficialNames = [ "Wakra", "Wakrah" ]
      }
    , { name = "Umm Sa'id"
      , code = "X1~"
      , unofficialNames = [ "Mesaieed" ]
      }
    ]


{-| -}
countryRESubdivisions : List Subdivision
countryRESubdivisions =
    []


{-| -}
countryROSubdivisions : List Subdivision
countryROSubdivisions =
    [ { name = "Alba"
      , code = "AB"
      , unofficialNames = [ "Alba" ]
      }
    , { name = "Arges"
      , code = "AG"
      , unofficialNames = [ "Arges" ]
      }
    , { name = "Arad"
      , code = "AR"
      , unofficialNames = [ "Arad" ]
      }
    , { name = "Bucuresti"
      , code = "B"
      , unofficialNames = [ "Bucuresti", "Bucure??ti", "Bukarest", "Bucarest", "Bucarest" ]
      }
    , { name = "Bacau"
      , code = "BC"
      , unofficialNames = [ "Bacau" ]
      }
    , { name = "Bihor"
      , code = "BH"
      , unofficialNames = [ "Bihor" ]
      }
    , { name = "Bistrita-Nasaud"
      , code = "BN"
      , unofficialNames = [ "Bistrita-Nasaud" ]
      }
    , { name = "Braila"
      , code = "BR"
      , unofficialNames = [ "Braila" ]
      }
    , { name = "Botosani"
      , code = "BT"
      , unofficialNames = [ "Botosani" ]
      }
    , { name = "Brasov"
      , code = "BV"
      , unofficialNames = [ "Brasov" ]
      }
    , { name = "Buzau"
      , code = "BZ"
      , unofficialNames = [ "Buzau" ]
      }
    , { name = "Cluj"
      , code = "CJ"
      , unofficialNames = [ "Cluj" ]
      }
    , { name = "Calarasi"
      , code = "CL"
      , unofficialNames = [ "Calarasi" ]
      }
    , { name = "Caras-Severin"
      , code = "CS"
      , unofficialNames = [ "Caras-Severin" ]
      }
    , { name = "Constanta"
      , code = "CT"
      , unofficialNames = [ "Constanta", "Konstanza" ]
      }
    , { name = "Covasna"
      , code = "CV"
      , unofficialNames = [ "Covasna" ]
      }
    , { name = "D??mbovita"
      , code = "DB"
      , unofficialNames = [ "Dambovita", "Dimbovita", "D??mbovi??a" ]
      }
    , { name = "Dolj"
      , code = "DJ"
      , unofficialNames = [ "Dolj" ]
      }
    , { name = "Gorj"
      , code = "GJ"
      , unofficialNames = [ "Gorj" ]
      }
    , { name = "Galati"
      , code = "GL"
      , unofficialNames = [ "Galati", "Galatz" ]
      }
    , { name = "Giurgiu"
      , code = "GR"
      , unofficialNames = [ "Giurgiu" ]
      }
    , { name = "Hunedoara"
      , code = "HD"
      , unofficialNames = [ "Hunedoara" ]
      }
    , { name = "Harghita"
      , code = "HR"
      , unofficialNames = [ "Harghita" ]
      }
    , { name = "Ilfov"
      , code = "IF"
      , unofficialNames = [ "Sectorul Agricol Ilfov" ]
      }
    , { name = "Ialomita"
      , code = "IL"
      , unofficialNames = [ "Ialomita" ]
      }
    , { name = "Iasi"
      , code = "IS"
      , unofficialNames = [ "Iasi", "Jasch", "Jassy", "Yassy" ]
      }
    , { name = "Mehedinti"
      , code = "MH"
      , unofficialNames = [ "Mehedinti" ]
      }
    , { name = "Maramures"
      , code = "MM"
      , unofficialNames = [ "Maramures" ]
      }
    , { name = "Mures"
      , code = "MS"
      , unofficialNames = [ "Mures" ]
      }
    , { name = "Neamt"
      , code = "NT"
      , unofficialNames = [ "Neamt" ]
      }
    , { name = "Olt"
      , code = "OT"
      , unofficialNames = [ "Olt" ]
      }
    , { name = "Prahova"
      , code = "PH"
      , unofficialNames = [ "Prahova" ]
      }
    , { name = "Sibiu"
      , code = "SB"
      , unofficialNames = [ "Sibiu" ]
      }
    , { name = "Salaj"
      , code = "SJ"
      , unofficialNames = [ "Salaj" ]
      }
    , { name = "Satu Mare"
      , code = "SM"
      , unofficialNames = [ "Satu Mare" ]
      }
    , { name = "Suceava"
      , code = "SV"
      , unofficialNames = [ "Suceava" ]
      }
    , { name = "Tulcea"
      , code = "TL"
      , unofficialNames = [ "Tulcea" ]
      }
    , { name = "Timis"
      , code = "TM"
      , unofficialNames = [ "Timis" ]
      }
    , { name = "Teleorman"
      , code = "TR"
      , unofficialNames = [ "Teleorman" ]
      }
    , { name = "V??lcea"
      , code = "VL"
      , unofficialNames = [ "V??lcea" ]
      }
    , { name = "Vrancea"
      , code = "VN"
      , unofficialNames = [ "Vrancea" ]
      }
    , { name = "Vaslui"
      , code = "VS"
      , unofficialNames = [ "Vaslui" ]
      }
    ]


{-| -}
countryRSSubdivisions : List Subdivision
countryRSSubdivisions =
    [ { name = "Belgrade"
      , code = "00"
      , unofficialNames = [ "Belgrade" ]
      }
    , { name = "Severna Backa"
      , code = "01"
      , unofficialNames = [ "Severna Backa" ]
      }
    , { name = "Srednji Banat"
      , code = "02"
      , unofficialNames = [ "Srednji Banat" ]
      }
    , { name = "Severni Banat"
      , code = "03"
      , unofficialNames = [ "Severni Banat" ]
      }
    , { name = "Ju??ni Banat"
      , code = "04"
      , unofficialNames = [ "Ju??ni Banat" ]
      }
    , { name = "Zapadna Backa"
      , code = "05"
      , unofficialNames = [ "Zapadna Backa" ]
      }
    , { name = "Ju??na Backa"
      , code = "06"
      , unofficialNames = [ "Ju??na Backa" ]
      }
    , { name = "Srem"
      , code = "07"
      , unofficialNames = [ "Srem" ]
      }
    , { name = "Macva"
      , code = "08"
      , unofficialNames = [ "Macva" ]
      }
    , { name = "Kolubara"
      , code = "09"
      , unofficialNames = [ "Kolubara" ]
      }
    , { name = "Podunavlje"
      , code = "10"
      , unofficialNames = [ "Podunavlje" ]
      }
    , { name = "Branicevo"
      , code = "11"
      , unofficialNames = [ "Branicevo" ]
      }
    , { name = "??umadija"
      , code = "12"
      , unofficialNames = [ "??umadija" ]
      }
    , { name = "Pomoravlje"
      , code = "13"
      , unofficialNames = [ "Pomoravlje" ]
      }
    , { name = "Bor"
      , code = "14"
      , unofficialNames = [ "Bor" ]
      }
    , { name = "Zajecar"
      , code = "15"
      , unofficialNames = [ "Zajecar" ]
      }
    , { name = "Zlatibor"
      , code = "16"
      , unofficialNames = [ "Zlatibor" ]
      }
    , { name = "Moravica"
      , code = "17"
      , unofficialNames = [ "Moravica" ]
      }
    , { name = "Ra??ka"
      , code = "18"
      , unofficialNames = [ "Ra??ka" ]
      }
    , { name = "Rasina"
      , code = "19"
      , unofficialNames = [ "Rasina" ]
      }
    , { name = "Ni??ava"
      , code = "20"
      , unofficialNames = [ "Ni??ava" ]
      }
    , { name = "Toplica"
      , code = "21"
      , unofficialNames = [ "Toplica" ]
      }
    , { name = "Pirot"
      , code = "22"
      , unofficialNames = [ "Pirot" ]
      }
    , { name = "Jablanica"
      , code = "23"
      , unofficialNames = [ "Jablanica" ]
      }
    , { name = "Pcinja"
      , code = "24"
      , unofficialNames = [ "Pcinja" ]
      }
    , { name = "Kosovo"
      , code = "25"
      , unofficialNames = [ "Kosovo" ]
      }
    , { name = "Pec??"
      , code = "26"
      , unofficialNames = [ "Pec??" ]
      }
    , { name = "Prizren"
      , code = "27"
      , unofficialNames = [ "Prizren" ]
      }
    , { name = "Kosovska Mitrovica"
      , code = "28"
      , unofficialNames = [ "Kosovska Mitrovica" ]
      }
    , { name = "Kosovo-Pomoravlje"
      , code = "29"
      , unofficialNames = [ "Kosovo-Pomoravlje" ]
      }
    ]


{-| -}
countryRUSubdivisions : List Subdivision
countryRUSubdivisions =
    [ { name = "Adygeya, Respublika"
      , code = "AD"
      , unofficialNames = [ "Adygei Republic", "Adygeja" ]
      }
    , { name = "Altay, Respublika"
      , code = "AL"
      , unofficialNames = [ "Altaj", "Altay", "Gorno-Altaj" ]
      }
    , { name = "Altayskiy kray"
      , code = "ALT"
      , unofficialNames = [ "Altai Kray", "Altajskij Kray", "Altajskiy Kraj", "Altaj" ]
      }
    , { name = "Amurskaya oblast'"
      , code = "AMU"
      , unofficialNames = [ "Amurskaja Oblast" ]
      }
    , { name = "Arkhangel'skaya oblast'"
      , code = "ARK"
      , unofficialNames = [ "Arhangelskaja Oblast", "Arhangelsk" ]
      }
    , { name = "Astrakhanskaya oblast'"
      , code = "AST"
      , unofficialNames = [ "Astrahanska Oblast", "Astrahan" ]
      }
    , { name = "Bashkortostan, Respublika"
      , code = "BA"
      , unofficialNames = [ "Ba??kortostan" ]
      }
    , { name = "Belgorodskaya oblast'"
      , code = "BEL"
      , unofficialNames = [ "Belgorodskaja Oblast" ]
      }
    , { name = "Bryanskaya oblast'"
      , code = "BRY"
      , unofficialNames = [ "Brjanskaja Oblast", "Brjansk" ]
      }
    , { name = "Buryatiya, Respublika"
      , code = "BU"
      , unofficialNames = [ "Buryat Republic", "Burjatija" ]
      }
    , { name = "Chechenskaya Respublika"
      , code = "CE"
      , unofficialNames = [ "Chechen", "Chechenia", "Ichkeria", "I??keria", "??e??ens", "??e??enskaja Respublika", "??e??enija" ]
      }
    , { name = "Chelyabinskaya oblast'"
      , code = "CHE"
      , unofficialNames = [ "Cheljabinsk", "??eljabinskaja Oblast", "??eljabinsk" ]
      }
    , { name = "Chukotskiy avtonomnyy okrug"
      , code = "CHU"
      , unofficialNames = [ "Chuckchi", "??ukotskij Avtonomnyj Okrug", "??uk??i", "??ukotka" ]
      }
    , { name = "Chuvashskaya Respublika"
      , code = "CU"
      , unofficialNames = [ "Chuvash Republic", "Chuvashskaya Respublika", "??uva??skaja Respublika", "??uva??ija" ]
      }
    , { name = "Dagestan, Respublika"
      , code = "DA"
      , unofficialNames = [ "Dagestan, Respublika" ]
      }
    , { name = "Ingushskaya Respublika [Respublika Ingushetiya]"
      , code = "IN"
      , unofficialNames = [ "Ingushetija", "Ingu??etija" ]
      }
    , { name = "Irkutskaya oblast'"
      , code = "IRK"
      , unofficialNames = [ "Irkutskaja Oblast" ]
      }
    , { name = "Ivanovskaya oblast'"
      , code = "IVA"
      , unofficialNames = [ "Ivanovskaja Oblast" ]
      }
    , { name = "Kamchatskaya oblast'"
      , code = "KAM"
      , unofficialNames = [ "Kamchatskaya Oblast", "Kam??atskaja Oblast", "Kam??atka" ]
      }
    , { name = "Kabardino-Balkarskaya Respublika"
      , code = "KB"
      , unofficialNames = [ "Kabardino-Balkarian Republic", "Kabardino-Balkarskaja Respublika", "Kabardino-Balkarija" ]
      }
    , { name = "Karachayevo-Cherkesskaya Respublika"
      , code = "KC"
      , unofficialNames = [ "Karachay-Cherkessian", "Kara??ajevo-??erkesskaja Respublika", "Kara??aj-??erkessija" ]
      }
    , { name = "Krasnodarskiy kray"
      , code = "KDA"
      , unofficialNames = [ "Krasnodarskij Kraj" ]
      }
    , { name = "Kemerovskaya oblast'"
      , code = "KEM"
      , unofficialNames = [ "Kemerovskaja Oblast" ]
      }
    , { name = "Kaliningradskaya oblast'"
      , code = "KGD"
      , unofficialNames = [ "Kaliningradskaja Oblast" ]
      }
    , { name = "Kurganskaya oblast'"
      , code = "KGN"
      , unofficialNames = [ "Kurganskaja Oblast" ]
      }
    , { name = "Khabarovskiy kray"
      , code = "KHA"
      , unofficialNames = [ "Habarovskij Kray", "Habarovsk" ]
      }
    , { name = "Khanty-Mansiyskiy avtonomnyy okrug [Yugra]"
      , code = "KHM"
      , unofficialNames = [ "Hanty-Mansijskij Avtonomnyj Okrug", "Hanty-Mansija" ]
      }
    , { name = "Kirovskaya oblast'"
      , code = "KIR"
      , unofficialNames = [ "Kirovskaja Oblast" ]
      }
    , { name = "Khakasiya, Respublika"
      , code = "KK"
      , unofficialNames = [ "Khakass Republic", "Hakasija" ]
      }
    , { name = "Kalmykiya, Respublika"
      , code = "KL"
      , unofficialNames = [ "Halmg-Tang??", "Kalmyk Republic", "Khalmg-Tangch", "Kalmykija" ]
      }
    , { name = "Kaluzhskaya oblast'"
      , code = "KLU"
      , unofficialNames = [ "Kaluzhskaya Oblast", "Kalu??skaja Oblast" ]
      }
    , { name = "Komi, Respublika"
      , code = "KO"
      , unofficialNames = [ "Komi, Respublika" ]
      }
    , { name = "Kostromskaya oblast'"
      , code = "KOS"
      , unofficialNames = [ "Kostromskaja Oblast" ]
      }
    , { name = "Kareliya, Respublika"
      , code = "KR"
      , unofficialNames = [ "Karelian Republic", "Karelija" ]
      }
    , { name = "Kurskaya oblast'"
      , code = "KRS"
      , unofficialNames = [ "Kurskaja Oblast" ]
      }
    , { name = "Krasnoyarskiy kray"
      , code = "KYA"
      , unofficialNames = [ "Krasnojarsk", "Krasnojarskij Kraj", "Krasnojarsk" ]
      }
    , { name = "Leningradskaya oblast'"
      , code = "LEN"
      , unofficialNames = [ "Leningradskaja Oblast" ]
      }
    , { name = "Lipetskaya oblast'"
      , code = "LIP"
      , unofficialNames = [ "Lipeckaja Oblast", "Lipeck" ]
      }
    , { name = "Magadanskaya oblast'"
      , code = "MAG"
      , unofficialNames = [ "Magadanskaja Oblast" ]
      }
    , { name = "Mariy El, Respublika"
      , code = "ME"
      , unofficialNames = [ "Mariy El", "Marij El" ]
      }
    , { name = "Mordoviya, Respublika"
      , code = "MO"
      , unofficialNames = [ "Mordovian Republic", "Mordovija" ]
      }
    , { name = "Moskovskaya oblast'"
      , code = "MOS"
      , unofficialNames = [ "Moskovskaja Oblast" ]
      }
    , { name = "Moskva"
      , code = "MOW"
      , unofficialNames = [ "Moskva", "Moskau", "Moscou", "Mosc??" ]
      }
    , { name = "Murmanskaya oblast'"
      , code = "MUR"
      , unofficialNames = [ "Murmanskaja Oblast" ]
      }
    , { name = "Nenetskiy avtonomnyy okrug"
      , code = "NEN"
      , unofficialNames = [ "Nenetskij Avtonomnyj Okrug" ]
      }
    , { name = "Novgorodskaya oblast'"
      , code = "NGR"
      , unofficialNames = [ "Novgorodskaja Oblast" ]
      }
    , { name = "Nizhegorodskaya oblast'"
      , code = "NIZ"
      , unofficialNames = [ "Gorki", "Gorkij", "Gorky", "Nizhegorodskaya Oblast", "Ni??egorodskaja Oblast", "Ni??nij Novgorod" ]
      }
    , { name = "Novosibirskaya oblast'"
      , code = "NVS"
      , unofficialNames = [ "Novosibirskaja Oblast" ]
      }
    , { name = "Omskaya oblast'"
      , code = "OMS"
      , unofficialNames = [ "Omskaja Oblast" ]
      }
    , { name = "Orenburgskaya oblast'"
      , code = "ORE"
      , unofficialNames = [ "Orenburgskaja Oblast" ]
      }
    , { name = "Orlovskaya oblast'"
      , code = "ORL"
      , unofficialNames = [ "Orlovskaja Oblast", "Orjol" ]
      }
    , { name = "Perm"
      , code = "PER"
      , unofficialNames = [ "Permskaja Oblast" ]
      }
    , { name = "Penzenskaya oblast'"
      , code = "PNZ"
      , unofficialNames = [ "Penzenskaja Oblast" ]
      }
    , { name = "Primorskiy kray"
      , code = "PRI"
      , unofficialNames = [ "Primorskij", "Primorskij Kraj", "Primorje" ]
      }
    , { name = "Pskovskaya oblast'"
      , code = "PSK"
      , unofficialNames = [ "Pihkva", "Pleskau", "Pskovskaja Oblast" ]
      }
    , { name = "Rostovskaya oblast'"
      , code = "ROS"
      , unofficialNames = [ "Rostovskaja Oblast" ]
      }
    , { name = "Ryazanskaya oblast'"
      , code = "RYA"
      , unofficialNames = [ "Rjazanskaja Oblast", "Rjazan" ]
      }
    , { name = "Sakha, Respublika [Yakutiya]"
      , code = "SA"
      , unofficialNames = [ "Jakutija", "Sakha", "Yakutsk-Sakha", "Saha" ]
      }
    , { name = "Sakhalinskaya oblast'"
      , code = "SAK"
      , unofficialNames = [ "Sahalinskaya Oblast", "Sahalin" ]
      }
    , { name = "Samarskaya oblast'"
      , code = "SAM"
      , unofficialNames = [ "Samarskaja Oblast" ]
      }
    , { name = "Saratovskaya oblast'"
      , code = "SAR"
      , unofficialNames = [ "Saratovskaja Oblast" ]
      }
    , { name = "Severnaya Osetiya, Respublika [Alaniya] [Respublika Severnaya Osetiya-Alaniya]"
      , code = "SE"
      , unofficialNames = [ "Alania", "North Ossetian Republic", "Osetija", "Alanija" ]
      }
    , { name = "Smolenskaya oblast'"
      , code = "SMO"
      , unofficialNames = [ "Smolenskaja Oblast" ]
      }
    , { name = "Sankt-Peterburg"
      , code = "SPE"
      , unofficialNames = [ "San Pietroburgo", "Sankt-Peterburg", "Sankt Petersburg", "Saint-P??tersbourg", "San Petersburgo" ]
      }
    , { name = "Stavropol'skiy kray"
      , code = "STA"
      , unofficialNames = [ "Stavropolskij Kraj" ]
      }
    , { name = "Sverdlovskaya oblast'"
      , code = "SVE"
      , unofficialNames = [ "Sverdlovskaja Oblast" ]
      }
    , { name = "Tatarstan, Respublika"
      , code = "TA"
      , unofficialNames = [ "Tatarstan, Respublika" ]
      }
    , { name = "Tambovskaya oblast'"
      , code = "TAM"
      , unofficialNames = [ "Tambovskaja Oblast" ]
      }
    , { name = "Tomskaya oblast'"
      , code = "TOM"
      , unofficialNames = [ "Tomskaja Oblast" ]
      }
    , { name = "Tul'skaya oblast'"
      , code = "TUL"
      , unofficialNames = [ "Tulskaja Oblast" ]
      }
    , { name = "Tverskaya oblast'"
      , code = "TVE"
      , unofficialNames = [ "Tverskaja Oblast" ]
      }
    , { name = "Tyva, Respublika [Tuva]"
      , code = "TY"
      , unofficialNames = [ "Tuva" ]
      }
    , { name = "Tyumenskaya oblast'"
      , code = "TYU"
      , unofficialNames = [ "Tjumenskaja Oblast", "Tumen", "Tjumen" ]
      }
    , { name = "Udmurtskaya Respublika"
      , code = "UD"
      , unofficialNames = [ "Udmurt Republic", "Udmurtskaya Respublika", "Udmurtija" ]
      }
    , { name = "Ul'yanovskaya oblast'"
      , code = "ULY"
      , unofficialNames = [ "Uljanovskaja Oblast", "Uljanovsk" ]
      }
    , { name = "Volgogradskaya oblast'"
      , code = "VGG"
      , unofficialNames = [ "Volgogradskaja Oblast" ]
      }
    , { name = "Vladimirskaya oblast'"
      , code = "VLA"
      , unofficialNames = [ "Vladimirskaja Oblast" ]
      }
    , { name = "Vologodskaya oblast'"
      , code = "VLG"
      , unofficialNames = [ "Vologodskaja Oblast" ]
      }
    , { name = "Voronezhskaya oblast'"
      , code = "VOR"
      , unofficialNames = [ "Vorone??skaja Oblast", "Vorone??" ]
      }
    , { name = "Yamalo-Nenetskiy avtonomnyy okrug"
      , code = "YAN"
      , unofficialNames = [ "Jamalija", "Jamalo-Nenetskij Avtonomnyj Okrug", "Jamalo-Nenets" ]
      }
    , { name = "Yaroslavskaya oblast'"
      , code = "YAR"
      , unofficialNames = [ "Jaroslavskaja Oblast", "Jaroslavl" ]
      }
    , { name = "Yevreyskaya avtonomnaya oblast'"
      , code = "YEV"
      , unofficialNames = [ "Jevrejskaja Oblast", "Jevrejskaja Respublika", "Jewish Autonomous Oblast", "Yevreyskaya Oblast", "Jevrej" ]
      }
    , { name = "Zabaykal'skij kray"
      , code = "ZAB"
      , unofficialNames = [ "Zabajkal'skij kraj", "Zabajkal'skij", "Zabaykal'skij kray" ]
      }
    ]


{-| -}
countryRWSubdivisions : List Subdivision
countryRWSubdivisions =
    [ { name = "Ville de Kigali"
      , code = "01"
      , unofficialNames = [ "Ville de Kigali" ]
      }
    , { name = "Est"
      , code = "02"
      , unofficialNames = [ "Est" ]
      }
    , { name = "Nord"
      , code = "03"
      , unofficialNames = [ "Nord" ]
      }
    , { name = "Ouest"
      , code = "04"
      , unofficialNames = [ "Ouest" ]
      }
    , { name = "Sud"
      , code = "05"
      , unofficialNames = [ "Sud" ]
      }
    ]


{-| -}
countrySASubdivisions : List Subdivision
countrySASubdivisions =
    [ { name = "Ar Riy?????"
      , code = "01"
      , unofficialNames = [ "ar-Riyad", "ar-Riy??d??", "Riad", "Riyadh", "Riad" ]
      }
    , { name = "Makkah al Mukarramah"
      , code = "02"
      , unofficialNames = [ "La Meca", "Mecca" ]
      }
    , { name = "Al Madinah"
      , code = "03"
      , unofficialNames = [ "Medina", "M??dine", "al-Madinah" ]
      }
    , { name = "Ash Sharqiyah"
      , code = "04"
      , unofficialNames = [ "Eastern", "ash-Sharqiyah" ]
      }
    , { name = "Al Qasim"
      , code = "05"
      , unofficialNames = [ "Qaseem" ]
      }
    , { name = "?????'il"
      , code = "06"
      , unofficialNames = [ "Hail" ]
      }
    , { name = "Tab??k"
      , code = "07"
      , unofficialNames = [ "Tabook" ]
      }
    , { name = "Al ???ud??d ash Sham??l??yah"
      , code = "08"
      , unofficialNames = [ "Northern", "al-Hudud ash-Shamaliyah" ]
      }
    , { name = "J??z??n"
      , code = "09"
      , unofficialNames = [ "Jizan" ]
      }
    , { name = "Najr??n"
      , code = "10"
      , unofficialNames = [ "Najran" ]
      }
    , { name = "Al B?????ah"
      , code = "11"
      , unofficialNames = [ "Baha" ]
      }
    , { name = "Al Jawf"
      , code = "12"
      , unofficialNames = [ "Al-Jouf" ]
      }
    , { name = "'As??r"
      , code = "14"
      , unofficialNames = [ "Aseer" ]
      }
    ]


{-| -}
countrySBSubdivisions : List Subdivision
countrySBSubdivisions =
    [ { name = "Central"
      , code = "CE"
      , unofficialNames = [ "Central" ]
      }
    , { name = "Choiseul"
      , code = "CH"
      , unofficialNames = [ "Lauru" ]
      }
    , { name = "Capital Territory (Honiara)"
      , code = "CT"
      , unofficialNames = [ "Capital Territory (Honiara)" ]
      }
    , { name = "Guadalcanal"
      , code = "GU"
      , unofficialNames = [ "Guadalcanal" ]
      }
    , { name = "Isabel"
      , code = "IS"
      , unofficialNames = [ "Isabel" ]
      }
    , { name = "Makira"
      , code = "MK"
      , unofficialNames = [ "San Crist??bal" ]
      }
    , { name = "Malaita"
      , code = "ML"
      , unofficialNames = [ "Mala" ]
      }
    , { name = "Rennell and Bellona"
      , code = "RB"
      , unofficialNames = [ "Rennell and Bellona" ]
      }
    , { name = "Temotu"
      , code = "TE"
      , unofficialNames = [ "Eastern Islands" ]
      }
    , { name = "Western"
      , code = "WE"
      , unofficialNames = [ "Western" ]
      }
    ]


{-| -}
countrySCSubdivisions : List Subdivision
countrySCSubdivisions =
    [ { name = "Anse aux Pins"
      , code = "01"
      , unofficialNames = [ "Anse aux Pins" ]
      }
    , { name = "Anse Boileau"
      , code = "02"
      , unofficialNames = [ "Anse Boileau" ]
      }
    , { name = "Anse ??toile"
      , code = "03"
      , unofficialNames = [ "Anse ??toile" ]
      }
    , { name = "Anse Louis"
      , code = "04"
      , unofficialNames = [ "Anse Louis" ]
      }
    , { name = "Anse Royale"
      , code = "05"
      , unofficialNames = [ "Anse Royale" ]
      }
    , { name = "Baie Lazare"
      , code = "06"
      , unofficialNames = [ "Baie Lazare" ]
      }
    , { name = "Baie Sainte Anne"
      , code = "07"
      , unofficialNames = [ "Baie Sainte Anne" ]
      }
    , { name = "Beau Vallon"
      , code = "08"
      , unofficialNames = [ "Beau Vallon" ]
      }
    , { name = "Bel Air"
      , code = "09"
      , unofficialNames = [ "Bel Air" ]
      }
    , { name = "Bel Ombre"
      , code = "10"
      , unofficialNames = [ "Bel Ombre" ]
      }
    , { name = "Cascade"
      , code = "11"
      , unofficialNames = [ "Cascade" ]
      }
    , { name = "Glacis"
      , code = "12"
      , unofficialNames = [ "Glacis" ]
      }
    , { name = "Grand' Anse (Mah??)"
      , code = "13"
      , unofficialNames = [ "Grand' Anse (Mah??)" ]
      }
    , { name = "Grand' Anse (Praslin)"
      , code = "14"
      , unofficialNames = [ "Grand' Anse (Praslin)" ]
      }
    , { name = "La Digue"
      , code = "15"
      , unofficialNames = [ "La Digue" ]
      }
    , { name = "La Rivi??re Anglaise"
      , code = "16"
      , unofficialNames = [ "La Rivi??re Anglaise" ]
      }
    , { name = "Mont Buxton"
      , code = "17"
      , unofficialNames = [ "Mont Buxton" ]
      }
    , { name = "Mont Fleuri"
      , code = "18"
      , unofficialNames = [ "Mont Fleuri" ]
      }
    , { name = "Plaisance"
      , code = "19"
      , unofficialNames = [ "Plaisance" ]
      }
    , { name = "Pointe La Rue"
      , code = "20"
      , unofficialNames = [ "Pointe La Rue" ]
      }
    , { name = "Port Glaud"
      , code = "21"
      , unofficialNames = [ "Port Glaud" ]
      }
    , { name = "Saint Louis"
      , code = "22"
      , unofficialNames = [ "Saint Louis" ]
      }
    , { name = "Takamaka"
      , code = "23"
      , unofficialNames = [ "Takamaka" ]
      }
    ]


{-| -}
countrySDSubdivisions : List Subdivision
countrySDSubdivisions =
    [ { name = "Al Ba???r al A???mar"
      , code = "RS"
      , unofficialNames = [ "" ]
      }
    , { name = "Al Jaz??rah"
      , code = "GZ"
      , unofficialNames = [ "" ]
      }
    , { name = "Al Khar????m"
      , code = "KH"
      , unofficialNames = [ "" ]
      }
    , { name = "Al Qa?????rif"
      , code = "GD"
      , unofficialNames = [ "" ]
      }
    , { name = "Nahr an N??l"
      , code = "NR"
      , unofficialNames = [ "" ]
      }
    , { name = "An N??l al Abya???"
      , code = "NW"
      , unofficialNames = [ "" ]
      }
    , { name = "An N??l al Azraq"
      , code = "NB"
      , unofficialNames = [ "" ]
      }
    , { name = "Ash Sham??l??yah"
      , code = "NO"
      , unofficialNames = [ "" ]
      }
    , { name = "Gharb D??rf??r"
      , code = "DW"
      , unofficialNames = [ "" ]
      }
    , { name = "Gharb Kurduf??n"
      , code = "GK"
      , unofficialNames = [ "" ]
      }
    , { name = "Jan??b D??rf??r"
      , code = "DS"
      , unofficialNames = [ "" ]
      }
    , { name = "Jan??b Kurduf??n"
      , code = "KS"
      , unofficialNames = [ "" ]
      }
    , { name = "Kassal??"
      , code = "KA"
      , unofficialNames = [ "" ]
      }
    , { name = "Sham??l D??rf??r"
      , code = "DN"
      , unofficialNames = [ "" ]
      }
    , { name = "Shiam??l Kurduf??n"
      , code = "KN"
      , unofficialNames = [ "" ]
      }
    , { name = "Sharq D??rf??r"
      , code = "DE"
      , unofficialNames = [ "" ]
      }
    , { name = "Sinn??r"
      , code = "SI"
      , unofficialNames = [ "" ]
      }
    , { name = "Wasa?? D??rf??r Z??linjay"
      , code = "DC"
      , unofficialNames = [ "" ]
      }
    ]


{-| -}
countrySESubdivisions : List Subdivision
countrySESubdivisions =
    [ { name = "Stockholms l??n"
      , code = "AB"
      , unofficialNames = [ "Stockholms l??n" ]
      }
    , { name = "V??sterbottens l??n"
      , code = "AC"
      , unofficialNames = [ "V??sterbottens l??n" ]
      }
    , { name = "Norrbottens l??n"
      , code = "BD"
      , unofficialNames = [ "Norrbottens l??n" ]
      }
    , { name = "Uppsala l??n"
      , code = "C"
      , unofficialNames = [ "Uppsala l??n" ]
      }
    , { name = "S??dermanlands l??n"
      , code = "D"
      , unofficialNames = [ "S??dermanlands l??n" ]
      }
    , { name = "??sterg??tlands l??n"
      , code = "E"
      , unofficialNames = [ "??sterg??tlands l??n" ]
      }
    , { name = "J??nk??pings l??n"
      , code = "F"
      , unofficialNames = [ "J??nk??pings l??n" ]
      }
    , { name = "Kronobergs l??n"
      , code = "G"
      , unofficialNames = [ "Kronobergs l??n" ]
      }
    , { name = "Kalmar l??n"
      , code = "H"
      , unofficialNames = [ "Calmar" ]
      }
    , { name = "Gotlands l??n"
      , code = "I"
      , unofficialNames = [ "Gotlands l??n" ]
      }
    , { name = "Blekinge l??n"
      , code = "K"
      , unofficialNames = [ "Blekinge l??n" ]
      }
    , { name = "Sk??ne l??n"
      , code = "M"
      , unofficialNames = [ "Scania" ]
      }
    , { name = "Hallands l??n"
      , code = "N"
      , unofficialNames = [ "Hallands l??n" ]
      }
    , { name = "V??stra G??talands l??n"
      , code = "O"
      , unofficialNames = [ "V??stra G??talands l??n" ]
      }
    , { name = "V??rmlands l??n"
      , code = "S"
      , unofficialNames = [ "V??rmlands l??n" ]
      }
    , { name = "??rebro l??n"
      , code = "T"
      , unofficialNames = [ "??rebro l??n" ]
      }
    , { name = "V??stmanlands l??n"
      , code = "U"
      , unofficialNames = [ "V??stmanlands l??n" ]
      }
    , { name = "Dalarnas l??n"
      , code = "W"
      , unofficialNames = [ "Dalarnas", "Dalecarlia", "Kopparberg" ]
      }
    , { name = "G??vleborgs l??n"
      , code = "X"
      , unofficialNames = [ "G??vleborgs l??n" ]
      }
    , { name = "V??sternorrlands l??n"
      , code = "Y"
      , unofficialNames = [ "V??sternorrlands l??n" ]
      }
    , { name = "J??mtlands l??n"
      , code = "Z"
      , unofficialNames = [ "J??mtlands l??n" ]
      }
    ]


{-| -}
countrySGSubdivisions : List Subdivision
countrySGSubdivisions =
    [ { name = "Central Singapore"
      , code = "SG-01"
      , unofficialNames = [ "Central Singapore" ]
      }
    , { name = "North East"
      , code = "SG-02"
      , unofficialNames = [ "North East" ]
      }
    , { name = "North West"
      , code = "SG-03"
      , unofficialNames = [ "North West" ]
      }
    , { name = "South East"
      , code = "SG-04"
      , unofficialNames = [ "South East" ]
      }
    , { name = "South West"
      , code = "SG-05"
      , unofficialNames = [ "South West" ]
      }
    ]


{-| -}
countrySHSubdivisions : List Subdivision
countrySHSubdivisions =
    [ { name = "Ascension"
      , code = "AC"
      , unofficialNames = [ "Ascension" ]
      }
    , { name = "Saint Helena"
      , code = "SH"
      , unofficialNames = [ "Saint Helena" ]
      }
    , { name = "Tristan da Cunha"
      , code = "TA"
      , unofficialNames = [ "Tristan da Cunha" ]
      }
    ]


{-| -}
countrySISubdivisions : List Subdivision
countrySISubdivisions =
    [ { name = "Ajdov??cina"
      , code = "001"
      , unofficialNames = [ "Ajdov??cina" ]
      }
    , { name = "Beltinci"
      , code = "002"
      , unofficialNames = [ "Beltinci" ]
      }
    , { name = "Bled"
      , code = "003"
      , unofficialNames = [ "Bled" ]
      }
    , { name = "Bohinj"
      , code = "004"
      , unofficialNames = [ "Bohinj" ]
      }
    , { name = "Borovnica"
      , code = "005"
      , unofficialNames = [ "Borovnica" ]
      }
    , { name = "Bovec"
      , code = "006"
      , unofficialNames = [ "Bovec" ]
      }
    , { name = "Brda"
      , code = "007"
      , unofficialNames = [ "Brda" ]
      }
    , { name = "Brezovica"
      , code = "008"
      , unofficialNames = [ "Brezovica" ]
      }
    , { name = "Bre??ice"
      , code = "009"
      , unofficialNames = [ "Bre??ice" ]
      }
    , { name = "Ti??ina"
      , code = "010"
      , unofficialNames = [ "Ti??ina" ]
      }
    , { name = "Celje"
      , code = "011"
      , unofficialNames = [ "Celje" ]
      }
    , { name = "Cerklje na Gorenjskem"
      , code = "012"
      , unofficialNames = [ "Cerklje na Gorenjskem" ]
      }
    , { name = "Cerknica"
      , code = "013"
      , unofficialNames = [ "Cerknica" ]
      }
    , { name = "Cerkno"
      , code = "014"
      , unofficialNames = [ "Cerkno" ]
      }
    , { name = "Cren??ovci"
      , code = "015"
      , unofficialNames = [ "Cren??ovci" ]
      }
    , { name = "Crna na Koro??kem"
      , code = "016"
      , unofficialNames = [ "Crna na Koro??kem" ]
      }
    , { name = "Crnomelj"
      , code = "017"
      , unofficialNames = [ "Crnomelj" ]
      }
    , { name = "Destrnik"
      , code = "018"
      , unofficialNames = [ "Destrnik" ]
      }
    , { name = "Divaca"
      , code = "019"
      , unofficialNames = [ "Divaca" ]
      }
    , { name = "Dobrepolje"
      , code = "020"
      , unofficialNames = [ "Dobrepolje" ]
      }
    , { name = "Dobrova-Polhov Gradec"
      , code = "021"
      , unofficialNames = [ "Dobrova-Polhov Gradec" ]
      }
    , { name = "Dol pri Ljubljani"
      , code = "022"
      , unofficialNames = [ "Dol pri Ljubljani" ]
      }
    , { name = "Dom??ale"
      , code = "023"
      , unofficialNames = [ "Dom??ale" ]
      }
    , { name = "Dornava"
      , code = "024"
      , unofficialNames = [ "Dornava" ]
      }
    , { name = "Dravograd"
      , code = "025"
      , unofficialNames = [ "Dravograd" ]
      }
    , { name = "Duplek"
      , code = "026"
      , unofficialNames = [ "Duplek" ]
      }
    , { name = "Gorenja vas-Poljane"
      , code = "027"
      , unofficialNames = [ "Gorenja vas-Poljane" ]
      }
    , { name = "Gori??nica"
      , code = "028"
      , unofficialNames = [ "Gori??nica" ]
      }
    , { name = "Gornja Radgona"
      , code = "029"
      , unofficialNames = [ "Gornja Radgona" ]
      }
    , { name = "Gornji Grad"
      , code = "030"
      , unofficialNames = [ "Gornji Grad" ]
      }
    , { name = "Gornji Petrovci"
      , code = "031"
      , unofficialNames = [ "Gornji Petrovci" ]
      }
    , { name = "Grosuplje"
      , code = "032"
      , unofficialNames = [ "Grosuplje" ]
      }
    , { name = "??alovci"
      , code = "033"
      , unofficialNames = [ "??alovci" ]
      }
    , { name = "Hrastnik"
      , code = "034"
      , unofficialNames = [ "Hrastnik" ]
      }
    , { name = "Hrpelje-Kozina"
      , code = "035"
      , unofficialNames = [ "Hrpelje-Kozina" ]
      }
    , { name = "Idrija"
      , code = "036"
      , unofficialNames = [ "Idrija" ]
      }
    , { name = "Ig"
      , code = "037"
      , unofficialNames = [ "Ig" ]
      }
    , { name = "Ilirska Bistrica"
      , code = "038"
      , unofficialNames = [ "Ilirska Bistrica" ]
      }
    , { name = "Ivancna Gorica"
      , code = "039"
      , unofficialNames = [ "Ivancna Gorica" ]
      }
    , { name = "Izola/Isola"
      , code = "040"
      , unofficialNames = [ "Izola/Isola" ]
      }
    , { name = "Jesenice"
      , code = "041"
      , unofficialNames = [ "Jesenice" ]
      }
    , { name = "Jur??inci"
      , code = "042"
      , unofficialNames = [ "Jur??inci" ]
      }
    , { name = "Kamnik"
      , code = "043"
      , unofficialNames = [ "Kamnik" ]
      }
    , { name = "Kanal"
      , code = "044"
      , unofficialNames = [ "Kanal" ]
      }
    , { name = "Kidricevo"
      , code = "045"
      , unofficialNames = [ "Kidricevo" ]
      }
    , { name = "Kobarid"
      , code = "046"
      , unofficialNames = [ "Kobarid" ]
      }
    , { name = "Kobilje"
      , code = "047"
      , unofficialNames = [ "Kobilje" ]
      }
    , { name = "Kocevje"
      , code = "048"
      , unofficialNames = [ "Kocevje" ]
      }
    , { name = "Komen"
      , code = "049"
      , unofficialNames = [ "Komen" ]
      }
    , { name = "Koper/Capodistria"
      , code = "050"
      , unofficialNames = [ "Koper/Capodistria" ]
      }
    , { name = "Kozje"
      , code = "051"
      , unofficialNames = [ "Kozje" ]
      }
    , { name = "Kranj"
      , code = "052"
      , unofficialNames = [ "Kranj" ]
      }
    , { name = "Kranjska Gora"
      , code = "053"
      , unofficialNames = [ "Kranjska Gora" ]
      }
    , { name = "Kr??ko"
      , code = "054"
      , unofficialNames = [ "Kr??ko" ]
      }
    , { name = "Kungota"
      , code = "055"
      , unofficialNames = [ "Kungota" ]
      }
    , { name = "Kuzma"
      , code = "056"
      , unofficialNames = [ "Kuzma" ]
      }
    , { name = "La??ko"
      , code = "057"
      , unofficialNames = [ "La??ko" ]
      }
    , { name = "Lenart"
      , code = "058"
      , unofficialNames = [ "Lenart" ]
      }
    , { name = "Lendava/Lendva"
      , code = "059"
      , unofficialNames = [ "Lendava/Lendva" ]
      }
    , { name = "Litija"
      , code = "060"
      , unofficialNames = [ "Litija" ]
      }
    , { name = "Ljubljana"
      , code = "061"
      , unofficialNames = [ "Ljubljana" ]
      }
    , { name = "Ljubno"
      , code = "062"
      , unofficialNames = [ "Ljubno" ]
      }
    , { name = "Ljutomer"
      , code = "063"
      , unofficialNames = [ "Ljutomer" ]
      }
    , { name = "Logatec"
      , code = "064"
      , unofficialNames = [ "Logatec" ]
      }
    , { name = "Lo??ka dolina"
      , code = "065"
      , unofficialNames = [ "Lo??ka dolina" ]
      }
    , { name = "Lo??ki Potok"
      , code = "066"
      , unofficialNames = [ "Lo??ki Potok" ]
      }
    , { name = "Luce"
      , code = "067"
      , unofficialNames = [ "Luce" ]
      }
    , { name = "Lukovica"
      , code = "068"
      , unofficialNames = [ "Lukovica" ]
      }
    , { name = "Maj??perk"
      , code = "069"
      , unofficialNames = [ "Maj??perk" ]
      }
    , { name = "Maribor"
      , code = "070"
      , unofficialNames = [ "Maribor" ]
      }
    , { name = "Medvode"
      , code = "071"
      , unofficialNames = [ "Medvode" ]
      }
    , { name = "Menge??"
      , code = "072"
      , unofficialNames = [ "Menge??" ]
      }
    , { name = "Metlika"
      , code = "073"
      , unofficialNames = [ "Metlika" ]
      }
    , { name = "Me??ica"
      , code = "074"
      , unofficialNames = [ "Me??ica" ]
      }
    , { name = "Miren-Kostanjevica"
      , code = "075"
      , unofficialNames = [ "Miren-Kostanjevica" ]
      }
    , { name = "Mislinja"
      , code = "076"
      , unofficialNames = [ "Mislinja" ]
      }
    , { name = "Moravce"
      , code = "077"
      , unofficialNames = [ "Moravce" ]
      }
    , { name = "Moravske Toplice"
      , code = "078"
      , unofficialNames = [ "Moravske Toplice" ]
      }
    , { name = "Mozirje"
      , code = "079"
      , unofficialNames = [ "Mozirje" ]
      }
    , { name = "Murska Sobota"
      , code = "080"
      , unofficialNames = [ "Murska Sobota" ]
      }
    , { name = "Muta"
      , code = "081"
      , unofficialNames = [ "Muta" ]
      }
    , { name = "Naklo"
      , code = "082"
      , unofficialNames = [ "Naklo" ]
      }
    , { name = "Nazarje"
      , code = "083"
      , unofficialNames = [ "Nazarje" ]
      }
    , { name = "Nova Gorica"
      , code = "084"
      , unofficialNames = [ "Nova Gorica" ]
      }
    , { name = "Novo mesto"
      , code = "085"
      , unofficialNames = [ "Novo mesto" ]
      }
    , { name = "Odranci"
      , code = "086"
      , unofficialNames = [ "Odranci" ]
      }
    , { name = "Ormo??"
      , code = "087"
      , unofficialNames = [ "Ormo??" ]
      }
    , { name = "Osilnica"
      , code = "088"
      , unofficialNames = [ "Osilnica" ]
      }
    , { name = "Pesnica"
      , code = "089"
      , unofficialNames = [ "Pesnica" ]
      }
    , { name = "Piran/Pirano"
      , code = "090"
      , unofficialNames = [ "Piran/Pirano" ]
      }
    , { name = "Pivka"
      , code = "091"
      , unofficialNames = [ "Pivka" ]
      }
    , { name = "Podcetrtek"
      , code = "092"
      , unofficialNames = [ "Podcetrtek" ]
      }
    , { name = "Podvelka"
      , code = "093"
      , unofficialNames = [ "Podvelka" ]
      }
    , { name = "Postojna"
      , code = "094"
      , unofficialNames = [ "Postojna" ]
      }
    , { name = "Preddvor"
      , code = "095"
      , unofficialNames = [ "Preddvor" ]
      }
    , { name = "Ptuj"
      , code = "096"
      , unofficialNames = [ "Ptuj" ]
      }
    , { name = "Puconci"
      , code = "097"
      , unofficialNames = [ "Puconci" ]
      }
    , { name = "Race-Fram"
      , code = "098"
      , unofficialNames = [ "Race-Fram" ]
      }
    , { name = "Radece"
      , code = "099"
      , unofficialNames = [ "Radece" ]
      }
    , { name = "Radenci"
      , code = "100"
      , unofficialNames = [ "Radenci" ]
      }
    , { name = "Radlje ob Dravi"
      , code = "101"
      , unofficialNames = [ "Radlje ob Dravi" ]
      }
    , { name = "Radovljica"
      , code = "102"
      , unofficialNames = [ "Radovljica" ]
      }
    , { name = "Ravne na Koro??kem"
      , code = "103"
      , unofficialNames = [ "Ravne na Koro??kem" ]
      }
    , { name = "Ribnica"
      , code = "104"
      , unofficialNames = [ "Ribnica" ]
      }
    , { name = "Roga??ovci"
      , code = "105"
      , unofficialNames = [ "Roga??ovci" ]
      }
    , { name = "Roga??ka Slatina"
      , code = "106"
      , unofficialNames = [ "Roga??ka Slatina" ]
      }
    , { name = "Rogatec"
      , code = "107"
      , unofficialNames = [ "Rogatec" ]
      }
    , { name = "Ru??e"
      , code = "108"
      , unofficialNames = [ "Ru??e" ]
      }
    , { name = "Semic"
      , code = "109"
      , unofficialNames = [ "Semic" ]
      }
    , { name = "Sevnica"
      , code = "110"
      , unofficialNames = [ "Sevnica" ]
      }
    , { name = "Se??ana"
      , code = "111"
      , unofficialNames = [ "Se??ana" ]
      }
    , { name = "Slovenj Gradec"
      , code = "112"
      , unofficialNames = [ "Slovenj Gradec" ]
      }
    , { name = "Slovenska Bistrica"
      , code = "113"
      , unofficialNames = [ "Slovenska Bistrica" ]
      }
    , { name = "Slovenske Konjice"
      , code = "114"
      , unofficialNames = [ "Slovenske Konjice" ]
      }
    , { name = "Star??e"
      , code = "115"
      , unofficialNames = [ "Star??e" ]
      }
    , { name = "Sveti Jurij"
      , code = "116"
      , unofficialNames = [ "Sveti Jurij" ]
      }
    , { name = "??encur"
      , code = "117"
      , unofficialNames = [ "??encur" ]
      }
    , { name = "??entilj"
      , code = "118"
      , unofficialNames = [ "??entilj" ]
      }
    , { name = "??entjernej"
      , code = "119"
      , unofficialNames = [ "??entjernej" ]
      }
    , { name = "??entjur pri Celju"
      , code = "120"
      , unofficialNames = [ "??entjur pri Celju" ]
      }
    , { name = "??kocjan"
      , code = "121"
      , unofficialNames = [ "??kocjan" ]
      }
    , { name = "??kofja Loka"
      , code = "122"
      , unofficialNames = [ "??kofja Loka" ]
      }
    , { name = "??kofljica"
      , code = "123"
      , unofficialNames = [ "??kofljica" ]
      }
    , { name = "??marje pri Jel??ah"
      , code = "124"
      , unofficialNames = [ "??marje pri Jel??ah" ]
      }
    , { name = "??martno ob Paki"
      , code = "125"
      , unofficialNames = [ "??martno ob Paki" ]
      }
    , { name = "??o??tanj"
      , code = "126"
      , unofficialNames = [ "??o??tanj" ]
      }
    , { name = "??tore"
      , code = "127"
      , unofficialNames = [ "??tore" ]
      }
    , { name = "Tolmin"
      , code = "128"
      , unofficialNames = [ "Tolmin" ]
      }
    , { name = "Trbovlje"
      , code = "129"
      , unofficialNames = [ "Trbovlje" ]
      }
    , { name = "Trebnje"
      , code = "130"
      , unofficialNames = [ "Trebnje" ]
      }
    , { name = "Tr??ic"
      , code = "131"
      , unofficialNames = [ "Tr??ic" ]
      }
    , { name = "Turni??ce"
      , code = "132"
      , unofficialNames = [ "Turni??ce" ]
      }
    , { name = "Velenje"
      , code = "133"
      , unofficialNames = [ "Velenje" ]
      }
    , { name = "Velike La??ce"
      , code = "134"
      , unofficialNames = [ "Velike La??ce" ]
      }
    , { name = "Videm"
      , code = "135"
      , unofficialNames = [ "Videm" ]
      }
    , { name = "Vipava"
      , code = "136"
      , unofficialNames = [ "Vipava" ]
      }
    , { name = "Vitanje"
      , code = "137"
      , unofficialNames = [ "Vitanje" ]
      }
    , { name = "Vodice"
      , code = "138"
      , unofficialNames = [ "Vodice" ]
      }
    , { name = "Vojnik"
      , code = "139"
      , unofficialNames = [ "Vojnik" ]
      }
    , { name = "Vrhnika"
      , code = "140"
      , unofficialNames = [ "Vrhnika" ]
      }
    , { name = "Vuzenica"
      , code = "141"
      , unofficialNames = [ "Vuzenica" ]
      }
    , { name = "Zagorje ob Savi"
      , code = "142"
      , unofficialNames = [ "Zagorje ob Savi" ]
      }
    , { name = "Zavrc"
      , code = "143"
      , unofficialNames = [ "Zavrc" ]
      }
    , { name = "Zrece"
      , code = "144"
      , unofficialNames = [ "Zrece" ]
      }
    , { name = "??elezniki"
      , code = "146"
      , unofficialNames = [ "??elezniki" ]
      }
    , { name = "??iri"
      , code = "147"
      , unofficialNames = [ "??iri" ]
      }
    , { name = "Benedikt"
      , code = "148"
      , unofficialNames = [ "Benedikt" ]
      }
    , { name = "Bistrica ob Sotli"
      , code = "149"
      , unofficialNames = [ "Bistrica ob Sotli" ]
      }
    , { name = "Bloke"
      , code = "150"
      , unofficialNames = [ "Bloke" ]
      }
    , { name = "Braslovce"
      , code = "151"
      , unofficialNames = [ "Braslovce" ]
      }
    , { name = "Cankova"
      , code = "152"
      , unofficialNames = [ "Cankova" ]
      }
    , { name = "Cerkvenjak"
      , code = "153"
      , unofficialNames = [ "Cerkvenjak" ]
      }
    , { name = "Dobje"
      , code = "154"
      , unofficialNames = [ "Dobje" ]
      }
    , { name = "Dobrna"
      , code = "155"
      , unofficialNames = [ "Dobrna" ]
      }
    , { name = "Dobrovnik/Dobronak"
      , code = "156"
      , unofficialNames = [ "Dobrovnik/Dobronak" ]
      }
    , { name = "Dolenjske Toplice"
      , code = "157"
      , unofficialNames = [ "Dolenjske Toplice" ]
      }
    , { name = "Grad"
      , code = "158"
      , unofficialNames = [ "Grad" ]
      }
    , { name = "Hajdina"
      , code = "159"
      , unofficialNames = [ "Hajdina" ]
      }
    , { name = "Hoce-Slivnica"
      , code = "160"
      , unofficialNames = [ "Hoce-Slivnica" ]
      }
    , { name = "Hodo??/Hodos"
      , code = "161"
      , unofficialNames = [ "Hodo??/Hodos" ]
      }
    , { name = "Horjul"
      , code = "162"
      , unofficialNames = [ "Horjul" ]
      }
    , { name = "Jezersko"
      , code = "163"
      , unofficialNames = [ "Jezersko" ]
      }
    , { name = "Komenda"
      , code = "164"
      , unofficialNames = [ "Komenda" ]
      }
    , { name = "Kostel"
      , code = "165"
      , unofficialNames = [ "Kostel" ]
      }
    , { name = "Kri??evci"
      , code = "166"
      , unofficialNames = [ "Kri??evci" ]
      }
    , { name = "Lovrenc na Pohorju"
      , code = "167"
      , unofficialNames = [ "Lovrenc na Pohorju" ]
      }
    , { name = "Markovci"
      , code = "168"
      , unofficialNames = [ "Markovci" ]
      }
    , { name = "Miklav?? na Dravskem polju"
      , code = "169"
      , unofficialNames = [ "Miklav?? na Dravskem polju" ]
      }
    , { name = "Mirna Pec"
      , code = "170"
      , unofficialNames = [ "Mirna Pec" ]
      }
    , { name = "Oplotnica"
      , code = "171"
      , unofficialNames = [ "Oplotnica" ]
      }
    , { name = "Podlehnik"
      , code = "172"
      , unofficialNames = [ "Podlehnik" ]
      }
    , { name = "Polzela"
      , code = "173"
      , unofficialNames = [ "Polzela" ]
      }
    , { name = "Prebold"
      , code = "174"
      , unofficialNames = [ "Prebold" ]
      }
    , { name = "Prevalje"
      , code = "175"
      , unofficialNames = [ "Prevalje" ]
      }
    , { name = "Razkri??je"
      , code = "176"
      , unofficialNames = [ "Razkri??je" ]
      }
    , { name = "Ribnica na Pohorju"
      , code = "177"
      , unofficialNames = [ "Ribnica na Pohorju" ]
      }
    , { name = "Selnica ob Dravi"
      , code = "178"
      , unofficialNames = [ "Selnica ob Dravi" ]
      }
    , { name = "Sodra??ica"
      , code = "179"
      , unofficialNames = [ "Sodra??ica" ]
      }
    , { name = "Solcava"
      , code = "180"
      , unofficialNames = [ "Solcava" ]
      }
    , { name = "Sveta Ana"
      , code = "181"
      , unofficialNames = [ "Sveta Ana" ]
      }
    , { name = "Sveti Andra?? v Slovenskih goricah"
      , code = "182"
      , unofficialNames = [ "Sveti Andra?? v Slovenskih goricah" ]
      }
    , { name = "??empeter-Vrtojba"
      , code = "183"
      , unofficialNames = [ "??empeter-Vrtojba" ]
      }
    , { name = "Tabor"
      , code = "184"
      , unofficialNames = [ "Tabor" ]
      }
    , { name = "Trnovska vas"
      , code = "185"
      , unofficialNames = [ "Trnovska vas" ]
      }
    , { name = "Trzin"
      , code = "186"
      , unofficialNames = [ "Trzin" ]
      }
    , { name = "Velika Polana"
      , code = "187"
      , unofficialNames = [ "Velika Polana" ]
      }
    , { name = "Ver??ej"
      , code = "188"
      , unofficialNames = [ "Ver??ej" ]
      }
    , { name = "Vransko"
      , code = "189"
      , unofficialNames = [ "Vransko" ]
      }
    , { name = "??alec"
      , code = "190"
      , unofficialNames = [ "??alec" ]
      }
    , { name = "??etale"
      , code = "191"
      , unofficialNames = [ "??etale" ]
      }
    , { name = "??irovnica"
      , code = "192"
      , unofficialNames = [ "??irovnica" ]
      }
    , { name = "??u??emberk"
      , code = "193"
      , unofficialNames = [ "??u??emberk" ]
      }
    , { name = "??martno pri Litiji"
      , code = "194"
      , unofficialNames = [ "??martno pri Litiji" ]
      }
    ]


{-| -}
countrySJSubdivisions : List Subdivision
countrySJSubdivisions =
    [ { name = "Svalbard"
      , code = "21"
      , unofficialNames = [ "Svalbard" ]
      }
    , { name = "Jan Mayen"
      , code = "22"
      , unofficialNames = [ "Jan Mayen" ]
      }
    ]


{-| -}
countrySKSubdivisions : List Subdivision
countrySKSubdivisions =
    [ { name = "Banskobystrick?? kraj"
      , code = "BC"
      , unofficialNames = [ "Banskobystrick?? kraj" ]
      }
    , { name = "Bratislavsk?? kraj"
      , code = "BL"
      , unofficialNames = [ "Bratislavsk?? kraj" ]
      }
    , { name = "Ko??ick?? kraj"
      , code = "KI"
      , unofficialNames = [ "Ko??ick?? kraj" ]
      }
    , { name = "Nitriansky kraj"
      , code = "NI"
      , unofficialNames = [ "Nitriansky kraj" ]
      }
    , { name = "Pre??ovsk?? kraj"
      , code = "PV"
      , unofficialNames = [ "Pre??ovsk?? kraj" ]
      }
    , { name = "Trnavsk?? kraj"
      , code = "TA"
      , unofficialNames = [ "Trnavsk?? kraj" ]
      }
    , { name = "Trenciansky kraj"
      , code = "TC"
      , unofficialNames = [ "Trenciansky kraj" ]
      }
    , { name = "??ilinsk?? kraj"
      , code = "ZI"
      , unofficialNames = [ "??ilinsk?? kraj" ]
      }
    ]


{-| -}
countrySLSubdivisions : List Subdivision
countrySLSubdivisions =
    [ { name = "Eastern"
      , code = "E"
      , unofficialNames = [ "Eastern" ]
      }
    , { name = "Northern"
      , code = "N"
      , unofficialNames = [ "Northern" ]
      }
    , { name = "Southern"
      , code = "S"
      , unofficialNames = [ "Southern" ]
      }
    , { name = "Western Area (Freetown)"
      , code = "W"
      , unofficialNames = [ "Western Area (Freetown)" ]
      }
    ]


{-| -}
countrySMSubdivisions : List Subdivision
countrySMSubdivisions =
    [ { name = "Acquaviva"
      , code = "01"
      , unofficialNames = [ "Acquaviva" ]
      }
    , { name = "Chiesanuova"
      , code = "02"
      , unofficialNames = [ "Poggio di Chiesanuova" ]
      }
    , { name = "Domagnano"
      , code = "03"
      , unofficialNames = [ "Domagnano" ]
      }
    , { name = "Faetano"
      , code = "04"
      , unofficialNames = [ "Faetano" ]
      }
    , { name = "Fiorentino"
      , code = "05"
      , unofficialNames = [ "Fiorentino" ]
      }
    , { name = "Borgo Maggiore"
      , code = "06"
      , unofficialNames = [ "Borgo Maggiore" ]
      }
    , { name = "San Marino"
      , code = "07"
      , unofficialNames = [ "Saint Marin" ]
      }
    , { name = "Montegiardino"
      , code = "08"
      , unofficialNames = [ "Montegiardino" ]
      }
    , { name = "Serravalle"
      , code = "09"
      , unofficialNames = [ "Serravalle" ]
      }
    ]


{-| -}
countrySNSubdivisions : List Subdivision
countrySNSubdivisions =
    [ { name = "Diourbel"
      , code = "DB"
      , unofficialNames = [ "Diourbel" ]
      }
    , { name = "Dakar"
      , code = "DK"
      , unofficialNames = [ "Dakar" ]
      }
    , { name = "Fatick"
      , code = "FK"
      , unofficialNames = [ "Fatick" ]
      }
    , { name = "Kolda"
      , code = "KD"
      , unofficialNames = [ "Kolda" ]
      }
    , { name = "Kaolack"
      , code = "KL"
      , unofficialNames = [ "Kaolack" ]
      }
    , { name = "Louga"
      , code = "LG"
      , unofficialNames = [ "Louga" ]
      }
    , { name = "Matam"
      , code = "MT"
      , unofficialNames = [ "Matam" ]
      }
    , { name = "Saint-Louis"
      , code = "SL"
      , unofficialNames = [ "Saint-Louis" ]
      }
    , { name = "Tambacounda"
      , code = "TC"
      , unofficialNames = [ "Tambacounda" ]
      }
    , { name = "Thi??s"
      , code = "TH"
      , unofficialNames = [ "Thi??s" ]
      }
    , { name = "Ziguinchor"
      , code = "ZG"
      , unofficialNames = [ "Ziguinchor" ]
      }
    ]


{-| -}
countrySOSubdivisions : List Subdivision
countrySOSubdivisions =
    [ { name = "Awdal"
      , code = "AW"
      , unofficialNames = [ "Awdal" ]
      }
    , { name = "Bakool"
      , code = "BK"
      , unofficialNames = [ "Bakool" ]
      }
    , { name = "Banaadir"
      , code = "BN"
      , unofficialNames = [ "Banaadir" ]
      }
    , { name = "Bari"
      , code = "BR"
      , unofficialNames = [ "Bari" ]
      }
    , { name = "Bay"
      , code = "BY"
      , unofficialNames = [ "Bay" ]
      }
    , { name = "Galguduud"
      , code = "GA"
      , unofficialNames = [ "Galguduud" ]
      }
    , { name = "Gedo"
      , code = "GE"
      , unofficialNames = [ "Gedo" ]
      }
    , { name = "Hiiraan"
      , code = "HI"
      , unofficialNames = [ "Hiiraan" ]
      }
    , { name = "Jubbada Dhexe"
      , code = "JD"
      , unofficialNames = [ "Jubbada Dhexe" ]
      }
    , { name = "Jubbada Hoose"
      , code = "JH"
      , unofficialNames = [ "Jubbada Hoose" ]
      }
    , { name = "Mudug"
      , code = "MU"
      , unofficialNames = [ "Mudug" ]
      }
    , { name = "Nugaal"
      , code = "NU"
      , unofficialNames = [ "Nugaal" ]
      }
    , { name = "Sanaag"
      , code = "SA"
      , unofficialNames = [ "Sanaag" ]
      }
    , { name = "Shabeellaha Dhexe"
      , code = "SD"
      , unofficialNames = [ "Shabeellaha Dhexe" ]
      }
    , { name = "Shabeellaha Hoose"
      , code = "SH"
      , unofficialNames = [ "Shabeellaha Hoose" ]
      }
    , { name = "Sool"
      , code = "SO"
      , unofficialNames = [ "Sool" ]
      }
    , { name = "Togdheer"
      , code = "TO"
      , unofficialNames = [ "Togdheer" ]
      }
    , { name = "Woqooyi Galbeed"
      , code = "WO"
      , unofficialNames = [ "Woqooyi Galbeed" ]
      }
    ]


{-| -}
countrySRSubdivisions : List Subdivision
countrySRSubdivisions =
    [ { name = "Brokopondo"
      , code = "BR"
      , unofficialNames = [ "Brokopondo" ]
      }
    , { name = "Commewijne"
      , code = "CM"
      , unofficialNames = [ "Commewijne" ]
      }
    , { name = "Coronie"
      , code = "CR"
      , unofficialNames = [ "Coronie" ]
      }
    , { name = "Marowijne"
      , code = "MA"
      , unofficialNames = [ "Marowijne" ]
      }
    , { name = "Nickerie"
      , code = "NI"
      , unofficialNames = [ "Nickerie" ]
      }
    , { name = "Paramaribo"
      , code = "PM"
      , unofficialNames = [ "Paramaribo" ]
      }
    , { name = "Para"
      , code = "PR"
      , unofficialNames = [ "Para" ]
      }
    , { name = "Saramacca"
      , code = "SA"
      , unofficialNames = [ "Saramacca" ]
      }
    , { name = "Sipaliwini"
      , code = "SI"
      , unofficialNames = [ "Sipaliwini" ]
      }
    , { name = "Wanica"
      , code = "WA"
      , unofficialNames = [ "Wanica" ]
      }
    ]


{-| -}
countrySSSubdivisions : List Subdivision
countrySSSubdivisions =
    []


{-| -}
countrySTSubdivisions : List Subdivision
countrySTSubdivisions =
    [ { name = "Pr??ncipe"
      , code = "P"
      , unofficialNames = [ "Pr??ncipe" ]
      }
    , { name = "S??o Tom??"
      , code = "S"
      , unofficialNames = [ "S??o Tom??" ]
      }
    ]


{-| -}
countrySVSubdivisions : List Subdivision
countrySVSubdivisions =
    [ { name = "Ahuachap??n"
      , code = "AH"
      , unofficialNames = [ "Ahuachap??n" ]
      }
    , { name = "Caba??as"
      , code = "CA"
      , unofficialNames = [ "Caba??as" ]
      }
    , { name = "Chalatenango"
      , code = "CH"
      , unofficialNames = [ "Chalatenango" ]
      }
    , { name = "Cuscatl??n"
      , code = "CU"
      , unofficialNames = [ "Cuscatl??n" ]
      }
    , { name = "La Libertad"
      , code = "LI"
      , unofficialNames = [ "La Libertad" ]
      }
    , { name = "Moraz??n"
      , code = "MO"
      , unofficialNames = [ "Moraz??n" ]
      }
    , { name = "La Paz"
      , code = "PA"
      , unofficialNames = [ "La Paz" ]
      }
    , { name = "Santa Ana"
      , code = "SA"
      , unofficialNames = [ "Santa Ana" ]
      }
    , { name = "San Miguel"
      , code = "SM"
      , unofficialNames = [ "San Miguel" ]
      }
    , { name = "Sonsonate"
      , code = "SO"
      , unofficialNames = [ "Sonsonate" ]
      }
    , { name = "San Salvador"
      , code = "SS"
      , unofficialNames = [ "San Salvador" ]
      }
    , { name = "San Vicente"
      , code = "SV"
      , unofficialNames = [ "San Vicente" ]
      }
    , { name = "La Uni??n"
      , code = "UN"
      , unofficialNames = [ "La Uni??n" ]
      }
    , { name = "Usulut??n"
      , code = "US"
      , unofficialNames = [ "Usulut??n" ]
      }
    ]


{-| -}
countrySXSubdivisions : List Subdivision
countrySXSubdivisions =
    []


{-| -}
countrySYSubdivisions : List Subdivision
countrySYSubdivisions =
    [ { name = "Dimashq"
      , code = "DI"
      , unofficialNames = [ "Dimashq", "Mad??nat Dima??q", "Damaskus", "Damas" ]
      }
    , { name = "Dar'??"
      , code = "DR"
      , unofficialNames = [ "Dara", "Dar??", "Dar??a", "Deraa", "D??rayy??" ]
      }
    , { name = "Dayr az Zawr"
      , code = "DY"
      , unofficialNames = [ "Deir El-Zor", "Deir-ez-Zor" ]
      }
    , { name = "Al ???asakah"
      , code = "HA"
      , unofficialNames = [ "El Haseke", "Hassetche", "H??asakah", "al-Hasakah" ]
      }
    , { name = "???im??"
      , code = "HI"
      , unofficialNames = [ "Hims", "Homs" ]
      }
    , { name = "???alab"
      , code = "HL"
      , unofficialNames = [ "Halab", "Haleb", "H??alab", "Alep" ]
      }
    , { name = "???am??h"
      , code = "HM"
      , unofficialNames = [ "Hama", "Hamah" ]
      }
    , { name = "Idlib"
      , code = "ID"
      , unofficialNames = [ "Idlib" ]
      }
    , { name = "Al Ladhiqiyah"
      , code = "LA"
      , unofficialNames = [ "Latakia", "Lattakia", "Lattaqui??", "L??dhiq??yah", "al-Ladhiqiyah" ]
      }
    , { name = "Al Qunaytirah"
      , code = "QU"
      , unofficialNames = [ "Quneitra", "al-Qunaytirah" ]
      }
    , { name = "Ar Raqqah"
      , code = "RA"
      , unofficialNames = [ "Raqqah", "al-Rakka" ]
      }
    , { name = "Rif Dimashq"
      , code = "RD"
      , unofficialNames = [ "Dimashq", "Dima??q", "Damaskus", "Damas", "Damascus" ]
      }
    , { name = "As Suwayda'"
      , code = "SU"
      , unofficialNames = [ "as-Suwayda" ]
      }
    , { name = "Tartus"
      , code = "TA"
      , unofficialNames = [ "Tarto??s", "Tartus" ]
      }
    ]


{-| -}
countrySZSubdivisions : List Subdivision
countrySZSubdivisions =
    [ { name = "Hhohho"
      , code = "HH"
      , unofficialNames = [ "Hhohho" ]
      }
    , { name = "Lubombo"
      , code = "LU"
      , unofficialNames = [ "Lebombo" ]
      }
    , { name = "Manzini"
      , code = "MA"
      , unofficialNames = [ "Manzini" ]
      }
    , { name = "Shiselweni"
      , code = "SH"
      , unofficialNames = [ "Shiselweni" ]
      }
    ]


{-| -}
countryTDSubdivisions : List Subdivision
countryTDSubdivisions =
    [ { name = "Batha"
      , code = "BA"
      , unofficialNames = [ "Batha" ]
      }
    , { name = "Borkou-Ennedi-Tibesti"
      , code = "BET"
      , unofficialNames = [ "Borkou-Ennedi-Tibesti" ]
      }
    , { name = "Chari-Baguirmi"
      , code = "CB"
      , unofficialNames = [ "Chari-Baguirmi" ]
      }
    , { name = "Gu??ra"
      , code = "GR"
      , unofficialNames = [ "Gu??ra" ]
      }
    , { name = "Hadjer Lamis"
      , code = "HL"
      , unofficialNames = [ "Hadjer Lamis" ]
      }
    , { name = "Kanem"
      , code = "KA"
      , unofficialNames = [ "Kanem" ]
      }
    , { name = "Lac"
      , code = "LC"
      , unofficialNames = [ "Lac" ]
      }
    , { name = "Logone-Occidental"
      , code = "LO"
      , unofficialNames = [ "Logone-Occidental" ]
      }
    , { name = "Logone-Oriental"
      , code = "LR"
      , unofficialNames = [ "Logone-Oriental" ]
      }
    , { name = "Mandoul"
      , code = "MA"
      , unofficialNames = [ "Mandoul" ]
      }
    , { name = "Moyen-Chari"
      , code = "MC"
      , unofficialNames = [ "Moyen-Chari" ]
      }
    , { name = "Mayo-K??bbi-Est"
      , code = "ME"
      , unofficialNames = [ "Mayo-K??bbi-Est" ]
      }
    , { name = "Mayo-K??bbi-Ouest"
      , code = "MO"
      , unofficialNames = [ "Mayo-K??bbi-Ouest" ]
      }
    , { name = "Ndjamena"
      , code = "ND"
      , unofficialNames = [ "Ndjamena" ]
      }
    , { name = "Ouadda??"
      , code = "OD"
      , unofficialNames = [ "Ouadda??" ]
      }
    , { name = "Salamat"
      , code = "SA"
      , unofficialNames = [ "Salamat" ]
      }
    , { name = "Tandjil??"
      , code = "TA"
      , unofficialNames = [ "Tandjil??" ]
      }
    , { name = "Wadi Fira"
      , code = "WF"
      , unofficialNames = [ "Wadi Fira" ]
      }
    ]


{-| -}
countryTFSubdivisions : List Subdivision
countryTFSubdivisions =
    [ { name = "Ile Saint-Paul et Ile Amsterdam"
      , code = "X1~"
      , unofficialNames = [ "Ile Saint-Paul et Ile Amsterdam" ]
      }
    , { name = "Crozet Islands"
      , code = "X2~"
      , unofficialNames = [ "Crozet Islands" ]
      }
    , { name = "Kerguelen"
      , code = "X3~"
      , unofficialNames = [ "Kerguelen" ]
      }
    , { name = "Iles Eparses"
      , code = "X4~"
      , unofficialNames = [ "Iles Eparses" ]
      }
    ]


{-| -}
countryTGSubdivisions : List Subdivision
countryTGSubdivisions =
    [ { name = "Centre"
      , code = "C"
      , unofficialNames = [ "Centre" ]
      }
    , { name = "Kara"
      , code = "K"
      , unofficialNames = [ "Kara" ]
      }
    , { name = "Maritime (R??gion)"
      , code = "M"
      , unofficialNames = [ "Maritime (R??gion)" ]
      }
    , { name = "Plateaux"
      , code = "P"
      , unofficialNames = [ "Plateaux" ]
      }
    , { name = "Savannes"
      , code = "S"
      , unofficialNames = [ "Savannes" ]
      }
    ]


{-| -}
countryTHSubdivisions : List Subdivision
countryTHSubdivisions =
    [ { name = "Krung Thep Maha Nakhon [Bangkok]"
      , code = "10"
      , unofficialNames = [ "Krung Thep", "Bangkok", "BKK" ]
      }
    , { name = "Samut Prakan"
      , code = "11"
      , unofficialNames = [ "Samut Prakan" ]
      }
    , { name = "Nonthaburi"
      , code = "12"
      , unofficialNames = [ "Nonthaburi" ]
      }
    , { name = "Pathum Thani"
      , code = "13"
      , unofficialNames = [ "Pathum Thani" ]
      }
    , { name = "Phra Nakhon Si Ayutthaya"
      , code = "14"
      , unofficialNames = [ "Phra Nakhon Si Ayutthaya" ]
      }
    , { name = "Ang Thong"
      , code = "15"
      , unofficialNames = [ "Ang Thong" ]
      }
    , { name = "Lop Buri"
      , code = "16"
      , unofficialNames = [ "Lop Buri" ]
      }
    , { name = "Sing Buri"
      , code = "17"
      , unofficialNames = [ "Sing Buri" ]
      }
    , { name = "Chai Nat"
      , code = "18"
      , unofficialNames = [ "Chainat", "Jainat", "Jayanath" ]
      }
    , { name = "Saraburi"
      , code = "19"
      , unofficialNames = [ "Saraburi" ]
      }
    , { name = "Chon Buri"
      , code = "20"
      , unofficialNames = [ "Chon Buri" ]
      }
    , { name = "Rayong"
      , code = "21"
      , unofficialNames = [ "Rayong" ]
      }
    , { name = "Chanthaburi"
      , code = "22"
      , unofficialNames = [ "Chanthaburi" ]
      }
    , { name = "Trat"
      , code = "23"
      , unofficialNames = [ "Trat" ]
      }
    , { name = "Chachoengsao"
      , code = "24"
      , unofficialNames = [ "Chachoengsao" ]
      }
    , { name = "Prachin Buri"
      , code = "25"
      , unofficialNames = [ "Prachin Buri" ]
      }
    , { name = "Nakhon Nayok"
      , code = "26"
      , unofficialNames = [ "Nakhon Nayok" ]
      }
    , { name = "Sa Kaeo"
      , code = "27"
      , unofficialNames = [ "Sa Kaeo" ]
      }
    , { name = "Nakhon Ratchasima"
      , code = "30"
      , unofficialNames = [ "Nakhon Ratchasima" ]
      }
    , { name = "Buri Ram"
      , code = "31"
      , unofficialNames = [ "Buri Ram" ]
      }
    , { name = "Surin"
      , code = "32"
      , unofficialNames = [ "Surin" ]
      }
    , { name = "Si Sa Ket"
      , code = "33"
      , unofficialNames = [ "Si Sa Ket" ]
      }
    , { name = "Ubon Ratchathani"
      , code = "34"
      , unofficialNames = [ "Ubon Ratchathani" ]
      }
    , { name = "Yasothon"
      , code = "35"
      , unofficialNames = [ "Yasothon" ]
      }
    , { name = "Chaiyaphum"
      , code = "36"
      , unofficialNames = [ "Chaiyaphum" ]
      }
    , { name = "Amnat Charoen"
      , code = "37"
      , unofficialNames = [ "Amnat Charoen" ]
      }
    , { name = "Nong Bua Lam Phu"
      , code = "39"
      , unofficialNames = [ "Nong Bua Lam Phu" ]
      }
    , { name = "Khon Kaen"
      , code = "40"
      , unofficialNames = [ "Khon Kaen" ]
      }
    , { name = "Udon Thani"
      , code = "41"
      , unofficialNames = [ "Udon Thani" ]
      }
    , { name = "Loei"
      , code = "42"
      , unofficialNames = [ "Loei" ]
      }
    , { name = "Nong Khai"
      , code = "43"
      , unofficialNames = [ "Nong Khai" ]
      }
    , { name = "Maha Sarakham"
      , code = "44"
      , unofficialNames = [ "Maha Sarakham" ]
      }
    , { name = "Roi Et"
      , code = "45"
      , unofficialNames = [ "Roi Et" ]
      }
    , { name = "Kalasin"
      , code = "46"
      , unofficialNames = [ "Kalasin" ]
      }
    , { name = "Sakon Nakhon"
      , code = "47"
      , unofficialNames = [ "Sakon Nakhon" ]
      }
    , { name = "Nakhon Phanom"
      , code = "48"
      , unofficialNames = [ "Nakhon Phanom" ]
      }
    , { name = "Mukdahan"
      , code = "49"
      , unofficialNames = [ "Mukdahan" ]
      }
    , { name = "Chiang Mai"
      , code = "50"
      , unofficialNames = [ "Chiangmai", "Chiengmai", "Kiangmai" ]
      }
    , { name = "Lamphun"
      , code = "51"
      , unofficialNames = [ "Lamphun" ]
      }
    , { name = "Lampang"
      , code = "52"
      , unofficialNames = [ "Lampang" ]
      }
    , { name = "Uttaradit"
      , code = "53"
      , unofficialNames = [ "Uttaradit" ]
      }
    , { name = "Phrae"
      , code = "54"
      , unofficialNames = [ "Phrae" ]
      }
    , { name = "Nan"
      , code = "55"
      , unofficialNames = [ "Nan" ]
      }
    , { name = "Phayao"
      , code = "56"
      , unofficialNames = [ "Phayao" ]
      }
    , { name = "Chiang Rai"
      , code = "57"
      , unofficialNames = [ "Chianpai", "Chienrai", "Muang Chiang Rai" ]
      }
    , { name = "Mae Hong Son"
      , code = "58"
      , unofficialNames = [ "Mae Hong Son" ]
      }
    , { name = "Nakhon Sawan"
      , code = "60"
      , unofficialNames = [ "Nakhon Sawan" ]
      }
    , { name = "Uthai Thani"
      , code = "61"
      , unofficialNames = [ "Uthai Thani" ]
      }
    , { name = "Kamphaeng Phet"
      , code = "62"
      , unofficialNames = [ "Kamphaeng Phet" ]
      }
    , { name = "Tak"
      , code = "63"
      , unofficialNames = [ "Tak" ]
      }
    , { name = "Sukhothai"
      , code = "64"
      , unofficialNames = [ "Sakhothai" ]
      }
    , { name = "Phitsanulok"
      , code = "65"
      , unofficialNames = [ "Phitsanulok" ]
      }
    , { name = "Phichit"
      , code = "66"
      , unofficialNames = [ "Phichit" ]
      }
    , { name = "Phetchabun"
      , code = "67"
      , unofficialNames = [ "Phetchabun" ]
      }
    , { name = "Ratchaburi"
      , code = "70"
      , unofficialNames = [ "Ratchaburi" ]
      }
    , { name = "Kanchanaburi"
      , code = "71"
      , unofficialNames = [ "Kanchanaburi" ]
      }
    , { name = "Suphan Buri"
      , code = "72"
      , unofficialNames = [ "Suphan Buri" ]
      }
    , { name = "Nakhon Pathom"
      , code = "73"
      , unofficialNames = [ "Nakhon Pathom" ]
      }
    , { name = "Samut Sakhon"
      , code = "74"
      , unofficialNames = [ "Samut Sakhon" ]
      }
    , { name = "Samut Songkhram"
      , code = "75"
      , unofficialNames = [ "Samut Songkhram" ]
      }
    , { name = "Phetchaburi"
      , code = "76"
      , unofficialNames = [ "Phetchaburi" ]
      }
    , { name = "Prachuap Khiri Khan"
      , code = "77"
      , unofficialNames = [ "Prachuap Khiri Khan" ]
      }
    , { name = "Nakhon Si Thammarat"
      , code = "80"
      , unofficialNames = [ "Nakhon Si Thammarat" ]
      }
    , { name = "Krabi"
      , code = "81"
      , unofficialNames = [ "Krabi" ]
      }
    , { name = "Phangnga"
      , code = "82"
      , unofficialNames = [ "Phangnga" ]
      }
    , { name = "Phuket"
      , code = "83"
      , unofficialNames = [ "Phuket" ]
      }
    , { name = "Surat Thani"
      , code = "84"
      , unofficialNames = [ "Surat Thani" ]
      }
    , { name = "Ranong"
      , code = "85"
      , unofficialNames = [ "Ranong" ]
      }
    , { name = "Chumphon"
      , code = "86"
      , unofficialNames = [ "Chumphon" ]
      }
    , { name = "Songkhla"
      , code = "90"
      , unofficialNames = [ "Songkhla" ]
      }
    , { name = "Satun"
      , code = "91"
      , unofficialNames = [ "Satun" ]
      }
    , { name = "Trang"
      , code = "92"
      , unofficialNames = [ "Trang" ]
      }
    , { name = "Phatthalung"
      , code = "93"
      , unofficialNames = [ "Phatthalung" ]
      }
    , { name = "Pattani"
      , code = "94"
      , unofficialNames = [ "Pattani" ]
      }
    , { name = "Yala"
      , code = "95"
      , unofficialNames = [ "Yala" ]
      }
    , { name = "Narathiwat"
      , code = "96"
      , unofficialNames = [ "Narathiwat" ]
      }
    , { name = "Phatthaya"
      , code = "S"
      , unofficialNames = [ "Phatthaya" ]
      }
    ]


{-| -}
countryTJSubdivisions : List Subdivision
countryTJSubdivisions =
    [ { name = "Gorno-Badakhshan"
      , code = "GB"
      , unofficialNames = [ "Gorno-Badah??an" ]
      }
    , { name = "Khatlon"
      , code = "KT"
      , unofficialNames = [ "Hatlon" ]
      }
    , { name = "Sughd"
      , code = "SU"
      , unofficialNames = [ "Chudjand", "Hucand", "Hud??and", "H??cand", "Khodzent", "Khodzhent", "Khudzhand", "Leninabad" ]
      }
    ]


{-| -}
countryTKSubdivisions : List Subdivision
countryTKSubdivisions =
    [ { name = "Atafu"
      , code = "A"
      , unofficialNames = [ "Atafu" ]
      }
    , { name = "Fakaofo"
      , code = "F"
      , unofficialNames = [ "Fakaofo" ]
      }
    , { name = "Nukunonu"
      , code = "N"
      , unofficialNames = [ "Nukunonu" ]
      }
    ]


{-| -}
countryTLSubdivisions : List Subdivision
countryTLSubdivisions =
    [ { name = "Aileu"
      , code = "AL"
      , unofficialNames = [ "Aileu" ]
      }
    , { name = "Ainaro"
      , code = "AN"
      , unofficialNames = [ "Ainaro" ]
      }
    , { name = "Baucau"
      , code = "BA"
      , unofficialNames = [ "Baukau" ]
      }
    , { name = "Bobonaro"
      , code = "BO"
      , unofficialNames = [ "Bobonaro" ]
      }
    , { name = "Cova Lima"
      , code = "CO"
      , unofficialNames = [ "Kova-Lima" ]
      }
    , { name = "Dili"
      , code = "DI"
      , unofficialNames = [ "Dili" ]
      }
    , { name = "Ermera"
      , code = "ER"
      , unofficialNames = [ "Ermera" ]
      }
    , { name = "Lautem"
      , code = "LA"
      , unofficialNames = [ "Lautem" ]
      }
    , { name = "Liqui??a"
      , code = "LI"
      , unofficialNames = [ "Likisia" ]
      }
    , { name = "Manufahi"
      , code = "MF"
      , unofficialNames = [ "Manufahi" ]
      }
    , { name = "Manatuto"
      , code = "MT"
      , unofficialNames = [ "Manatuto" ]
      }
    , { name = "Oecussi"
      , code = "OE"
      , unofficialNames = [ "Ambeno", "Ambino", "Oecusse" ]
      }
    , { name = "Viqueque"
      , code = "VI"
      , unofficialNames = [ "Vikeke" ]
      }
    ]


{-| -}
countryTMSubdivisions : List Subdivision
countryTMSubdivisions =
    [ { name = "Ahal"
      , code = "A"
      , unofficialNames = [ "Akhal" ]
      }
    , { name = "Balkan"
      , code = "B"
      , unofficialNames = [ "Balkan" ]
      }
    , { name = "Dasoguz"
      , code = "D"
      , unofficialNames = [ "Dashhovuz", "Dashhowuz", "Dashkhovuz", "Dashogus", "Dashoguz", "Da??hovuz", "Da??hovuz", "Tashauz", "Ta??auz" ]
      }
    , { name = "Lebap"
      , code = "L"
      , unofficialNames = [ "Lebap" ]
      }
    , { name = "Mary"
      , code = "M"
      , unofficialNames = [ "Mary", "Merv" ]
      }
    ]


{-| -}
countryTNSubdivisions : List Subdivision
countryTNSubdivisions =
    [ { name = "Tunis"
      , code = "11"
      , unofficialNames = [ "To??nis", "T??nis", "Tunis", "Tunis", "T??nez" ]
      }
    , { name = "L'Ariana"
      , code = "12"
      , unofficialNames = [ "Ariano", "Iryanah", "Ariana" ]
      }
    , { name = "Ben Arous"
      , code = "13"
      , unofficialNames = [ "Bin Arus", "Ben Arous" ]
      }
    , { name = "La Manouba"
      , code = "14"
      , unofficialNames = [ "Manouba" ]
      }
    , { name = "Nabeul"
      , code = "21"
      , unofficialNames = [ "Nabul", "Nabeul" ]
      }
    , { name = "Zaghouan"
      , code = "22"
      , unofficialNames = [ "Zaghwan", "Zagwan", "Zaghouan" ]
      }
    , { name = "Bizerte"
      , code = "23"
      , unofficialNames = [ "Banzart", "Benzert", "Bizerta", "Bizerte" ]
      }
    , { name = "B??ja"
      , code = "31"
      , unofficialNames = [ "Bajah", "B??ja" ]
      }
    , { name = "Jendouba"
      , code = "32"
      , unofficialNames = [ "Jundubah", "Jendouba" ]
      }
    , { name = "Le Kef"
      , code = "33"
      , unofficialNames = [ "El Kef", "Le Kef" ]
      }
    , { name = "Siliana"
      , code = "34"
      , unofficialNames = [ "Silyanah", "Siliana" ]
      }
    , { name = "Kairouan"
      , code = "41"
      , unofficialNames = [ "al-Qayrawan", "Kairouan" ]
      }
    , { name = "Kasserine"
      , code = "42"
      , unofficialNames = [ "Qasrayn", "Kasserine" ]
      }
    , { name = "Sidi Bouzid"
      , code = "43"
      , unofficialNames = [ "Sidi Bu Zayd", "Sidi Bouzid" ]
      }
    , { name = "Sousse"
      , code = "51"
      , unofficialNames = [ "Susah", "Sousse" ]
      }
    , { name = "Monastir"
      , code = "52"
      , unofficialNames = [ "al-Munastir", "Monastir" ]
      }
    , { name = "Mahdia"
      , code = "53"
      , unofficialNames = [ "Mahdia", "al-Mahdiyah", "Mehdia" ]
      }
    , { name = "Sfax"
      , code = "61"
      , unofficialNames = [ "Safaqis", "Sfax" ]
      }
    , { name = "Gafsa"
      , code = "71"
      , unofficialNames = [ "Gafsa" ]
      }
    , { name = "Tozeur"
      , code = "72"
      , unofficialNames = [ "Tozeur" ]
      }
    , { name = "Kebili"
      , code = "73"
      , unofficialNames = [ "Qabili", "Qabil??", "Qibili", "K??bili" ]
      }
    , { name = "Gab??s"
      , code = "81"
      , unofficialNames = [ "Qabis", "Gab??s" ]
      }
    , { name = "Medenine"
      , code = "82"
      , unofficialNames = [ "Madaniyin", "Medenine" ]
      }
    , { name = "Tataouine"
      , code = "83"
      , unofficialNames = [ "Tatawin", "Tatouine" ]
      }
    ]


{-| -}
countryTOSubdivisions : List Subdivision
countryTOSubdivisions =
    [ { name = "'Eua"
      , code = "01"
      , unofficialNames = [ "Middleburg Island", "??Eua" ]
      }
    , { name = "Ha'apai"
      , code = "02"
      , unofficialNames = [ "Ha'apai" ]
      }
    , { name = "Niuas"
      , code = "03"
      , unofficialNames = [ "Niuas" ]
      }
    , { name = "Tongatapu"
      , code = "04"
      , unofficialNames = [ "Tongatapu" ]
      }
    , { name = "Vava'u"
      , code = "05"
      , unofficialNames = [ "Vava'u" ]
      }
    ]


{-| -}
countryTRSubdivisions : List Subdivision
countryTRSubdivisions =
    [ { name = "Adana"
      , code = "01"
      , unofficialNames = [ "Seyhan" ]
      }
    , { name = "Ad??yaman"
      , code = "02"
      , unofficialNames = [ "Ad??yaman" ]
      }
    , { name = "Afyon"
      , code = "03"
      , unofficialNames = [ "Afyon" ]
      }
    , { name = "A??r??"
      , code = "04"
      , unofficialNames = [ "A??r??" ]
      }
    , { name = "Amasya"
      , code = "05"
      , unofficialNames = [ "Amasya" ]
      }
    , { name = "Ankara"
      , code = "06"
      , unofficialNames = [ "Ankara" ]
      }
    , { name = "Antalya"
      , code = "07"
      , unofficialNames = [ "Antalya" ]
      }
    , { name = "Artvin"
      , code = "08"
      , unofficialNames = [ "Artvin" ]
      }
    , { name = "Ayd??n"
      , code = "09"
      , unofficialNames = [ "Ayd??n" ]
      }
    , { name = "Bal??kesir"
      , code = "10"
      , unofficialNames = [ "Bal??kesir" ]
      }
    , { name = "Bilecik"
      , code = "11"
      , unofficialNames = [ "Bilecik" ]
      }
    , { name = "Bing??l"
      , code = "12"
      , unofficialNames = [ "Bing??l" ]
      }
    , { name = "Bitlis"
      , code = "13"
      , unofficialNames = [ "Bitlis" ]
      }
    , { name = "Bolu"
      , code = "14"
      , unofficialNames = [ "Bolu" ]
      }
    , { name = "Burdur"
      , code = "15"
      , unofficialNames = [ "Burdur" ]
      }
    , { name = "Bursa"
      , code = "16"
      , unofficialNames = [ "Bursa" ]
      }
    , { name = "??anakkale"
      , code = "17"
      , unofficialNames = [ "??anakkale" ]
      }
    , { name = "??ank??r??"
      , code = "18"
      , unofficialNames = [ "??ank??r??" ]
      }
    , { name = "??orum"
      , code = "19"
      , unofficialNames = [ "??orum" ]
      }
    , { name = "Denizli"
      , code = "20"
      , unofficialNames = [ "Denizli" ]
      }
    , { name = "Diyarbak??r"
      , code = "21"
      , unofficialNames = [ "Diyarbak??r" ]
      }
    , { name = "Edirne"
      , code = "22"
      , unofficialNames = [ "Edirne" ]
      }
    , { name = "Elaz????"
      , code = "23"
      , unofficialNames = [ "Elaz????" ]
      }
    , { name = "Erzincan"
      , code = "24"
      , unofficialNames = [ "Erzincan" ]
      }
    , { name = "Erzurum"
      , code = "25"
      , unofficialNames = [ "Erzurum" ]
      }
    , { name = "Eski??ehir"
      , code = "26"
      , unofficialNames = [ "Eski??ehir" ]
      }
    , { name = "Gaziantep"
      , code = "27"
      , unofficialNames = [ "Gaziantep" ]
      }
    , { name = "Giresun"
      , code = "28"
      , unofficialNames = [ "Giresun" ]
      }
    , { name = "G??m????hane"
      , code = "29"
      , unofficialNames = [ "G??m????hane" ]
      }
    , { name = "Hakk??ri"
      , code = "30"
      , unofficialNames = [ "Hakk??ri" ]
      }
    , { name = "Hatay"
      , code = "31"
      , unofficialNames = [ "Hatay" ]
      }
    , { name = "Isparta"
      , code = "32"
      , unofficialNames = [ "Isparta" ]
      }
    , { name = "????el"
      , code = "33"
      , unofficialNames = [ "????el" ]
      }
    , { name = "??stanbul"
      , code = "34"
      , unofficialNames = [ "??stanbul" ]
      }
    , { name = "??zmir"
      , code = "35"
      , unofficialNames = [ "??zmir" ]
      }
    , { name = "Kars"
      , code = "36"
      , unofficialNames = [ "Kars" ]
      }
    , { name = "Kastamonu"
      , code = "37"
      , unofficialNames = [ "Kastamonu" ]
      }
    , { name = "Kayseri"
      , code = "38"
      , unofficialNames = [ "Kayseri" ]
      }
    , { name = "K??rklareli"
      , code = "39"
      , unofficialNames = [ "Kirklareli" ]
      }
    , { name = "K??r??ehir"
      , code = "40"
      , unofficialNames = [ "K??r??ehir" ]
      }
    , { name = "Kocaeli"
      , code = "41"
      , unofficialNames = [ "Kocaeli" ]
      }
    , { name = "Konya"
      , code = "42"
      , unofficialNames = [ "Konya" ]
      }
    , { name = "K??tahya"
      , code = "43"
      , unofficialNames = [ "K??tahya" ]
      }
    , { name = "Malatya"
      , code = "44"
      , unofficialNames = [ "Malatya" ]
      }
    , { name = "Manisa"
      , code = "45"
      , unofficialNames = [ "Manisa" ]
      }
    , { name = "Kahramanmara??"
      , code = "46"
      , unofficialNames = [ "Kahramanmara??", "Mara??" ]
      }
    , { name = "Mardin"
      , code = "47"
      , unofficialNames = [ "Mardin" ]
      }
    , { name = "Mu??la"
      , code = "48"
      , unofficialNames = [ "Mu??la" ]
      }
    , { name = "Mu??"
      , code = "49"
      , unofficialNames = [ "Mu??" ]
      }
    , { name = "Nev??ehir"
      , code = "50"
      , unofficialNames = [ "Nev??ehir" ]
      }
    , { name = "Ni??de"
      , code = "51"
      , unofficialNames = [ "Ni??de" ]
      }
    , { name = "Ordu"
      , code = "52"
      , unofficialNames = [ "Ordu" ]
      }
    , { name = "Rize"
      , code = "53"
      , unofficialNames = [ "Rize" ]
      }
    , { name = "Sakarya"
      , code = "54"
      , unofficialNames = [ "Sakarya" ]
      }
    , { name = "Samsun"
      , code = "55"
      , unofficialNames = [ "Samsun" ]
      }
    , { name = "Siirt"
      , code = "56"
      , unofficialNames = [ "Siirt" ]
      }
    , { name = "Sinop"
      , code = "57"
      , unofficialNames = [ "Sinop" ]
      }
    , { name = "Sivas"
      , code = "58"
      , unofficialNames = [ "Sivas" ]
      }
    , { name = "Tekirda??"
      , code = "59"
      , unofficialNames = [ "Tekirda??" ]
      }
    , { name = "Tokat"
      , code = "60"
      , unofficialNames = [ "Tokat" ]
      }
    , { name = "Trabzon"
      , code = "61"
      , unofficialNames = [ "Trabzon" ]
      }
    , { name = "Tunceli"
      , code = "62"
      , unofficialNames = [ "Tunceli" ]
      }
    , { name = "??anl??urfa"
      , code = "63"
      , unofficialNames = [ "??anl??urfa" ]
      }
    , { name = "U??ak"
      , code = "64"
      , unofficialNames = [ "U??ak" ]
      }
    , { name = "Van"
      , code = "65"
      , unofficialNames = [ "Van" ]
      }
    , { name = "Yozgat"
      , code = "66"
      , unofficialNames = [ "Yozgat" ]
      }
    , { name = "Zonguldak"
      , code = "67"
      , unofficialNames = [ "Zonguldak" ]
      }
    , { name = "Aksaray"
      , code = "68"
      , unofficialNames = [ "Aksaray" ]
      }
    , { name = "Bayburt"
      , code = "69"
      , unofficialNames = [ "Bayburt" ]
      }
    , { name = "Karaman"
      , code = "70"
      , unofficialNames = [ "Karaman" ]
      }
    , { name = "K??r??kkale"
      , code = "71"
      , unofficialNames = [ "K??r??kkale" ]
      }
    , { name = "Batman"
      , code = "72"
      , unofficialNames = [ "Batman" ]
      }
    , { name = "????rnak"
      , code = "73"
      , unofficialNames = [ "????rnak" ]
      }
    , { name = "Bart??n"
      , code = "74"
      , unofficialNames = [ "Bart??n" ]
      }
    , { name = "Ardahan"
      , code = "75"
      , unofficialNames = [ "Ardahan" ]
      }
    , { name = "I??d??r"
      , code = "76"
      , unofficialNames = [ "I??d??r" ]
      }
    , { name = "Yalova"
      , code = "77"
      , unofficialNames = [ "Yalova" ]
      }
    , { name = "Karab??k"
      , code = "78"
      , unofficialNames = [ "Karab??k" ]
      }
    , { name = "Kilis"
      , code = "79"
      , unofficialNames = [ "Kilis" ]
      }
    , { name = "Osmaniye"
      , code = "80"
      , unofficialNames = [ "Osmaniye" ]
      }
    , { name = "D??zce"
      , code = "81"
      , unofficialNames = [ "D??zce" ]
      }
    ]


{-| -}
countryTTSubdivisions : List Subdivision
countryTTSubdivisions =
    [ { name = "Arima"
      , code = "ARI"
      , unofficialNames = [ "Arima" ]
      }
    , { name = "Chaguanas"
      , code = "CHA"
      , unofficialNames = [ "Chaguanas" ]
      }
    , { name = "Couva-Tabaquite-Talparo"
      , code = "CTT"
      , unofficialNames = [ "Couva-Tabaquite-Talparo" ]
      }
    , { name = "Diego Martin"
      , code = "DMN"
      , unofficialNames = [ "Diego Martin" ]
      }
    , { name = "Eastern Tobago"
      , code = "ETO"
      , unofficialNames = [ "Eastern Tobago" ]
      }
    , { name = "Penal-Debe"
      , code = "PED"
      , unofficialNames = [ "Penal-Debe" ]
      }
    , { name = "Port of Spain"
      , code = "POS"
      , unofficialNames = [ "Port of Spain" ]
      }
    , { name = "Princes Town"
      , code = "PRT"
      , unofficialNames = [ "Princes Town" ]
      }
    , { name = "Point Fortin"
      , code = "PTF"
      , unofficialNames = [ "Point Fortin" ]
      }
    , { name = "Rio Claro-Mayaro"
      , code = "RCM"
      , unofficialNames = [ "Rio Claro-Mayaro" ]
      }
    , { name = "San Fernando"
      , code = "SFO"
      , unofficialNames = [ "San Fernando" ]
      }
    , { name = "Sangre Grande"
      , code = "SGE"
      , unofficialNames = [ "Sangre Grande" ]
      }
    , { name = "Siparia"
      , code = "SIP"
      , unofficialNames = [ "Siparia" ]
      }
    , { name = "San Juan-Laventille"
      , code = "SJL"
      , unofficialNames = [ "San Juan-Laventille" ]
      }
    , { name = "Tunapuna-Piarco"
      , code = "TUP"
      , unofficialNames = [ "Tunapuna-Piarco" ]
      }
    , { name = "Western Tobago"
      , code = "WTO"
      , unofficialNames = [ "Western Tobago" ]
      }
    ]


{-| -}
countryTVSubdivisions : List Subdivision
countryTVSubdivisions =
    [ { name = "Funafuti"
      , code = "FUN"
      , unofficialNames = [ "Funafuti" ]
      }
    , { name = "Niutao"
      , code = "NIT"
      , unofficialNames = [ "Niutao" ]
      }
    , { name = "Nui"
      , code = "NIU"
      , unofficialNames = [ "Nui" ]
      }
    , { name = "Nukufetau"
      , code = "NKF"
      , unofficialNames = [ "Nukufetau" ]
      }
    , { name = "Nukulaelae"
      , code = "NKL"
      , unofficialNames = [ "Nukulailai" ]
      }
    , { name = "Nanumea"
      , code = "NMA"
      , unofficialNames = [ "Nanumea" ]
      }
    , { name = "Nanumanga"
      , code = "NMG"
      , unofficialNames = [ "Nanumaga" ]
      }
    , { name = "Vaitupu"
      , code = "VAI"
      , unofficialNames = [ "Vaitupu" ]
      }
    ]


{-| -}
countryTWSubdivisions : List Subdivision
countryTWSubdivisions =
    [ { name = "Changhua"
      , code = "CHA"
      , unofficialNames = [ "Changhua" ]
      }
    , { name = "Chiayi Municipality"
      , code = "CYI"
      , unofficialNames = [ "Chiai" ]
      }
    , { name = "Chiayi"
      , code = "CYQ"
      , unofficialNames = [ "Chiayi" ]
      }
    , { name = "Hsinchu"
      , code = "HSQ"
      , unofficialNames = [ "Hsinchu" ]
      }
    , { name = "Hsinchu Municipality"
      , code = "HSZ"
      , unofficialNames = [ "Hsinchu Municipality" ]
      }
    , { name = "Hualien"
      , code = "HUA"
      , unofficialNames = [ "Hualian" ]
      }
    , { name = "Ilan"
      , code = "ILA"
      , unofficialNames = [ "Ilan" ]
      }
    , { name = "Keelung Municipality"
      , code = "KEE"
      , unofficialNames = [ "Chilung Shih" ]
      }
    , { name = "Kaohsiung Special Municipality"
      , code = "KHH"
      , unofficialNames = [ "Kaohsiung Special Municipality" ]
      }
    , { name = "Kaohsiung"
      , code = "KHQ"
      , unofficialNames = [ "Kaohsiung" ]
      }
    , { name = "Miaoli"
      , code = "MIA"
      , unofficialNames = [ "Miaoli" ]
      }
    , { name = "Nantou"
      , code = "NAN"
      , unofficialNames = [ "Nantou" ]
      }
    , { name = "Penghu"
      , code = "PEN"
      , unofficialNames = [ "Penghu" ]
      }
    , { name = "Pingtung"
      , code = "PIF"
      , unofficialNames = [ "Pingtung" ]
      }
    , { name = "Taoyuan"
      , code = "TAO"
      , unofficialNames = [ "Taoyuan" ]
      }
    , { name = "Tainan Municipality"
      , code = "TNN"
      , unofficialNames = [ "Tainan Municipality" ]
      }
    , { name = "Tainan"
      , code = "TNQ"
      , unofficialNames = [ "Tainan" ]
      }
    , { name = "Taipei Special Municipality"
      , code = "TPE"
      , unofficialNames = [ "Taipei Special Municipality" ]
      }
    , { name = "Taipei"
      , code = "TPQ"
      , unofficialNames = [ "Taipei" ]
      }
    , { name = "Taitung"
      , code = "TTT"
      , unofficialNames = [ "Taidong" ]
      }
    , { name = "Taichung Municipality"
      , code = "TXG"
      , unofficialNames = [ "Taichung Municipality" ]
      }
    , { name = "Taichung"
      , code = "TXQ"
      , unofficialNames = [ "Taichung" ]
      }
    , { name = "Yunlin"
      , code = "YUN"
      , unofficialNames = [ "Yunlin" ]
      }
    ]


{-| -}
countryTZSubdivisions : List Subdivision
countryTZSubdivisions =
    [ { name = "Arusha"
      , code = "01"
      , unofficialNames = [ "Arusha" ]
      }
    , { name = "Dar es Salaam"
      , code = "02"
      , unofficialNames = [ "Daressalam" ]
      }
    , { name = "Dodoma"
      , code = "03"
      , unofficialNames = [ "Dodoma" ]
      }
    , { name = "Iringa"
      , code = "04"
      , unofficialNames = [ "Iringa" ]
      }
    , { name = "Kagera"
      , code = "05"
      , unofficialNames = [ "Akagera", "Ziwa Magharibi" ]
      }
    , { name = "Kaskazini Pemba"
      , code = "06"
      , unofficialNames = [ "Kaskazini Pemba" ]
      }
    , { name = "Kaskazini Unguja"
      , code = "07"
      , unofficialNames = [ "Unguja" ]
      }
    , { name = "Kigoma"
      , code = "08"
      , unofficialNames = [ "Kigoma" ]
      }
    , { name = "Kilimanjaro"
      , code = "09"
      , unofficialNames = [ "Kilimanjaro" ]
      }
    , { name = "Kusini Pemba"
      , code = "10"
      , unofficialNames = [ "Kusini Pemba" ]
      }
    , { name = "Kusini Unguja"
      , code = "11"
      , unofficialNames = [ "Kusini Unguja" ]
      }
    , { name = "Lindi"
      , code = "12"
      , unofficialNames = [ "Lindi" ]
      }
    , { name = "Mara"
      , code = "13"
      , unofficialNames = [ "Mara" ]
      }
    , { name = "Mbeya"
      , code = "14"
      , unofficialNames = [ "Mbeya" ]
      }
    , { name = "Mjini Magharibi"
      , code = "15"
      , unofficialNames = [ "Mjini Magharibi" ]
      }
    , { name = "Morogoro"
      , code = "16"
      , unofficialNames = [ "Morogoro" ]
      }
    , { name = "Mtwara"
      , code = "17"
      , unofficialNames = [ "Mtware" ]
      }
    , { name = "Mwanza"
      , code = "18"
      , unofficialNames = [ "Mwanza" ]
      }
    , { name = "Pwani"
      , code = "19"
      , unofficialNames = [ "Coast" ]
      }
    , { name = "Rukwa"
      , code = "20"
      , unofficialNames = [ "Rukwa" ]
      }
    , { name = "Ruvuma"
      , code = "21"
      , unofficialNames = [ "Ruvuma" ]
      }
    , { name = "Shinyanga"
      , code = "22"
      , unofficialNames = [ "Shinyanga" ]
      }
    , { name = "Singida"
      , code = "23"
      , unofficialNames = [ "Singida" ]
      }
    , { name = "Tabora"
      , code = "24"
      , unofficialNames = [ "Tabora" ]
      }
    , { name = "Tanga"
      , code = "25"
      , unofficialNames = [ "Tanga" ]
      }
    , { name = "Manyara"
      , code = "26"
      , unofficialNames = [ "Manyara" ]
      }
    ]


{-| -}
countryUASubdivisions : List Subdivision
countryUASubdivisions =
    [ { name = "Vinnyts'ka Oblast'"
      , code = "05"
      , unofficialNames = [ "Vinnica", "Vinnitsa", "Vinnytska", "Vinnytsya" ]
      }
    , { name = "Volyns'ka Oblast'"
      , code = "07"
      , unofficialNames = [ "Volyn", "Volynska" ]
      }
    , { name = "Luhans'ka Oblast'"
      , code = "09"
      , unofficialNames = [ "Lugansk", "Luhanska", "Luhans??k", "Voroshilovgrad", "Voro??ilovgrad" ]
      }
    , { name = "Dnipropetrovs'ka Oblast'"
      , code = "12"
      , unofficialNames = [ "Dnepropetrovsk", "Dnipropetrovsk", "Dnipropetrovska", "Dnjepropetrovsk" ]
      }
    , { name = "Donets'ka Oblast'"
      , code = "14"
      , unofficialNames = [ "Doneck", "Donetska", "Donets??ka" ]
      }
    , { name = "Zhytomyrs'ka Oblast'"
      , code = "18"
      , unofficialNames = [ "Zhitomir", "Zhytomyrska" ]
      }
    , { name = "Zakarpats'ka Oblast'"
      , code = "21"
      , unofficialNames = [ "Transcarpathia", "Zakarpatska", "Zakarpats??ka Oblast" ]
      }
    , { name = "Zaporiz'ka Oblast'"
      , code = "23"
      , unofficialNames = [ "Zaporizhzhya", "Zaporizka", "Zaporozhye", "Zaporo??je" ]
      }
    , { name = "Ivano-Frankivs'ka Oblast'"
      , code = "26"
      , unofficialNames = [ "Ivano-Frankivsk", "Ivano-Frankivska", "Ivano-Frankovsk" ]
      }
    , { name = "Ky??v"
      , code = "30"
      , unofficialNames = [ "Kyiv", "Kyyiv", "Kiev" ]
      }
    , { name = "Ky??vs'ka Oblast'"
      , code = "32"
      , unofficialNames = [ "Kyyivs??ka Oblast", "Kyyivs??ka Oblast??" ]
      }
    , { name = "Kirovohrads'ka Oblast'"
      , code = "35"
      , unofficialNames = [ "Kirovograd", "Kirovohrad", "Kirovohradska" ]
      }
    , { name = "Sevastopol'"
      , code = "40"
      , unofficialNames = [ "Sebastopol", "Sevastopol" ]
      }
    , { name = "Respublika Krym"
      , code = "43"
      , unofficialNames = [ "Crimea", "Krim" ]
      }
    , { name = "L'vivs'ka Oblast'"
      , code = "46"
      , unofficialNames = [ "Lvivska", "Lvov", "L??viv" ]
      }
    , { name = "Mykola??vs'ka Oblast'"
      , code = "48"
      , unofficialNames = [ "Mykolayivsk", "Mykolayivska", "Nikolajev", "Nikolayev" ]
      }
    , { name = "Odes'ka Oblast'"
      , code = "51"
      , unofficialNames = [ "Odesa", "Odeska", "Odessa" ]
      }
    , { name = "Poltavs'ka Oblast'"
      , code = "53"
      , unofficialNames = [ "Poltava", "Poltavska" ]
      }
    , { name = "Rivnens'ka Oblast'"
      , code = "56"
      , unofficialNames = [ "Rivne", "Rivnenska", "Rovno", "R??wne" ]
      }
    , { name = "Sums'ka Oblast'"
      , code = "59"
      , unofficialNames = [ "Sumska", "Sumy" ]
      }
    , { name = "Ternopil's'ka Oblast'"
      , code = "61"
      , unofficialNames = [ "Ternopil", "Ternopilska", "Ternopol" ]
      }
    , { name = "Kharkivs'ka Oblast'"
      , code = "63"
      , unofficialNames = [ "Harkov", "Kharkiv", "Kharkivska", "Kharkov" ]
      }
    , { name = "Khersons'ka Oblast'"
      , code = "65"
      , unofficialNames = [ "Herson", "Kherson", "Khersonska" ]
      }
    , { name = "Khmel'nyts'ka Oblast'"
      , code = "68"
      , unofficialNames = [ "Hmelnickij", "Khmelnitsky", "Khmelnytska", "Khmelnytskyy" ]
      }
    , { name = "Cherkas'ka Oblast'"
      , code = "71"
      , unofficialNames = [ "Cherkask", "Cherkassy" ]
      }
    , { name = "Chernihivs'ka Oblast'"
      , code = "74"
      , unofficialNames = [ "Chernigov", "Chernihiv", "??ernigov" ]
      }
    , { name = "Chernivets'ka Oblast'"
      , code = "77"
      , unofficialNames = [ "Cern??u??i", "Chernivtsi", "Chernivtsy", "Chernovtsy", "Czernowitz", "Tschernowitz", "??ernovcy" ]
      }
    ]


{-| -}
countryUGSubdivisions : List Subdivision
countryUGSubdivisions =
    [ { name = "Kalangala"
      , code = "101"
      , unofficialNames = [ "Kalangala" ]
      }
    , { name = "Kampala"
      , code = "102"
      , unofficialNames = [ "Kampala" ]
      }
    , { name = "Kiboga"
      , code = "103"
      , unofficialNames = [ "Kiboga" ]
      }
    , { name = "Luwero"
      , code = "104"
      , unofficialNames = [ "Luwero" ]
      }
    , { name = "Masaka"
      , code = "105"
      , unofficialNames = [ "Masaka" ]
      }
    , { name = "Mpigi"
      , code = "106"
      , unofficialNames = [ "Mpigi" ]
      }
    , { name = "Mubende"
      , code = "107"
      , unofficialNames = [ "Mubende" ]
      }
    , { name = "Mukono"
      , code = "108"
      , unofficialNames = [ "Mukono" ]
      }
    , { name = "Nakasongola"
      , code = "109"
      , unofficialNames = [ "Nakasongola" ]
      }
    , { name = "Rakai"
      , code = "110"
      , unofficialNames = [ "Rakai" ]
      }
    , { name = "Sembabule"
      , code = "111"
      , unofficialNames = [ "Sembabule" ]
      }
    , { name = "Kayunga"
      , code = "112"
      , unofficialNames = [ "Kayunga" ]
      }
    , { name = "Wakiso"
      , code = "113"
      , unofficialNames = [ "Wakiso" ]
      }
    , { name = "Mityana"
      , code = "114"
      , unofficialNames = [ "Mityana" ]
      }
    , { name = "Nakaseke"
      , code = "115"
      , unofficialNames = [ "Nakaseke" ]
      }
    , { name = "Lyantonde"
      , code = "116"
      , unofficialNames = [ "Lyantonde" ]
      }
    , { name = "Bugiri"
      , code = "201"
      , unofficialNames = [ "Bugiri" ]
      }
    , { name = "Busia"
      , code = "202"
      , unofficialNames = [ "Busia" ]
      }
    , { name = "Iganga"
      , code = "203"
      , unofficialNames = [ "Iganga" ]
      }
    , { name = "Jinja"
      , code = "204"
      , unofficialNames = [ "Jinja" ]
      }
    , { name = "Kamuli"
      , code = "205"
      , unofficialNames = [ "Kamuli" ]
      }
    , { name = "Kapchorwa"
      , code = "206"
      , unofficialNames = [ "Kapchorwa" ]
      }
    , { name = "Katakwi"
      , code = "207"
      , unofficialNames = [ "Katakwi" ]
      }
    , { name = "Kumi"
      , code = "208"
      , unofficialNames = [ "Kumi" ]
      }
    , { name = "Mbale"
      , code = "209"
      , unofficialNames = [ "Mbale" ]
      }
    , { name = "Pallisa"
      , code = "210"
      , unofficialNames = [ "Pallisa" ]
      }
    , { name = "Soroti"
      , code = "211"
      , unofficialNames = [ "Soroti" ]
      }
    , { name = "Tororo"
      , code = "212"
      , unofficialNames = [ "Tororo" ]
      }
    , { name = "Kaberamaido"
      , code = "213"
      , unofficialNames = [ "Kaberamaido" ]
      }
    , { name = "Mayuge"
      , code = "214"
      , unofficialNames = [ "Mayuge" ]
      }
    , { name = "Sironko"
      , code = "215"
      , unofficialNames = [ "Sironko" ]
      }
    , { name = "Amuria"
      , code = "216"
      , unofficialNames = [ "Amuria" ]
      }
    , { name = "Budaka"
      , code = "217"
      , unofficialNames = [ "Budaka" ]
      }
    , { name = "Bukwa"
      , code = "218"
      , unofficialNames = [ "Bukwa" ]
      }
    , { name = "Butaleja"
      , code = "219"
      , unofficialNames = [ "Butaleja" ]
      }
    , { name = "Kaliro"
      , code = "220"
      , unofficialNames = [ "Kaliro" ]
      }
    , { name = "Manafwa"
      , code = "221"
      , unofficialNames = [ "Manafwa" ]
      }
    , { name = "Namutumba"
      , code = "222"
      , unofficialNames = [ "Namutumba" ]
      }
    , { name = "Bududa"
      , code = "223"
      , unofficialNames = [ "Bududa" ]
      }
    , { name = "Bukedea"
      , code = "224"
      , unofficialNames = [ "Bukedea" ]
      }
    , { name = "Adjumani"
      , code = "301"
      , unofficialNames = [ "Adjumani" ]
      }
    , { name = "Apac"
      , code = "302"
      , unofficialNames = [ "Apac" ]
      }
    , { name = "Arua"
      , code = "303"
      , unofficialNames = [ "Arua" ]
      }
    , { name = "Gulu"
      , code = "304"
      , unofficialNames = [ "Gulu" ]
      }
    , { name = "Kitgum"
      , code = "305"
      , unofficialNames = [ "Kitgum" ]
      }
    , { name = "Kotido"
      , code = "306"
      , unofficialNames = [ "Kotido" ]
      }
    , { name = "Lira"
      , code = "307"
      , unofficialNames = [ "Lira" ]
      }
    , { name = "Moroto"
      , code = "308"
      , unofficialNames = [ "Moroto" ]
      }
    , { name = "Moyo"
      , code = "309"
      , unofficialNames = [ "Moyo" ]
      }
    , { name = "Nebbi"
      , code = "310"
      , unofficialNames = [ "Nebbi" ]
      }
    , { name = "Nakapiripirit"
      , code = "311"
      , unofficialNames = [ "Nakapiripirit" ]
      }
    , { name = "Pader"
      , code = "312"
      , unofficialNames = [ "Pader" ]
      }
    , { name = "Yumbe"
      , code = "313"
      , unofficialNames = [ "Yumbe" ]
      }
    , { name = "Amolatar"
      , code = "314"
      , unofficialNames = [ "Amolatar" ]
      }
    , { name = "Kaabong"
      , code = "315"
      , unofficialNames = [ "Kaabong" ]
      }
    , { name = "Koboko"
      , code = "316"
      , unofficialNames = [ "Koboko" ]
      }
    , { name = "Abim"
      , code = "317"
      , unofficialNames = [ "Abim" ]
      }
    , { name = "Dokolo"
      , code = "318"
      , unofficialNames = [ "Dokolo" ]
      }
    , { name = "Amuru"
      , code = "319"
      , unofficialNames = [ "Amuru" ]
      }
    , { name = "Maracha"
      , code = "320"
      , unofficialNames = [ "Maracha" ]
      }
    , { name = "Oyam"
      , code = "321"
      , unofficialNames = [ "Oyam" ]
      }
    , { name = "Bundibugyo"
      , code = "401"
      , unofficialNames = [ "Bundibugyo" ]
      }
    , { name = "Bushenyi"
      , code = "402"
      , unofficialNames = [ "Bushenyi" ]
      }
    , { name = "Hoima"
      , code = "403"
      , unofficialNames = [ "Hoima" ]
      }
    , { name = "Kabale"
      , code = "404"
      , unofficialNames = [ "Kabale" ]
      }
    , { name = "Kabarole"
      , code = "405"
      , unofficialNames = [ "Kabarole" ]
      }
    , { name = "Kasese"
      , code = "406"
      , unofficialNames = [ "Kasese" ]
      }
    , { name = "Kibaale"
      , code = "407"
      , unofficialNames = [ "Kibaale" ]
      }
    , { name = "Kisoro"
      , code = "408"
      , unofficialNames = [ "Kisoro" ]
      }
    , { name = "Masindi"
      , code = "409"
      , unofficialNames = [ "Masindi" ]
      }
    , { name = "Mbarara"
      , code = "410"
      , unofficialNames = [ "Mbarara" ]
      }
    , { name = "Ntungamo"
      , code = "411"
      , unofficialNames = [ "Ntungamo" ]
      }
    , { name = "Rukungiri"
      , code = "412"
      , unofficialNames = [ "Rukungiri" ]
      }
    , { name = "Kamwenge"
      , code = "413"
      , unofficialNames = [ "Kamwenge" ]
      }
    , { name = "Kanungu"
      , code = "414"
      , unofficialNames = [ "Kanungu" ]
      }
    , { name = "Kyenjojo"
      , code = "415"
      , unofficialNames = [ "Kyenjojo" ]
      }
    , { name = "Ibanda"
      , code = "416"
      , unofficialNames = [ "Ibanda" ]
      }
    , { name = "Isingiro"
      , code = "417"
      , unofficialNames = [ "Isingiro" ]
      }
    , { name = "Kiruhura"
      , code = "418"
      , unofficialNames = [ "Kiruhura" ]
      }
    , { name = "Buliisa"
      , code = "419"
      , unofficialNames = [ "Buliisa" ]
      }
    ]


{-| -}
countryUMSubdivisions : List Subdivision
countryUMSubdivisions =
    [ { name = "Johnston Atoll"
      , code = "67"
      , unofficialNames = [ "Johnston Atoll" ]
      }
    , { name = "Midway Islands"
      , code = "71"
      , unofficialNames = [ "Midway Islands" ]
      }
    , { name = "Navassa Island"
      , code = "76"
      , unofficialNames = [ "Navassa Island" ]
      }
    , { name = "Wake Island"
      , code = "79"
      , unofficialNames = [ "Wake Island" ]
      }
    , { name = "Baker Island"
      , code = "81"
      , unofficialNames = [ "Baker Island" ]
      }
    , { name = "Howland Island"
      , code = "84"
      , unofficialNames = [ "Howland Island" ]
      }
    , { name = "Jarvis Island"
      , code = "86"
      , unofficialNames = [ "Jarvis Island" ]
      }
    , { name = "Kingman Reef"
      , code = "89"
      , unofficialNames = [ "Kingman Reef" ]
      }
    , { name = "Palmyra Atoll"
      , code = "95"
      , unofficialNames = [ "Palmyra Atoll" ]
      }
    ]


{-| -}
countryUSSubdivisions : List Subdivision
countryUSSubdivisions =
    [ { name = "Armed Forces Americas"
      , code = "AA"
      , unofficialNames = [ "Armed Forces Americas" ]
      }
    , { name = "Armed Forces Europe"
      , code = "AE"
      , unofficialNames = [ "Armed Forces Europe" ]
      }
    , { name = "Alaska"
      , code = "AK"
      , unofficialNames = [ "Alaska" ]
      }
    , { name = "Alabama"
      , code = "AL"
      , unofficialNames = [ "Alabama" ]
      }
    , { name = "Armed Forces Pacific"
      , code = "AP"
      , unofficialNames = [ "Armed Forces Pacific" ]
      }
    , { name = "Arkansas"
      , code = "AR"
      , unofficialNames = [ "Arkansas" ]
      }
    , { name = "American Samoa"
      , code = "AS"
      , unofficialNames = [ "American Samoa" ]
      }
    , { name = "Arizona"
      , code = "AZ"
      , unofficialNames = [ "Arizona" ]
      }
    , { name = "California"
      , code = "CA"
      , unofficialNames = [ "California" ]
      }
    , { name = "Colorado"
      , code = "CO"
      , unofficialNames = [ "Colorado" ]
      }
    , { name = "Connecticut"
      , code = "CT"
      , unofficialNames = [ "Connecticut" ]
      }
    , { name = "District of Columbia"
      , code = "DC"
      , unofficialNames = [ "District of Columbia" ]
      }
    , { name = "Delaware"
      , code = "DE"
      , unofficialNames = [ "Delaware" ]
      }
    , { name = "Florida"
      , code = "FL"
      , unofficialNames = [ "Florida" ]
      }
    , { name = "Georgia"
      , code = "GA"
      , unofficialNames = [ "Georgia" ]
      }
    , { name = "Guam"
      , code = "GU"
      , unofficialNames = [ "Guam" ]
      }
    , { name = "Hawaii"
      , code = "HI"
      , unofficialNames = [ "Hawaii" ]
      }
    , { name = "Iowa"
      , code = "IA"
      , unofficialNames = [ "Iowa" ]
      }
    , { name = "Idaho"
      , code = "ID"
      , unofficialNames = [ "Idaho" ]
      }
    , { name = "Illinois"
      , code = "IL"
      , unofficialNames = [ "Illinois" ]
      }
    , { name = "Indiana"
      , code = "IN"
      , unofficialNames = [ "Indiana" ]
      }
    , { name = "Kansas"
      , code = "KS"
      , unofficialNames = [ "Kansas" ]
      }
    , { name = "Kentucky"
      , code = "KY"
      , unofficialNames = [ "Kentucky" ]
      }
    , { name = "Louisiana"
      , code = "LA"
      , unofficialNames = [ "Louisiana" ]
      }
    , { name = "Massachusetts"
      , code = "MA"
      , unofficialNames = [ "Massachusetts" ]
      }
    , { name = "Maryland"
      , code = "MD"
      , unofficialNames = [ "Maryland" ]
      }
    , { name = "Maine"
      , code = "ME"
      , unofficialNames = [ "Maine" ]
      }
    , { name = "Michigan"
      , code = "MI"
      , unofficialNames = [ "Michigan" ]
      }
    , { name = "Minnesota"
      , code = "MN"
      , unofficialNames = [ "Minnesota" ]
      }
    , { name = "Missouri"
      , code = "MO"
      , unofficialNames = [ "Missouri" ]
      }
    , { name = "Northern Mariana Islands"
      , code = "MP"
      , unofficialNames = [ "Northern Mariana Islands" ]
      }
    , { name = "Mississippi"
      , code = "MS"
      , unofficialNames = [ "Mississippi" ]
      }
    , { name = "Montana"
      , code = "MT"
      , unofficialNames = [ "Montana" ]
      }
    , { name = "North Carolina"
      , code = "NC"
      , unofficialNames = [ "North Carolina" ]
      }
    , { name = "North Dakota"
      , code = "ND"
      , unofficialNames = [ "North Dakota" ]
      }
    , { name = "Nebraska"
      , code = "NE"
      , unofficialNames = [ "Nebraska" ]
      }
    , { name = "New Hampshire"
      , code = "NH"
      , unofficialNames = [ "New Hampshire" ]
      }
    , { name = "New Jersey"
      , code = "NJ"
      , unofficialNames = [ "New Jersey" ]
      }
    , { name = "New Mexico"
      , code = "NM"
      , unofficialNames = [ "New Mexico" ]
      }
    , { name = "Nevada"
      , code = "NV"
      , unofficialNames = [ "Nevada" ]
      }
    , { name = "New York"
      , code = "NY"
      , unofficialNames = [ "New York" ]
      }
    , { name = "Ohio"
      , code = "OH"
      , unofficialNames = [ "Ohio" ]
      }
    , { name = "Oklahoma"
      , code = "OK"
      , unofficialNames = [ "Oklahoma" ]
      }
    , { name = "Oregon"
      , code = "OR"
      , unofficialNames = [ "Oregon" ]
      }
    , { name = "Pennsylvania"
      , code = "PA"
      , unofficialNames = [ "Pennsylvania" ]
      }
    , { name = "Puerto Rico"
      , code = "PR"
      , unofficialNames = [ "Puerto Rico" ]
      }
    , { name = "Rhode Island"
      , code = "RI"
      , unofficialNames = [ "Rhode Island" ]
      }
    , { name = "South Carolina"
      , code = "SC"
      , unofficialNames = [ "South Carolina" ]
      }
    , { name = "South Dakota"
      , code = "SD"
      , unofficialNames = [ "South Dakota" ]
      }
    , { name = "Tennessee"
      , code = "TN"
      , unofficialNames = [ "Tennessee" ]
      }
    , { name = "Texas"
      , code = "TX"
      , unofficialNames = [ "Texas" ]
      }
    , { name = "United States Minor Outlying Islands"
      , code = "UM"
      , unofficialNames = [ "United States Minor Outlying Islands" ]
      }
    , { name = "Utah"
      , code = "UT"
      , unofficialNames = [ "Utah" ]
      }
    , { name = "Virginia"
      , code = "VA"
      , unofficialNames = [ "Virginia" ]
      }
    , { name = "Virgin Islands, U.S."
      , code = "VI"
      , unofficialNames = [ "Virgin Islands, U.S." ]
      }
    , { name = "Vermont"
      , code = "VT"
      , unofficialNames = [ "Vermont" ]
      }
    , { name = "Washington"
      , code = "WA"
      , unofficialNames = [ "Washington" ]
      }
    , { name = "Wisconsin"
      , code = "WI"
      , unofficialNames = [ "Wisconsin" ]
      }
    , { name = "West Virginia"
      , code = "WV"
      , unofficialNames = [ "West Virginia" ]
      }
    , { name = "Wyoming"
      , code = "WY"
      , unofficialNames = [ "Wyoming" ]
      }
    ]


{-| -}
countryUYSubdivisions : List Subdivision
countryUYSubdivisions =
    [ { name = "Artigas"
      , code = "AR"
      , unofficialNames = [ "Artigas" ]
      }
    , { name = "Canelones"
      , code = "CA"
      , unofficialNames = [ "Canelones" ]
      }
    , { name = "Colonia"
      , code = "CO"
      , unofficialNames = [ "Colonia" ]
      }
    , { name = "Cerro Lago"
      , code = "CL"
      , unofficialNames = [ "Cerro Lago" ]
      }
    , { name = "Durazno"
      , code = "DU"
      , unofficialNames = [ "Durazno" ]
      }
    , { name = "Florida"
      , code = "FD"
      , unofficialNames = [ "FLorida" ]
      }
    , { name = "Flores"
      , code = "FS"
      , unofficialNames = [ "Flores" ]
      }
    , { name = "Lavalleja"
      , code = "LA"
      , unofficialNames = [ "Lavalleja" ]
      }
    , { name = "Maldonado"
      , code = "MA"
      , unofficialNames = [ "Maldonado" ]
      }
    , { name = "Montevideo"
      , code = "MO"
      , unofficialNames = [ "Montevideo" ]
      }
    , { name = "Paysand??"
      , code = "PA"
      , unofficialNames = [ "Paysand??" ]
      }
    , { name = "R??o Negro"
      , code = "RN"
      , unofficialNames = [ "R??o Negro" ]
      }
    , { name = "Rocha"
      , code = "RO"
      , unofficialNames = [ "Rocha" ]
      }
    , { name = "Rivera"
      , code = "RV"
      , unofficialNames = [ "Rivera" ]
      }
    , { name = "Salto"
      , code = "SA"
      , unofficialNames = [ "Salto" ]
      }
    , { name = "San Jos??"
      , code = "SJ"
      , unofficialNames = [ "San Jos??" ]
      }
    , { name = "Soriano"
      , code = "SO"
      , unofficialNames = [ "Soriano" ]
      }
    , { name = "Tacuaremb??"
      , code = "TA"
      , unofficialNames = [ "Tacuaremb??" ]
      }
    , { name = "Treinta y Tres"
      , code = "TT"
      , unofficialNames = [ "Treinta y Tres" ]
      }
    ]


{-| -}
countryUZSubdivisions : List Subdivision
countryUZSubdivisions =
    [ { name = "Andijon"
      , code = "AN"
      , unofficialNames = [ "Andijon", "Andizhan", "Andi??an" ]
      }
    , { name = "Buxoro"
      , code = "BU"
      , unofficialNames = [ "Boukhara", "Buchara", "Buhara", "Buhoro", "Bukhara", "Bukhoro" ]
      }
    , { name = "Farg???ona"
      , code = "FA"
      , unofficialNames = [ "Farghona", "Fergana", "Ferghana", "Ferghona" ]
      }
    , { name = "Jizzax"
      , code = "JI"
      , unofficialNames = [ "Cizah", "Cizak", "Djizak", "Dzhizak", "D??izak", "Jizzakh" ]
      }
    , { name = "Namangan"
      , code = "NG"
      , unofficialNames = [ "Namangan", "Nama??gan" ]
      }
    , { name = "Navoiy"
      , code = "NW"
      , unofficialNames = [ "Navoi", "Navoj", "Navoy" ]
      }
    , { name = "Qashqadaryo"
      , code = "QA"
      , unofficialNames = [ "Kashkadar", "Kashkadaria", "Kashkadarya", "Kaskadar", "Qashqadar", "Qasqadar", "Qa??qadar", "??a????adar" ]
      }
    , { name = "Qoraqalpog???iston Respublikasi"
      , code = "QR"
      , unofficialNames = [ "Karakalpakistan", "Qoraqalpoghiston", "Qoraqalpogiston" ]
      }
    , { name = "Samarqand"
      , code = "SA"
      , unofficialNames = [ "Samarqand", "Samar??and", "Samarkand", "Samarkand" ]
      }
    , { name = "Sirdaryo"
      , code = "SI"
      , unofficialNames = [ "Sirdare", "Syrdarja", "Syrdarya" ]
      }
    , { name = "Surxondaryo"
      , code = "SU"
      , unofficialNames = [ "Surkhondar" ]
      }
    , { name = "Toshkent City"
      , code = "TK"
      , unofficialNames = [ "Toshkent City" ]
      }
    , { name = "Toshkent"
      , code = "TO"
      , unofficialNames = [ "Ta??kent", "Toshkent", "To??kent", "Toshkent", "Taschkent", "Tachkent" ]
      }
    , { name = "Xorazm"
      , code = "XO"
      , unofficialNames = [ "Khorazm" ]
      }
    ]


{-| -}
countryVCSubdivisions : List Subdivision
countryVCSubdivisions =
    [ { name = "Charlotte"
      , code = "01"
      , unofficialNames = [ "Charlotte" ]
      }
    , { name = "Saint Andrew"
      , code = "02"
      , unofficialNames = [ "Saint Andrew" ]
      }
    , { name = "Saint David"
      , code = "03"
      , unofficialNames = [ "Saint David" ]
      }
    , { name = "Saint George"
      , code = "04"
      , unofficialNames = [ "Saint George" ]
      }
    , { name = "Saint Patrick"
      , code = "05"
      , unofficialNames = [ "Saint Patrick" ]
      }
    , { name = "Grenadines"
      , code = "06"
      , unofficialNames = [ "Grenadines" ]
      }
    ]


{-| -}
countryVESubdivisions : List Subdivision
countryVESubdivisions =
    [ { name = "Distrito Federal"
      , code = "A"
      , unofficialNames = [ "Distrito Federal" ]
      }
    , { name = "Anzo??tegui"
      , code = "B"
      , unofficialNames = [ "Anzo??tegui" ]
      }
    , { name = "Apure"
      , code = "C"
      , unofficialNames = [ "Apure" ]
      }
    , { name = "Aragua"
      , code = "D"
      , unofficialNames = [ "Aragua" ]
      }
    , { name = "Barinas"
      , code = "E"
      , unofficialNames = [ "Barinas" ]
      }
    , { name = "Bol??var"
      , code = "F"
      , unofficialNames = [ "Bol??var" ]
      }
    , { name = "Carabobo"
      , code = "G"
      , unofficialNames = [ "Carabobo" ]
      }
    , { name = "Cojedes"
      , code = "H"
      , unofficialNames = [ "Cojedes" ]
      }
    , { name = "Falc??n"
      , code = "I"
      , unofficialNames = [ "Falc??n" ]
      }
    , { name = "Gu??rico"
      , code = "J"
      , unofficialNames = [ "Gu??rico" ]
      }
    , { name = "Lara"
      , code = "K"
      , unofficialNames = [ "Lara" ]
      }
    , { name = "M??rida"
      , code = "L"
      , unofficialNames = [ "M??rida" ]
      }
    , { name = "Miranda"
      , code = "M"
      , unofficialNames = [ "Miranda" ]
      }
    , { name = "Monagas"
      , code = "N"
      , unofficialNames = [ "Monagas" ]
      }
    , { name = "Nueva Esparta"
      , code = "O"
      , unofficialNames = [ "Nueva Esparta" ]
      }
    , { name = "Portuguesa"
      , code = "P"
      , unofficialNames = [ "Portuguesa" ]
      }
    , { name = "Sucre"
      , code = "R"
      , unofficialNames = [ "Sucre" ]
      }
    , { name = "T??chira"
      , code = "S"
      , unofficialNames = [ "T??chira" ]
      }
    , { name = "Trujillo"
      , code = "T"
      , unofficialNames = [ "Trujillo" ]
      }
    , { name = "Yaracuy"
      , code = "U"
      , unofficialNames = [ "Yaracuy" ]
      }
    , { name = "Zulia"
      , code = "V"
      , unofficialNames = [ "Zulia" ]
      }
    , { name = "Dependencias Federales"
      , code = "W"
      , unofficialNames = [ "Dependencias Federales" ]
      }
    , { name = "Vargas"
      , code = "X"
      , unofficialNames = [ "Vargas" ]
      }
    , { name = "Delta Amacuro"
      , code = "Y"
      , unofficialNames = [ "Delta Amacuro" ]
      }
    , { name = "Amazonas"
      , code = "Z"
      , unofficialNames = [ "Amazonas" ]
      }
    ]


{-| -}
countryVISubdivisions : List Subdivision
countryVISubdivisions =
    [ { name = "Saint Croix"
      , code = "C"
      , unofficialNames = [ "Saint Croix" ]
      }
    , { name = "Saint John"
      , code = "J"
      , unofficialNames = [ "Saint John" ]
      }
    , { name = "Saint Thomas"
      , code = "T"
      , unofficialNames = [ "Saint Thomas" ]
      }
    ]


{-| -}
countryVNSubdivisions : List Subdivision
countryVNSubdivisions =
    [ { name = "Ho Chi Minh"
      , code = "SG"
      , unofficialNames = [ "Sai Gon" ]
      }
    , { name = "Ha Noi"
      , code = "HN"
      , unofficialNames = [ "Ha Noi, thu do" ]
      }
    , { name = "Can Tho"
      , code = "CT"
      , unofficialNames = [ "Can Tho" ]
      }
    , { name = "Da Nang"
      , code = "DN"
      , unofficialNames = [ "Da Nang, thanh pho" ]
      }
    , { name = "Hai Phong"
      , code = "HP"
      , unofficialNames = [ "Hai Phong, thanh pho" ]
      }
    , { name = "An Giang"
      , code = "44"
      , unofficialNames = [ "An Giang" ]
      }
    , { name = "Ba Ria - Vung Tau"
      , code = "43"
      , unofficialNames = [ "Ba Ria - Vung Tau" ]
      }
    , { name = "Bac Giang"
      , code = "54"
      , unofficialNames = [ "Bac Giang" ]
      }
    , { name = "Bac Can"
      , code = "53"
      , unofficialNames = [ "Bac Can" ]
      }
    , { name = "Bac Lieu"
      , code = "55"
      , unofficialNames = [ "Bac Lieu" ]
      }
    , { name = "Bac Ninh"
      , code = "56"
      , unofficialNames = [ "Bac Ninh" ]
      }
    , { name = "Ben Tre"
      , code = "50"
      , unofficialNames = [ "Ben Tre" ]
      }
    , { name = "Binh Dinh"
      , code = "31"
      , unofficialNames = [ "Binh Dinh" ]
      }
    , { name = "Binh Duong"
      , code = "57"
      , unofficialNames = [ "Binh Duong" ]
      }
    , { name = "Binh Phuoc"
      , code = "58"
      , unofficialNames = [ "Binh Phuoc" ]
      }
    , { name = "Binh Thuan"
      , code = "40"
      , unofficialNames = [ "Binh Thuan" ]
      }
    , { name = "Ca Mau"
      , code = "59"
      , unofficialNames = [ "Ca Mau" ]
      }
    , { name = "Cao Bang"
      , code = "04"
      , unofficialNames = [ "Cao Bang" ]
      }
    , { name = "Dac Lac"
      , code = "33"
      , unofficialNames = [ "Dac Lac" ]
      }
    , { name = "Dak Nong"
      , code = "72"
      , unofficialNames = [ "Dak Nong" ]
      }
    , { name = "Dien Bien"
      , code = "71"
      , unofficialNames = [ "Dien Bien" ]
      }
    , { name = "Dong Nai"
      , code = "39"
      , unofficialNames = [ "Dong Nai" ]
      }
    , { name = "Dong Thap"
      , code = "45"
      , unofficialNames = [ "Dong Thap" ]
      }
    , { name = "Gia Lai"
      , code = "30"
      , unofficialNames = [ "Gia Lai" ]
      }
    , { name = "Ha Giang"
      , code = "03"
      , unofficialNames = [ "Ha Giang" ]
      }
    , { name = "Ha Nam"
      , code = "63"
      , unofficialNames = [ "Ha Nam" ]
      }
    , { name = "Ha Tinh"
      , code = "23"
      , unofficialNames = [ "Ha Tinh" ]
      }
    , { name = "Hai Duong"
      , code = "61"
      , unofficialNames = [ "Hai Duong" ]
      }
    , { name = "Hau Giang"
      , code = "73"
      , unofficialNames = [ "Hau Giang" ]
      }
    , { name = "Hoa Binh"
      , code = "14"
      , unofficialNames = [ "Hoa Binh" ]
      }
    , { name = "Hung Yen"
      , code = "66"
      , unofficialNames = [ "Hung Yen" ]
      }
    , { name = "Khanh Hoa"
      , code = "34"
      , unofficialNames = [ "Khanh Hoa" ]
      }
    , { name = "Kien Giang"
      , code = "47"
      , unofficialNames = [ "Kien Giang" ]
      }
    , { name = "Kon Tum"
      , code = "28"
      , unofficialNames = [ "Kon Tum" ]
      }
    , { name = "Lai Chau"
      , code = "01"
      , unofficialNames = [ "Lai Chau" ]
      }
    , { name = "Lam Dong"
      , code = "35"
      , unofficialNames = [ "Lam Dong" ]
      }
    , { name = "Lang Son"
      , code = "09"
      , unofficialNames = [ "Lang Son" ]
      }
    , { name = "Lao Cai"
      , code = "02"
      , unofficialNames = [ "Lao Cai" ]
      }
    , { name = "Long An"
      , code = "41"
      , unofficialNames = [ "Long An" ]
      }
    , { name = "Nam Dinh"
      , code = "67"
      , unofficialNames = [ "Nam Dinh" ]
      }
    , { name = "Nghe An"
      , code = "22"
      , unofficialNames = [ "Nghe An" ]
      }
    , { name = "Ninh Binh"
      , code = "18"
      , unofficialNames = [ "Ninh Binh" ]
      }
    , { name = "Ninh Thuan"
      , code = "36"
      , unofficialNames = [ "Ninh Thuan" ]
      }
    , { name = "Phu Tho"
      , code = "68"
      , unofficialNames = [ "Phu Tho" ]
      }
    , { name = "Phu Yen"
      , code = "32"
      , unofficialNames = [ "Phu Yen" ]
      }
    , { name = "Quang Binh"
      , code = "24"
      , unofficialNames = [ "Quang Binh" ]
      }
    , { name = "Quang Nam"
      , code = "27"
      , unofficialNames = [ "Quang Nam" ]
      }
    , { name = "Quang Ngai"
      , code = "29"
      , unofficialNames = [ "Quang Ngai" ]
      }
    , { name = "Quang Ninh"
      , code = "13"
      , unofficialNames = [ "Quang Ninh" ]
      }
    , { name = "Quang Tri"
      , code = "25"
      , unofficialNames = [ "Quang Tri" ]
      }
    , { name = "Soc Trang"
      , code = "52"
      , unofficialNames = [ "Soc Trang" ]
      }
    , { name = "Son La"
      , code = "05"
      , unofficialNames = [ "Son La" ]
      }
    , { name = "Tay Ninh"
      , code = "37"
      , unofficialNames = [ "Tay Ninh" ]
      }
    , { name = "Thai Binh"
      , code = "20"
      , unofficialNames = [ "Thai Binh" ]
      }
    , { name = "Thai Nguyen"
      , code = "69"
      , unofficialNames = [ "Central Highlands" ]
      }
    , { name = "Thanh Hoa"
      , code = "21"
      , unofficialNames = [ "Thanh Hoa" ]
      }
    , { name = "Thua Thien-Hue"
      , code = "26"
      , unofficialNames = [ "Thua Thien-Hue" ]
      }
    , { name = "Tien Giang"
      , code = "46"
      , unofficialNames = [ "Tien Giang" ]
      }
    , { name = "Tra Vinh"
      , code = "51"
      , unofficialNames = [ "Tra Vinh" ]
      }
    , { name = "Tuyen Quang"
      , code = "07"
      , unofficialNames = [ "Tuyen Quang" ]
      }
    , { name = "Vinh Long"
      , code = "49"
      , unofficialNames = [ "Vinh Long" ]
      }
    , { name = "Vinh Phuc"
      , code = "70"
      , unofficialNames = [ "Vinh Phuc" ]
      }
    , { name = "Yen Bai"
      , code = "06"
      , unofficialNames = [ "Yen Bai" ]
      }
    ]


{-| -}
countryVUSubdivisions : List Subdivision
countryVUSubdivisions =
    [ { name = "Malampa"
      , code = "MAP"
      , unofficialNames = [ "Ambrim", "Ambrym", "Malakula", "Malekula", "Mallicollo", "Paama" ]
      }
    , { name = "P??nama"
      , code = "PAM"
      , unofficialNames = [ "Ambae-Maewo", "Aoba-Maewo", "Omba-Aurora", "Omba-Maewo", "Pentecost" ]
      }
    , { name = "Sanma"
      , code = "SAM"
      , unofficialNames = [ "Santo-Malo" ]
      }
    , { name = "Sh??fa"
      , code = "SEE"
      , unofficialNames = [ "Sandwich Island", "Vat??", "??fat??" ]
      }
    , { name = "Taf??a"
      , code = "TAE"
      , unofficialNames = [ "Taf??a" ]
      }
    , { name = "Torba"
      , code = "TOB"
      , unofficialNames = [ "Banks-Torres" ]
      }
    ]


{-| -}
countryWFSubdivisions : List Subdivision
countryWFSubdivisions =
    []


{-| -}
countryWSSubdivisions : List Subdivision
countryWSSubdivisions =
    [ { name = "A'ana"
      , code = "AA"
      , unofficialNames = [ "A'ana" ]
      }
    , { name = "Aiga-i-le-Tai"
      , code = "AL"
      , unofficialNames = [ "Aiga-i-le-Tai" ]
      }
    , { name = "Atua"
      , code = "AT"
      , unofficialNames = [ "Atua" ]
      }
    , { name = "Fa'asaleleaga"
      , code = "FA"
      , unofficialNames = [ "Fa'asaleleaga" ]
      }
    , { name = "Gaga'emauga"
      , code = "GE"
      , unofficialNames = [ "Gaga'emauga" ]
      }
    , { name = "Gagaifomauga"
      , code = "GI"
      , unofficialNames = [ "Gagaifomauga" ]
      }
    , { name = "Palauli"
      , code = "PA"
      , unofficialNames = [ "Palauli" ]
      }
    , { name = "Satupa'itea"
      , code = "SA"
      , unofficialNames = [ "Satupa'itea" ]
      }
    , { name = "Tuamasaga"
      , code = "TU"
      , unofficialNames = [ "Tuamasaga" ]
      }
    , { name = "Va'a-o-Fonoti"
      , code = "VF"
      , unofficialNames = [ "Va'a-o-Fonoti" ]
      }
    , { name = "Vaisigano"
      , code = "VS"
      , unofficialNames = [ "Vaisigano" ]
      }
    ]


{-| -}
countryYESubdivisions : List Subdivision
countryYESubdivisions =
    [ { name = "Abyan"
      , code = "AB"
      , unofficialNames = [ "Abyan" ]
      }
    , { name = "??Adan"
      , code = "AD"
      , unofficialNames = [ "Adan", "??Adan", "Aden", "Aden", "Ad??n" ]
      }
    , { name = "'Amran"
      , code = "AM"
      , unofficialNames = [ "'Amran" ]
      }
    , { name = "Al Bay????????"
      , code = "BA"
      , unofficialNames = [ "Al Baida" ]
      }
    , { name = "Ad?? D??ali'"
      , code = "DA"
      , unofficialNames = [ "Ad?? D??ali'" ]
      }
    , { name = "Dhamar"
      , code = "DH"
      , unofficialNames = [ "Dhamar", "Dhomar", "??omar" ]
      }
    , { name = "Hadramawt"
      , code = "HD"
      , unofficialNames = [ "Hadramout" ]
      }
    , { name = "Hajjah"
      , code = "HJ"
      , unofficialNames = [ "Hajjah" ]
      }
    , { name = "Al ???udaydah"
      , code = "HU"
      , unofficialNames = [ "Hodeida", "Hodeidah", "Hode??ah", "H??udaydah", "al-Hudaydah" ]
      }
    , { name = "Ibb"
      , code = "IB"
      , unofficialNames = [ "Ibb" ]
      }
    , { name = "Al Jawf"
      , code = "JA"
      , unofficialNames = [ "Al Jawf" ]
      }
    , { name = "La???ij"
      , code = "LA"
      , unofficialNames = [ "Lahej", "Lahj" ]
      }
    , { name = "Ma'rib"
      , code = "MA"
      , unofficialNames = [ "Marab", "Mareb" ]
      }
    , { name = "Al Mahrah"
      , code = "MR"
      , unofficialNames = [ "Al Mahrah" ]
      }
    , { name = "Al Mahwit"
      , code = "MW"
      , unofficialNames = [ "Al Mahwit" ]
      }
    , { name = "Sa`dah"
      , code = "SD"
      , unofficialNames = [ "Sa??adah" ]
      }
    , { name = "Shabwah"
      , code = "SH"
      , unofficialNames = [ "Shabwah" ]
      }
    , { name = "San????"
      , code = "SN"
      , unofficialNames = [ "Sana", "Sanaa", "Sana??a", "Sana??a City", "San??a??" ]
      }
    , { name = "Ta??izz"
      , code = "TA"
      , unofficialNames = [ "Taiz" ]
      }
    ]


{-| -}
countryYTSubdivisions : List Subdivision
countryYTSubdivisions =
    [ { name = "Acoua"
      , code = "1"
      , unofficialNames = [ "Acoua" ]
      }
    , { name = "Bandraboua"
      , code = "2"
      , unofficialNames = [ "Bandraboua" ]
      }
    , { name = "Bandrele"
      , code = "3"
      , unofficialNames = [ "Bandrele" ]
      }
    , { name = "Boueni"
      , code = "4"
      , unofficialNames = [ "Boueni" ]
      }
    , { name = "Chiconi"
      , code = "5"
      , unofficialNames = [ "Chiconi" ]
      }
    , { name = "Chirongui"
      , code = "6"
      , unofficialNames = [ "Chirongui" ]
      }
    , { name = "Dembeni"
      , code = "7"
      , unofficialNames = [ "Dembeni" ]
      }
    , { name = "Dzaoudzi"
      , code = "8"
      , unofficialNames = [ "Dzaoudzi" ]
      }
    , { name = "Kani-Keli"
      , code = "9"
      , unofficialNames = [ "Kani-Keli" ]
      }
    , { name = "Koungou"
      , code = "10"
      , unofficialNames = [ "Koungou" ]
      }
    , { name = "Mamoudzou"
      , code = "11"
      , unofficialNames = [ "Mamoudzou" ]
      }
    , { name = "Mtsamboro"
      , code = "12"
      , unofficialNames = [ "Mtsamboro" ]
      }
    , { name = "M'Tsangamouji"
      , code = "13"
      , unofficialNames = [ "M'Tsangamouji" ]
      }
    , { name = "Ouangani"
      , code = "14"
      , unofficialNames = [ "Ouangani" ]
      }
    , { name = "Pamandzi"
      , code = "15"
      , unofficialNames = [ "Pamandzi" ]
      }
    , { name = "Sada"
      , code = "16"
      , unofficialNames = [ "Sada" ]
      }
    , { name = "Tsingoni"
      , code = "17"
      , unofficialNames = [ "Tsingoni" ]
      }
    ]


{-| -}
countryZASubdivisions : List Subdivision
countryZASubdivisions =
    [ { name = "Eastern Cape"
      , code = "EC"
      , unofficialNames = [ "Oos Kaap" ]
      }
    , { name = "Free State"
      , code = "FS"
      , unofficialNames = [ "Foreistata", "Vrystaat" ]
      }
    , { name = "Gauteng"
      , code = "GT"
      , unofficialNames = [ "Pretoria-Witwatersrand-Vereeniging" ]
      }
    , { name = "Limpopo"
      , code = "LP"
      , unofficialNames = [ "Limpopo" ]
      }
    , { name = "Mpumalanga"
      , code = "MP"
      , unofficialNames = [ "eMpumalanga" ]
      }
    , { name = "Northern Cape"
      , code = "NC"
      , unofficialNames = [ "Northern Cape" ]
      }
    , { name = "Kwazulu-Natal"
      , code = "NL"
      , unofficialNames = [ "Kwazulu-Natal" ]
      }
    , { name = "North-West"
      , code = "NW"
      , unofficialNames = [ "North-West" ]
      }
    , { name = "Western Cape"
      , code = "WC"
      , unofficialNames = [ "Wes Kaap" ]
      }
    ]


{-| -}
countryZMSubdivisions : List Subdivision
countryZMSubdivisions =
    [ { name = "Western"
      , code = "01"
      , unofficialNames = [ "Western" ]
      }
    , { name = "Central"
      , code = "02"
      , unofficialNames = [ "Central" ]
      }
    , { name = "Eastern"
      , code = "03"
      , unofficialNames = [ "Eastern" ]
      }
    , { name = "Luapula"
      , code = "04"
      , unofficialNames = [ "Luapula" ]
      }
    , { name = "Northern"
      , code = "05"
      , unofficialNames = [ "Northern" ]
      }
    , { name = "North-Western"
      , code = "06"
      , unofficialNames = [ "North-Western" ]
      }
    , { name = "Southern"
      , code = "07"
      , unofficialNames = [ "Southern" ]
      }
    , { name = "Copperbelt"
      , code = "08"
      , unofficialNames = [ "Copperbelt" ]
      }
    , { name = "Lusaka"
      , code = "09"
      , unofficialNames = [ "Lusaka" ]
      }
    ]


{-| -}
countryZWSubdivisions : List Subdivision
countryZWSubdivisions =
    [ { name = "Bulawayo"
      , code = "BU"
      , unofficialNames = [ "Bulawayo" ]
      }
    , { name = "Harare"
      , code = "HA"
      , unofficialNames = [ "Harare" ]
      }
    , { name = "Manicaland"
      , code = "MA"
      , unofficialNames = [ "Manicaland" ]
      }
    , { name = "Mashonaland Central"
      , code = "MC"
      , unofficialNames = [ "Mashonaland Central" ]
      }
    , { name = "Mashonaland East"
      , code = "ME"
      , unofficialNames = [ "Mashonaland East" ]
      }
    , { name = "Midlands"
      , code = "MI"
      , unofficialNames = [ "Midlands" ]
      }
    , { name = "Matabeleland North"
      , code = "MN"
      , unofficialNames = [ "Matabeleland North" ]
      }
    , { name = "Matabeleland South"
      , code = "MS"
      , unofficialNames = [ "Matabeleland South" ]
      }
    , { name = "Masvingo"
      , code = "MV"
      , unofficialNames = [ "Masvingo" ]
      }
    , { name = "Mashonaland West"
      , code = "MW"
      , unofficialNames = [ "Mashonaland West" ]
      }
    ]
