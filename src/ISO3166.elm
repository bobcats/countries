module ISO3166 exposing
    ( Country
    , all, fromAlpha2
    , afghanistan, albania, algeria, americanSamoa, andorra, angola, anguilla, antarctica, antiguaAndBarbuda, argentina, armenia, aruba, australia, austria, azerbaijan, bahamas, bahrain, bangladesh, barbados, belarus, belgium, belize, benin, bermuda, bhutan, boliviaPlurinationalStateOf, bonaireSintEustatiusAndSaba, bosniaAndHerzegovina, botswana, bouvetIsland, brazil, britishIndianOceanTerritory, bruneiDarussalam, bulgaria, burkinaFaso, burundi, caboVerde, cambodia, cameroon, canada, caymanIslands, centralAfricanRepublic, chad, chile, china, christmasIsland, cocosKeelingIslands, colombia, comoros, congo, congoDemocraticRepublicOfThe, cookIslands, costaRica, croatia, cuba, curacao, cyprus, czechRepublic, coteDIvoire, denmark, djibouti, dominica, dominicanRepublic, ecuador, egypt, elSalvador, equatorialGuinea, eritrea, estonia, ethiopia, falklandIslandsMalvinas, faroeIslands, fiji, finland, france, frenchGuiana, frenchPolynesia, frenchSouthernTerritories, gabon, gambia, georgia, germany, ghana, gibraltar, greece, greenland, grenada, guadeloupe, guam, guatemala, guernsey, guinea, guineaBissau, guyana, haiti, heardIslandAndMcdonaldIslands, holySee, honduras, hongKong, hungary, iceland, india, indonesia, iranIslamicRepublicOf, iraq, ireland, isleOfMan, israel, italy, jamaica, japan, jersey, jordan, kazakhstan, kenya, kiribati, koreaDemocraticPeopleSRepublicOf, koreaRepublicOf, kuwait, kyrgyzstan, laoPeopleSDemocraticRepublic, latvia, lebanon, lesotho, liberia, libya, liechtenstein, lithuania, luxembourg, macao, madagascar, malawi, malaysia, maldives, mali, malta, marshallIslands, martinique, mauritania, mauritius, mayotte, mexico, micronesiaFederatedStatesOf, moldovaRepublicOf, monaco, mongolia, montenegro, montserrat, morocco, mozambique, myanmar, namibia, nauru, nepal, netherlands, newCaledonia, newZealand, nicaragua, niger, nigeria, niue, norfolkIsland, northMacedonia, northernMarianaIslands, norway, oman, pakistan, palau, palestineStateOf, panama, papuaNewGuinea, paraguay, peru, philippines, pitcairn, poland, portugal, puertoRico, qatar, romania, russianFederation, rwanda, reunion, saintBarthelemy, saintHelenaAscensionAndTristanDaCunha, saintKittsAndNevis, saintLucia, saintMartinFrenchPart, saintPierreAndMiquelon, saintVincentAndTheGrenadines, samoa, sanMarino, saoTomeAndPrincipe, saudiArabia, senegal, serbia, seychelles, sierraLeone, singapore, sintMaartenDutchPart, slovakia, slovenia, solomonIslands, somalia, southAfrica, southGeorgiaAndTheSouthSandwichIslands, southSudan, spain, sriLanka, sudan, suriname, svalbardAndJanMayen, sweden, switzerland, syrianArabRepublic, taiwanProvinceOfChina, tajikistan, tanzaniaUnitedRepublicOf, thailand, timorLeste, togo, tokelau, tonga, trinidadAndTobago, tunisia, turkey, turkmenistan, turksAndCaicosIslands, tuvalu, uganda, ukraine, unitedArabEmirates, unitedKingdomOfGreatBritainAndNorthernIreland, unitedStatesMinorOutlyingIslands, unitedStatesOfAmerica, uruguay, uzbekistan, vanuatu, venezuelaBolivarianRepublicOf, vietNam, virginIslandsBritish, virginIslandsUS, wallisAndFutuna, westernSahara, yemen, zambia, zimbabwe, eswatini, alandIslands
    , andorraSubdivisions, unitedArabEmiratesSubdivisions, afghanistanSubdivisions, antiguaAndBarbudaSubdivisions, anguillaSubdivisions, albaniaSubdivisions, armeniaSubdivisions, angolaSubdivisions, argentinaSubdivisions, americanSamoaSubdivisions, austriaSubdivisions, australiaSubdivisions, arubaSubdivisions, alandIslandsSubdivisions, azerbaijanSubdivisions, bosniaAndHerzegovinaSubdivisions, barbadosSubdivisions, bangladeshSubdivisions, belgiumSubdivisions, burkinaFasoSubdivisions, bulgariaSubdivisions, bahrainSubdivisions, burundiSubdivisions, beninSubdivisions, saintBarthelemySubdivisions, bermudaSubdivisions, bruneiDarussalamSubdivisions, boliviaPlurinationalStateOfSubdivisions, bonaireSintEustatiusAndSabaSubdivisions, brazilSubdivisions, bahamasSubdivisions, bhutanSubdivisions, botswanaSubdivisions, belarusSubdivisions, belizeSubdivisions, canadaSubdivisions, congoDemocraticRepublicOfTheSubdivisions, centralAfricanRepublicSubdivisions, congoSubdivisions, switzerlandSubdivisions, coteDIvoireSubdivisions, cookIslandsSubdivisions, chileSubdivisions, cameroonSubdivisions, chinaSubdivisions, colombiaSubdivisions, costaRicaSubdivisions, cubaSubdivisions, caboVerdeSubdivisions, curacaoSubdivisions, cyprusSubdivisions, czechRepublicSubdivisions, germanySubdivisions, djiboutiSubdivisions, denmarkSubdivisions, dominicaSubdivisions, dominicanRepublicSubdivisions, algeriaSubdivisions, ecuadorSubdivisions, estoniaSubdivisions, egyptSubdivisions, westernSaharaSubdivisions, eritreaSubdivisions, spainSubdivisions, ethiopiaSubdivisions, finlandSubdivisions, fijiSubdivisions, micronesiaFederatedStatesOfSubdivisions, faroeIslandsSubdivisions, franceSubdivisions, gabonSubdivisions, unitedKingdomOfGreatBritainAndNorthernIrelandSubdivisions, grenadaSubdivisions, georgiaSubdivisions, frenchGuianaSubdivisions, guernseySubdivisions, ghanaSubdivisions, greenlandSubdivisions, gambiaSubdivisions, guineaSubdivisions, guadeloupeSubdivisions, equatorialGuineaSubdivisions, greeceSubdivisions, guatemalaSubdivisions, guamSubdivisions, guineaBissauSubdivisions, guyanaSubdivisions, hongKongSubdivisions, hondurasSubdivisions, croatiaSubdivisions, haitiSubdivisions, hungarySubdivisions, indonesiaSubdivisions, irelandSubdivisions, israelSubdivisions, isleOfManSubdivisions, indiaSubdivisions, iraqSubdivisions, iranIslamicRepublicOfSubdivisions, icelandSubdivisions, italySubdivisions, jerseySubdivisions, jamaicaSubdivisions, jordanSubdivisions, japanSubdivisions, kenyaSubdivisions, kyrgyzstanSubdivisions, cambodiaSubdivisions, kiribatiSubdivisions, comorosSubdivisions, saintKittsAndNevisSubdivisions, koreaDemocraticPeopleSRepublicOfSubdivisions, koreaRepublicOfSubdivisions, kuwaitSubdivisions, caymanIslandsSubdivisions, kazakhstanSubdivisions, laoPeopleSDemocraticRepublicSubdivisions, lebanonSubdivisions, saintLuciaSubdivisions, liechtensteinSubdivisions, sriLankaSubdivisions, liberiaSubdivisions, lesothoSubdivisions, lithuaniaSubdivisions, luxembourgSubdivisions, latviaSubdivisions, libyaSubdivisions, moroccoSubdivisions, monacoSubdivisions, moldovaRepublicOfSubdivisions, montenegroSubdivisions, saintMartinFrenchPartSubdivisions, madagascarSubdivisions, marshallIslandsSubdivisions, northMacedoniaSubdivisions, maliSubdivisions, myanmarSubdivisions, mongoliaSubdivisions, macaoSubdivisions, northernMarianaIslandsSubdivisions, martiniqueSubdivisions, mauritaniaSubdivisions, montserratSubdivisions, maltaSubdivisions, mauritiusSubdivisions, maldivesSubdivisions, malawiSubdivisions, mexicoSubdivisions, malaysiaSubdivisions, mozambiqueSubdivisions, namibiaSubdivisions, newCaledoniaSubdivisions, nigerSubdivisions, nigeriaSubdivisions, nicaraguaSubdivisions, netherlandsSubdivisions, norwaySubdivisions, nepalSubdivisions, nauruSubdivisions, newZealandSubdivisions, omanSubdivisions, panamaSubdivisions, peruSubdivisions, frenchPolynesiaSubdivisions, papuaNewGuineaSubdivisions, philippinesSubdivisions, pakistanSubdivisions, polandSubdivisions, saintPierreAndMiquelonSubdivisions, puertoRicoSubdivisions, palestineStateOfSubdivisions, portugalSubdivisions, palauSubdivisions, paraguaySubdivisions, qatarSubdivisions, reunionSubdivisions, romaniaSubdivisions, serbiaSubdivisions, russianFederationSubdivisions, rwandaSubdivisions, saudiArabiaSubdivisions, solomonIslandsSubdivisions, seychellesSubdivisions, sudanSubdivisions, swedenSubdivisions, singaporeSubdivisions, saintHelenaAscensionAndTristanDaCunhaSubdivisions, sloveniaSubdivisions, svalbardAndJanMayenSubdivisions, slovakiaSubdivisions, sierraLeoneSubdivisions, sanMarinoSubdivisions, senegalSubdivisions, somaliaSubdivisions, surinameSubdivisions, southSudanSubdivisions, saoTomeAndPrincipeSubdivisions, elSalvadorSubdivisions, sintMaartenDutchPartSubdivisions, syrianArabRepublicSubdivisions, eswatiniSubdivisions, chadSubdivisions, frenchSouthernTerritoriesSubdivisions, togoSubdivisions, thailandSubdivisions, tajikistanSubdivisions, tokelauSubdivisions, timorLesteSubdivisions, turkmenistanSubdivisions, tunisiaSubdivisions, tongaSubdivisions, turkeySubdivisions, trinidadAndTobagoSubdivisions, tuvaluSubdivisions, taiwanProvinceOfChinaSubdivisions, tanzaniaUnitedRepublicOfSubdivisions, ukraineSubdivisions, ugandaSubdivisions, unitedStatesMinorOutlyingIslandsSubdivisions, unitedStatesOfAmericaSubdivisions, uruguaySubdivisions, uzbekistanSubdivisions, saintVincentAndTheGrenadinesSubdivisions, venezuelaBolivarianRepublicOfSubdivisions, virginIslandsUSSubdivisions, vietNamSubdivisions, vanuatuSubdivisions, wallisAndFutunaSubdivisions, samoaSubdivisions, yemenSubdivisions, mayotteSubdivisions, southAfricaSubdivisions, zambiaSubdivisions, zimbabweSubdivisions
    )

{-| Based upon the country data from <https://github.com/countries/countries>
Countries is a collection of all sorts of useful information for every country in the ISO 3166 standard. It contains info for the following standards ISO3166-1 (countries), ISO3166-2 (states/subdivisions), ISO4217 (currency) and E.164 (phone numbers). I will add any country based data I can get access to. I hope this to be a repository for all country based information.


# Types

@docs Country


# Helpers

@docs all, fromAlpha2


# Countries

@docs afghanistan, albania, algeria, americanSamoa, andorra, angola, anguilla, antarctica, antiguaAndBarbuda, argentina, armenia, aruba, australia, austria, azerbaijan, bahamas, bahrain, bangladesh, barbados, belarus, belgium, belize, benin, bermuda, bhutan, boliviaPlurinationalStateOf, bonaireSintEustatiusAndSaba, bosniaAndHerzegovina, botswana, bouvetIsland, brazil, britishIndianOceanTerritory, bruneiDarussalam, bulgaria, burkinaFaso, burundi, caboVerde, cambodia, cameroon, canada, caymanIslands, centralAfricanRepublic, chad, chile, china, christmasIsland, cocosKeelingIslands, colombia, comoros, congo, congoDemocraticRepublicOfThe, cookIslands, costaRica, croatia, cuba, curacao, cyprus, czechRepublic, coteDIvoire, denmark, djibouti, dominica, dominicanRepublic, ecuador, egypt, elSalvador, equatorialGuinea, eritrea, estonia, ethiopia, falklandIslandsMalvinas, faroeIslands, fiji, finland, france, frenchGuiana, frenchPolynesia, frenchSouthernTerritories, gabon, gambia, georgia, germany, ghana, gibraltar, greece, greenland, grenada, guadeloupe, guam, guatemala, guernsey, guinea, guineaBissau, guyana, haiti, heardIslandAndMcdonaldIslands, holySee, honduras, hongKong, hungary, iceland, india, indonesia, iranIslamicRepublicOf, iraq, ireland, isleOfMan, israel, italy, jamaica, japan, jersey, jordan, kazakhstan, kenya, kiribati, koreaDemocraticPeopleSRepublicOf, koreaRepublicOf, kuwait, kyrgyzstan, laoPeopleSDemocraticRepublic, latvia, lebanon, lesotho, liberia, libya, liechtenstein, lithuania, luxembourg, macao, madagascar, malawi, malaysia, maldives, mali, malta, marshallIslands, martinique, mauritania, mauritius, mayotte, mexico, micronesiaFederatedStatesOf, moldovaRepublicOf, monaco, mongolia, montenegro, montserrat, morocco, mozambique, myanmar, namibia, nauru, nepal, netherlands, newCaledonia, newZealand, nicaragua, niger, nigeria, niue, norfolkIsland, northMacedonia, northernMarianaIslands, norway, oman, pakistan, palau, palestineStateOf, panama, papuaNewGuinea, paraguay, peru, philippines, pitcairn, poland, portugal, puertoRico, qatar, romania, russianFederation, rwanda, reunion, saintBarthelemy, saintHelenaAscensionAndTristanDaCunha, saintKittsAndNevis, saintLucia, saintMartinFrenchPart, saintPierreAndMiquelon, saintVincentAndTheGrenadines, samoa, sanMarino, saoTomeAndPrincipe, saudiArabia, senegal, serbia, seychelles, sierraLeone, singapore, sintMaartenDutchPart, slovakia, slovenia, solomonIslands, somalia, southAfrica, southGeorgiaAndTheSouthSandwichIslands, southSudan, spain, sriLanka, sudan, suriname, svalbardAndJanMayen, sweden, switzerland, syrianArabRepublic, taiwanProvinceOfChina, tajikistan, tanzaniaUnitedRepublicOf, thailand, timorLeste, togo, tokelau, tonga, trinidadAndTobago, tunisia, turkey, turkmenistan, turksAndCaicosIslands, tuvalu, uganda, ukraine, unitedArabEmirates, unitedKingdomOfGreatBritainAndNorthernIreland, unitedStatesMinorOutlyingIslands, unitedStatesOfAmerica, uruguay, uzbekistan, vanuatu, venezuelaBolivarianRepublicOf, vietNam, virginIslandsBritish, virginIslandsUS, wallisAndFutuna, westernSahara, yemen, zambia, zimbabwe, eswatini, alandIslands


# Subdivisions

@docs andorraSubdivisions, unitedArabEmiratesSubdivisions, afghanistanSubdivisions, antiguaAndBarbudaSubdivisions, anguillaSubdivisions, albaniaSubdivisions, armeniaSubdivisions, angolaSubdivisions, argentinaSubdivisions, americanSamoaSubdivisions, austriaSubdivisions, australiaSubdivisions, arubaSubdivisions, alandIslandsSubdivisions, azerbaijanSubdivisions, bosniaAndHerzegovinaSubdivisions, barbadosSubdivisions, bangladeshSubdivisions, belgiumSubdivisions, burkinaFasoSubdivisions, bulgariaSubdivisions, bahrainSubdivisions, burundiSubdivisions, beninSubdivisions, saintBarthelemySubdivisions, bermudaSubdivisions, bruneiDarussalamSubdivisions, boliviaPlurinationalStateOfSubdivisions, bonaireSintEustatiusAndSabaSubdivisions, brazilSubdivisions, bahamasSubdivisions, bhutanSubdivisions, botswanaSubdivisions, belarusSubdivisions, belizeSubdivisions, canadaSubdivisions, congoDemocraticRepublicOfTheSubdivisions, centralAfricanRepublicSubdivisions, congoSubdivisions, switzerlandSubdivisions, coteDIvoireSubdivisions, cookIslandsSubdivisions, chileSubdivisions, cameroonSubdivisions, chinaSubdivisions, colombiaSubdivisions, costaRicaSubdivisions, cubaSubdivisions, caboVerdeSubdivisions, curacaoSubdivisions, cyprusSubdivisions, czechRepublicSubdivisions, germanySubdivisions, djiboutiSubdivisions, denmarkSubdivisions, dominicaSubdivisions, dominicanRepublicSubdivisions, algeriaSubdivisions, ecuadorSubdivisions, estoniaSubdivisions, egyptSubdivisions, westernSaharaSubdivisions, eritreaSubdivisions, spainSubdivisions, ethiopiaSubdivisions, finlandSubdivisions, fijiSubdivisions, micronesiaFederatedStatesOfSubdivisions, faroeIslandsSubdivisions, franceSubdivisions, gabonSubdivisions, unitedKingdomOfGreatBritainAndNorthernIrelandSubdivisions, grenadaSubdivisions, georgiaSubdivisions, frenchGuianaSubdivisions, guernseySubdivisions, ghanaSubdivisions, greenlandSubdivisions, gambiaSubdivisions, guineaSubdivisions, guadeloupeSubdivisions, equatorialGuineaSubdivisions, greeceSubdivisions, guatemalaSubdivisions, guamSubdivisions, guineaBissauSubdivisions, guyanaSubdivisions, hongKongSubdivisions, hondurasSubdivisions, croatiaSubdivisions, haitiSubdivisions, hungarySubdivisions, indonesiaSubdivisions, irelandSubdivisions, israelSubdivisions, isleOfManSubdivisions, indiaSubdivisions, iraqSubdivisions, iranIslamicRepublicOfSubdivisions, icelandSubdivisions, italySubdivisions, jerseySubdivisions, jamaicaSubdivisions, jordanSubdivisions, japanSubdivisions, kenyaSubdivisions, kyrgyzstanSubdivisions, cambodiaSubdivisions, kiribatiSubdivisions, comorosSubdivisions, saintKittsAndNevisSubdivisions, koreaDemocraticPeopleSRepublicOfSubdivisions, koreaRepublicOfSubdivisions, kuwaitSubdivisions, caymanIslandsSubdivisions, kazakhstanSubdivisions, laoPeopleSDemocraticRepublicSubdivisions, lebanonSubdivisions, saintLuciaSubdivisions, liechtensteinSubdivisions, sriLankaSubdivisions, liberiaSubdivisions, lesothoSubdivisions, lithuaniaSubdivisions, luxembourgSubdivisions, latviaSubdivisions, libyaSubdivisions, moroccoSubdivisions, monacoSubdivisions, moldovaRepublicOfSubdivisions, montenegroSubdivisions, saintMartinFrenchPartSubdivisions, madagascarSubdivisions, marshallIslandsSubdivisions, northMacedoniaSubdivisions, maliSubdivisions, myanmarSubdivisions, mongoliaSubdivisions, macaoSubdivisions, northernMarianaIslandsSubdivisions, martiniqueSubdivisions, mauritaniaSubdivisions, montserratSubdivisions, maltaSubdivisions, mauritiusSubdivisions, maldivesSubdivisions, malawiSubdivisions, mexicoSubdivisions, malaysiaSubdivisions, mozambiqueSubdivisions, namibiaSubdivisions, newCaledoniaSubdivisions, nigerSubdivisions, nigeriaSubdivisions, nicaraguaSubdivisions, netherlandsSubdivisions, norwaySubdivisions, nepalSubdivisions, nauruSubdivisions, newZealandSubdivisions, omanSubdivisions, panamaSubdivisions, peruSubdivisions, frenchPolynesiaSubdivisions, papuaNewGuineaSubdivisions, philippinesSubdivisions, pakistanSubdivisions, polandSubdivisions, saintPierreAndMiquelonSubdivisions, puertoRicoSubdivisions, palestineStateOfSubdivisions, portugalSubdivisions, palauSubdivisions, paraguaySubdivisions, qatarSubdivisions, reunionSubdivisions, romaniaSubdivisions, serbiaSubdivisions, russianFederationSubdivisions, rwandaSubdivisions, saudiArabiaSubdivisions, solomonIslandsSubdivisions, seychellesSubdivisions, sudanSubdivisions, swedenSubdivisions, singaporeSubdivisions, saintHelenaAscensionAndTristanDaCunhaSubdivisions, sloveniaSubdivisions, svalbardAndJanMayenSubdivisions, slovakiaSubdivisions, sierraLeoneSubdivisions, sanMarinoSubdivisions, senegalSubdivisions, somaliaSubdivisions, surinameSubdivisions, southSudanSubdivisions, saoTomeAndPrincipeSubdivisions, elSalvadorSubdivisions, sintMaartenDutchPartSubdivisions, syrianArabRepublicSubdivisions, eswatiniSubdivisions, chadSubdivisions, frenchSouthernTerritoriesSubdivisions, togoSubdivisions, thailandSubdivisions, tajikistanSubdivisions, tokelauSubdivisions, timorLesteSubdivisions, turkmenistanSubdivisions, tunisiaSubdivisions, tongaSubdivisions, turkeySubdivisions, trinidadAndTobagoSubdivisions, tuvaluSubdivisions, taiwanProvinceOfChinaSubdivisions, tanzaniaUnitedRepublicOfSubdivisions, ukraineSubdivisions, ugandaSubdivisions, unitedStatesMinorOutlyingIslandsSubdivisions, unitedStatesOfAmericaSubdivisions, uruguaySubdivisions, uzbekistanSubdivisions, saintVincentAndTheGrenadinesSubdivisions, venezuelaBolivarianRepublicOfSubdivisions, virginIslandsUSSubdivisions, vietNamSubdivisions, vanuatuSubdivisions, wallisAndFutunaSubdivisions, samoaSubdivisions, yemenSubdivisions, mayotteSubdivisions, southAfricaSubdivisions, zambiaSubdivisions, zimbabweSubdivisions

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

      c.emoji # => "🇺🇸"


# Names and translations

      c.name # => "United States"
      c.unofficialNames # => ["United States of America", "Vereinigte Staaten von Amerika", "États-Unis", "Estados Unidos"]

      c = ISO3166.belgium
      c.localNames # => ["België", "Belgique", "Belgien"]


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


type alias Subdivision =
    { name : String
    , code : String
    , unofficialNames : List String
    }


{-| A list of all countries.
-}
all : List Country
all =
    [ afghanistan, albania, algeria, americanSamoa, andorra, angola, anguilla, antarctica, antiguaAndBarbuda, argentina, armenia, aruba, australia, austria, azerbaijan, bahamas, bahrain, bangladesh, barbados, belarus, belgium, belize, benin, bermuda, bhutan, boliviaPlurinationalStateOf, bonaireSintEustatiusAndSaba, bosniaAndHerzegovina, botswana, bouvetIsland, brazil, britishIndianOceanTerritory, bruneiDarussalam, bulgaria, burkinaFaso, burundi, caboVerde, cambodia, cameroon, canada, caymanIslands, centralAfricanRepublic, chad, chile, china, christmasIsland, cocosKeelingIslands, colombia, comoros, congo, congoDemocraticRepublicOfThe, cookIslands, costaRica, croatia, cuba, curacao, cyprus, czechRepublic, coteDIvoire, denmark, djibouti, dominica, dominicanRepublic, ecuador, egypt, elSalvador, equatorialGuinea, eritrea, estonia, ethiopia, falklandIslandsMalvinas, faroeIslands, fiji, finland, france, frenchGuiana, frenchPolynesia, frenchSouthernTerritories, gabon, gambia, georgia, germany, ghana, gibraltar, greece, greenland, grenada, guadeloupe, guam, guatemala, guernsey, guinea, guineaBissau, guyana, haiti, heardIslandAndMcdonaldIslands, holySee, honduras, hongKong, hungary, iceland, india, indonesia, iranIslamicRepublicOf, iraq, ireland, isleOfMan, israel, italy, jamaica, japan, jersey, jordan, kazakhstan, kenya, kiribati, koreaDemocraticPeopleSRepublicOf, koreaRepublicOf, kuwait, kyrgyzstan, laoPeopleSDemocraticRepublic, latvia, lebanon, lesotho, liberia, libya, liechtenstein, lithuania, luxembourg, macao, madagascar, malawi, malaysia, maldives, mali, malta, marshallIslands, martinique, mauritania, mauritius, mayotte, mexico, micronesiaFederatedStatesOf, moldovaRepublicOf, monaco, mongolia, montenegro, montserrat, morocco, mozambique, myanmar, namibia, nauru, nepal, netherlands, newCaledonia, newZealand, nicaragua, niger, nigeria, niue, norfolkIsland, northMacedonia, northernMarianaIslands, norway, oman, pakistan, palau, palestineStateOf, panama, papuaNewGuinea, paraguay, peru, philippines, pitcairn, poland, portugal, puertoRico, qatar, romania, russianFederation, rwanda, reunion, saintBarthelemy, saintHelenaAscensionAndTristanDaCunha, saintKittsAndNevis, saintLucia, saintMartinFrenchPart, saintPierreAndMiquelon, saintVincentAndTheGrenadines, samoa, sanMarino, saoTomeAndPrincipe, saudiArabia, senegal, serbia, seychelles, sierraLeone, singapore, sintMaartenDutchPart, slovakia, slovenia, solomonIslands, somalia, southAfrica, southGeorgiaAndTheSouthSandwichIslands, southSudan, spain, sriLanka, sudan, suriname, svalbardAndJanMayen, sweden, switzerland, syrianArabRepublic, taiwanProvinceOfChina, tajikistan, tanzaniaUnitedRepublicOf, thailand, timorLeste, togo, tokelau, tonga, trinidadAndTobago, tunisia, turkey, turkmenistan, turksAndCaicosIslands, tuvalu, uganda, ukraine, unitedArabEmirates, unitedKingdomOfGreatBritainAndNorthernIreland, unitedStatesMinorOutlyingIslands, unitedStatesOfAmerica, uruguay, uzbekistan, vanuatu, venezuelaBolivarianRepublicOf, vietNam, virginIslandsBritish, virginIslandsUS, wallisAndFutuna, westernSahara, yemen, zambia, zimbabwe, eswatini, alandIslands ]


{-| Find a country by it's alpha2 code.

      ISO3166.fromAlpha2 "US" # => Just { name = "United States", alpha2 = "US", alpha3 = "USA", ... }

-}
fromAlpha2 : String -> Maybe Country
fromAlpha2 alpha2 =
    all
        |> List.filter (\c -> c.alpha2 == alpha2)
        |> List.head


{-| Afghanistan
-}
afghanistan : Country
afghanistan =
    { addressFormat = ""
    , alpha2 = "AF"
    , alpha3 = "AFG"
    , continent = Continent.Asia
    , countryCode = "93"
    , currencyCode = "AFN"
    , emoji = "🇦🇫"
    , gec = "AF"
    , internationalPrefix = "00"
    , ioc = "AFG"
    , languagesOfficial = [ "ps", "uz", "tk" ]
    , languagesSpoken = [ "ps", "uz", "tk" ]
    , localNames = [ "افغانستان", "Afgʻoniston", "Owganystan" ]
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
    , subdivisions = afghanistanSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "AF"
    , unofficialNames = [ "Afghanistan", "Afganistán", "アフガニスタン" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Albania
-}
albania : Country
albania =
    { addressFormat = ""
    , alpha2 = "AL"
    , alpha3 = "ALB"
    , continent = Continent.Europe
    , countryCode = "355"
    , currencyCode = "ALL"
    , emoji = "🇦🇱"
    , gec = "AL"
    , internationalPrefix = "00"
    , ioc = "ALB"
    , languagesOfficial = [ "sq" ]
    , languagesSpoken = [ "sq" ]
    , localNames = [ "Shqipëri" ]
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
    , subdivisions = albaniaSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "AL"
    , unofficialNames = [ "Albania", "Albanien", "Albanie", "アルバニア", "Albanië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Algeria
-}
algeria : Country
algeria =
    { addressFormat = ""
    , alpha2 = "DZ"
    , alpha3 = "DZA"
    , continent = Continent.Africa
    , countryCode = "213"
    , currencyCode = "DZD"
    , emoji = "🇩🇿"
    , gec = "AG"
    , internationalPrefix = "00"
    , ioc = "ALG"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "الجزائر" ]
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
    , subdivisions = algeriaSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "DZ"
    , unofficialNames = [ "Algeria", "الجزائر", "Algerien", "Algérie", "Argelia", "アルジェリア", "Algerije" ]
    , worldRegion = WorldRegion.Emea
    }


{-| American Samoa
-}
americanSamoa : Country
americanSamoa =
    { addressFormat = ""
    , alpha2 = "AS"
    , alpha3 = "ASM"
    , continent = Continent.Australia
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "🇦🇸"
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
    , subdivisions = americanSamoaSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "AS"
    , unofficialNames = [ "American Samoa", "Amerikanisch-Samoa", "Samoa américaines", "Samoa Americana", "アメリカ領サモア", "Amerikaans Samoa" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Andorra
-}
andorra : Country
andorra =
    { addressFormat = ""
    , alpha2 = "AD"
    , alpha3 = "AND"
    , continent = Continent.Europe
    , countryCode = "376"
    , currencyCode = "EUR"
    , emoji = "🇦🇩"
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
    , subdivisions = andorraSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "AD"
    , unofficialNames = [ "Andorre", "Andorra", "アンドラ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Angola
-}
angola : Country
angola =
    { addressFormat = ""
    , alpha2 = "AO"
    , alpha3 = "AGO"
    , continent = Continent.Africa
    , countryCode = "244"
    , currencyCode = "AOA"
    , emoji = "🇦🇴"
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
    , subdivisions = angolaSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "AO"
    , unofficialNames = [ "Angola", "アンゴラ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Anguilla
-}
anguilla : Country
anguilla =
    { addressFormat = ""
    , alpha2 = "AI"
    , alpha3 = "AIA"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "🇦🇮"
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
    , subdivisions = anguillaSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "AI"
    , unofficialNames = [ "Anguilla", "アンギラ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Antarctica
-}
antarctica : Country
antarctica =
    { addressFormat = ""
    , alpha2 = "AQ"
    , alpha3 = "ATA"
    , continent = Continent.Antarctica
    , countryCode = "672"
    , currencyCode = "USD"
    , emoji = "🇦🇶"
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
    , unofficialNames = [ "Antarctica", "Antarktis", "Antarctique", "Antártida", "南極" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Antigua and Barbuda
-}
antiguaAndBarbuda : Country
antiguaAndBarbuda =
    { addressFormat = ""
    , alpha2 = "AG"
    , alpha3 = "ATG"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "🇦🇬"
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
    , subdivisions = antiguaAndBarbudaSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "AG"
    , unofficialNames = [ "Antigua and Barbuda", "Antigua und Barbuda", "Antigua et Barbuda", "Antigua y Barbuda", "アンティグア・バーブーダ", "Antigua en Barbuda" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Argentina
-}
argentina : Country
argentina =
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
    , emoji = "🇦🇷"
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
    , subdivisions = argentinaSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "AR"
    , unofficialNames = [ "Argentina", "Argentinien", "Argentine", "アルゼンチン", "Argentinië" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Armenia
-}
armenia : Country
armenia =
    { addressFormat = ""
    , alpha2 = "AM"
    , alpha3 = "ARM"
    , continent = Continent.Asia
    , countryCode = "374"
    , currencyCode = "AMD"
    , emoji = "🇦🇲"
    , gec = "AM"
    , internationalPrefix = "00"
    , ioc = "ARM"
    , languagesOfficial = [ "hy", "ru" ]
    , languagesSpoken = [ "hy", "ru" ]
    , localNames = [ "Հայաստանի Հանրապետութիւն", "Армения" ]
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
    , subdivisions = armeniaSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "AM"
    , unofficialNames = [ "Armenia", "Armenien", "Arménie", "アルメニア", "Armenië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Aruba
-}
aruba : Country
aruba =
    { addressFormat = ""
    , alpha2 = "AW"
    , alpha3 = "ABW"
    , continent = Continent.NorthAmerica
    , countryCode = "297"
    , currencyCode = "AWG"
    , emoji = "🇦🇼"
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
    , subdivisions = arubaSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "AW"
    , unofficialNames = [ "Aruba", "アルバ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Australia
-}
australia : Country
australia =
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
    , emoji = "🇦🇺"
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
    , subdivisions = australiaSubdivisions
    , subregion = Subregion.AustraliaAndNewZealand
    , unLocode = "AU"
    , unofficialNames = [ "Australia", "Australien", "Australie", "オーストラリア", "Australië" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Austria
-}
austria : Country
austria =
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
    , emoji = "🇦🇹"
    , gec = "AU"
    , internationalPrefix = "00"
    , ioc = "AUT"
    , languagesOfficial = [ "de" ]
    , languagesSpoken = [ "de" ]
    , localNames = [ "Österreich" ]
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
    , subdivisions = austriaSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "AT"
    , unofficialNames = [ "Austria", "Österreich", "Autriche", "オーストリア", "Oostenrijk" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Azerbaijan
-}
azerbaijan : Country
azerbaijan =
    { addressFormat = ""
    , alpha2 = "AZ"
    , alpha3 = "AZE"
    , continent = Continent.Asia
    , countryCode = "994"
    , currencyCode = "AZN"
    , emoji = "🇦🇿"
    , gec = "AJ"
    , internationalPrefix = "810"
    , ioc = "AZE"
    , languagesOfficial = [ "az", "hy" ]
    , languagesSpoken = [ "az", "hy" ]
    , localNames = [ "Azərbaycan", "Ադրբեջան" ]
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
    , subdivisions = azerbaijanSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "AZ"
    , unofficialNames = [ "Azerbaijan", "Aserbaidschan", "Azerbaïdjan", "Azerbaiyán", "アゼルバイジャン", "Azerbeidzjan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Bahamas
-}
bahamas : Country
bahamas =
    { addressFormat = ""
    , alpha2 = "BS"
    , alpha3 = "BHS"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "BSD"
    , emoji = "🇧🇸"
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
    , subdivisions = bahamasSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "BS"
    , unofficialNames = [ "Bahamas", "バハマ", "Bahama’s" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Bahrain
-}
bahrain : Country
bahrain =
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
    , emoji = "🇧🇭"
    , gec = "BA"
    , internationalPrefix = "00"
    , ioc = "BRN"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "البحرين" ]
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
    , subdivisions = bahrainSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "BH"
    , unofficialNames = [ "Bahrain", "البحرين", "Bahreïn", "Bahrein", "バーレーン" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Bangladesh
-}
bangladesh : Country
bangladesh =
    { addressFormat = ""
    , alpha2 = "BD"
    , alpha3 = "BGD"
    , continent = Continent.Asia
    , countryCode = "880"
    , currencyCode = "BDT"
    , emoji = "🇧🇩"
    , gec = "BG"
    , internationalPrefix = "00"
    , ioc = "BAN"
    , languagesOfficial = [ "bn" ]
    , languagesSpoken = [ "bn" ]
    , localNames = [ "বাংলাদেশ" ]
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
    , subdivisions = bangladeshSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "BD"
    , unofficialNames = [ "Bangladesh", "Bangladesch", "バングラデシュ" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Barbados
-}
barbados : Country
barbados =
    { addressFormat = ""
    , alpha2 = "BB"
    , alpha3 = "BRB"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "BBD"
    , emoji = "🇧🇧"
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
    , subdivisions = barbadosSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "BB"
    , unofficialNames = [ "Barbade", "Barbados", "バルバドス" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Belarus
-}
belarus : Country
belarus =
    { addressFormat = ""
    , alpha2 = "BY"
    , alpha3 = "BLR"
    , continent = Continent.Europe
    , countryCode = "375"
    , currencyCode = "BYN"
    , emoji = "🇧🇾"
    , gec = "BO"
    , internationalPrefix = "810"
    , ioc = "BLR"
    , languagesOfficial = [ "be", "ru" ]
    , languagesSpoken = [ "be", "ru" ]
    , localNames = [ "Беларусь", "Беларусь" ]
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
    , subdivisions = belarusSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "BY"
    , unofficialNames = [ "Belarus", "Weißrussland", "Biélorussie", "Bielorrusia", "ベラルーシ", "Wit-Rusland", "Беларусь" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Belgium
-}
belgium : Country
belgium =
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
    , emoji = "🇧🇪"
    , gec = "BE"
    , internationalPrefix = "00"
    , ioc = "BEL"
    , languagesOfficial = [ "nl", "fr", "de" ]
    , languagesSpoken = [ "nl", "fr", "de" ]
    , localNames = [ "België", "Belgique", "Belgien" ]
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
    , subdivisions = belgiumSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "BE"
    , unofficialNames = [ "Belgium", "Belgien", "Belgique", "Bélgica", "ベルギー", "België" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Belize
-}
belize : Country
belize =
    { addressFormat = ""
    , alpha2 = "BZ"
    , alpha3 = "BLZ"
    , continent = Continent.NorthAmerica
    , countryCode = "501"
    , currencyCode = "BZD"
    , emoji = "🇧🇿"
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
    , subdivisions = belizeSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "BZ"
    , unofficialNames = [ "Belize", "Belice", "ベリーズ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Benin
-}
benin : Country
benin =
    { addressFormat = ""
    , alpha2 = "BJ"
    , alpha3 = "BEN"
    , continent = Continent.Africa
    , countryCode = "229"
    , currencyCode = "XOF"
    , emoji = "🇧🇯"
    , gec = "BN"
    , internationalPrefix = "00"
    , ioc = "BEN"
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Bénin" ]
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
    , subdivisions = beninSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "BJ"
    , unofficialNames = [ "Benin", "Bénin", "ベナン" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Bermuda
-}
bermuda : Country
bermuda =
    { addressFormat = ""
    , alpha2 = "BM"
    , alpha3 = "BMU"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "BMD"
    , emoji = "🇧🇲"
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
    , subdivisions = bermudaSubdivisions
    , subregion = Subregion.NorthernAmerica
    , unLocode = "BM"
    , unofficialNames = [ "Bermuda", "Bermudes", "Bermudas", "バミューダ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Bhutan
-}
bhutan : Country
bhutan =
    { addressFormat = ""
    , alpha2 = "BT"
    , alpha3 = "BTN"
    , continent = Continent.Asia
    , countryCode = "975"
    , currencyCode = "BTN"
    , emoji = "🇧🇹"
    , gec = "BT"
    , internationalPrefix = "00"
    , ioc = "BHU"
    , languagesOfficial = [ "dz" ]
    , languagesSpoken = [ "dz" ]
    , localNames = [ "འབྲུག།" ]
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
    , subdivisions = bhutanSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "BT"
    , unofficialNames = [ "Bhutan", "Bhoutan", "Bután", "ブータン" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Bolivia (Plurinational State of)
-}
boliviaPlurinationalStateOf : Country
boliviaPlurinationalStateOf =
    { addressFormat = ""
    , alpha2 = "BO"
    , alpha3 = "BOL"
    , continent = Continent.SouthAmerica
    , countryCode = "591"
    , currencyCode = "BOB"
    , emoji = "🇧🇴"
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
    , subdivisions = boliviaPlurinationalStateOfSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "BO"
    , unofficialNames = [ "Bolivia", "Bolivien", "Bolivie", "ボリビア多民族国" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Bonaire, Sint Eustatius and Saba
-}
bonaireSintEustatiusAndSaba : Country
bonaireSintEustatiusAndSaba =
    { addressFormat = ""
    , alpha2 = "BQ"
    , alpha3 = "BES"
    , continent = Continent.NorthAmerica
    , countryCode = "599"
    , currencyCode = "USD"
    , emoji = "🇧🇶"
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
    , subdivisions = bonaireSintEustatiusAndSabaSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "BQ"
    , unofficialNames = [ "Bonaire, Sint Eustatius and Saba", "Caribbean Netherlands", "Caribisch Nederland", "ボネール、シント・ユースタティウスおよびサバ" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Bosnia and Herzegovina
-}
bosniaAndHerzegovina : Country
bosniaAndHerzegovina =
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
    , emoji = "🇧🇦"
    , gec = "BK"
    , internationalPrefix = "00"
    , ioc = "BIH"
    , languagesOfficial = [ "bs", "hr", "sr" ]
    , languagesSpoken = [ "bs", "hr", "sr" ]
    , localNames = [ "Bosna i Hercegovina", "Bosna i Hercegovina", "Босна и Херцеговина" ]
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
    , subdivisions = bosniaAndHerzegovinaSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "BA"
    , unofficialNames = [ "Bosnia and Herzegovina", "Bosnien und Herzegowina", "Bosnie et Herzégovine", "Bosnia y Herzegovina", "ボスニア・ヘルツェゴビナ", "Bosnië en Herzegovina", "Bosnia Herzegovina" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Botswana
-}
botswana : Country
botswana =
    { addressFormat = ""
    , alpha2 = "BW"
    , alpha3 = "BWA"
    , continent = Continent.Africa
    , countryCode = "267"
    , currencyCode = "BWP"
    , emoji = "🇧🇼"
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
    , subdivisions = botswanaSubdivisions
    , subregion = Subregion.SouthernAfrica
    , unLocode = "BW"
    , unofficialNames = [ "Botswana", "ボツワナ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Bouvet Island
-}
bouvetIsland : Country
bouvetIsland =
    { addressFormat = ""
    , alpha2 = "BV"
    , alpha3 = "BVT"
    , continent = Continent.Antarctica
    , countryCode = "47"
    , currencyCode = "NOK"
    , emoji = "🇧🇻"
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
    , unofficialNames = [ "Bouvet Island", "Bouvetinsel", "ブーベ島", "Bouveteiland" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Brazil
-}
brazil : Country
brazil =
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
    , emoji = "🇧🇷"
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
    , subdivisions = brazilSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "BR"
    , unofficialNames = [ "Brazil", "Brasilien", "Brésil", "Brasil", "ブラジル", "Brazilië" ]
    , worldRegion = WorldRegion.Amer
    }


{-| British Indian Ocean Territory
-}
britishIndianOceanTerritory : Country
britishIndianOceanTerritory =
    { addressFormat = ""
    , alpha2 = "IO"
    , alpha3 = "IOT"
    , continent = Continent.Asia
    , countryCode = "246"
    , currencyCode = "USD"
    , emoji = "🇮🇴"
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
    , unofficialNames = [ "British Indian Ocean Territory", "Britisches Territorium im Indischen Ozean", "イギリス領インド洋地域", "Britse Gebieden in de Indische Oceaan" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Brunei Darussalam
-}
bruneiDarussalam : Country
bruneiDarussalam =
    { addressFormat = ""
    , alpha2 = "BN"
    , alpha3 = "BRN"
    , continent = Continent.Asia
    , countryCode = "673"
    , currencyCode = "BND"
    , emoji = "🇧🇳"
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
    , subdivisions = bruneiDarussalamSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "BN"
    , unofficialNames = [ "Brunei", "ブルネイ・ダルサラーム" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Bulgaria
-}
bulgaria : Country
bulgaria =
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
    , emoji = "🇧🇬"
    , gec = "BU"
    , internationalPrefix = "00"
    , ioc = "BUL"
    , languagesOfficial = [ "bg" ]
    , languagesSpoken = [ "bg" ]
    , localNames = [ "България" ]
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
    , subdivisions = bulgariaSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "BG"
    , unofficialNames = [ "Bulgaria", "Bulgarien", "Bulgarie", "ブルガリア", "Bulgarije" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Burkina Faso
-}
burkinaFaso : Country
burkinaFaso =
    { addressFormat = ""
    , alpha2 = "BF"
    , alpha3 = "BFA"
    , continent = Continent.Africa
    , countryCode = "226"
    , currencyCode = "XOF"
    , emoji = "🇧🇫"
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
    , subdivisions = burkinaFasoSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "BF"
    , unofficialNames = [ "Burkina Faso", "ブルキナファソ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Burundi
-}
burundi : Country
burundi =
    { addressFormat = ""
    , alpha2 = "BI"
    , alpha3 = "BDI"
    , continent = Continent.Africa
    , countryCode = "257"
    , currencyCode = "BIF"
    , emoji = "🇧🇮"
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
    , subdivisions = burundiSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "BI"
    , unofficialNames = [ "Burundi", "ブルンジ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Cabo Verde
-}
caboVerde : Country
caboVerde =
    { addressFormat = ""
    , alpha2 = "CV"
    , alpha3 = "CPV"
    , continent = Continent.Africa
    , countryCode = "238"
    , currencyCode = "CVE"
    , emoji = "🇨🇻"
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
    , subdivisions = caboVerdeSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "CV"
    , unofficialNames = [ "Cape Verde", "Kap Verde", "Cap Vert", "Cabo Verde", "カーボベルデ", "Kaapverdië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Cambodia
-}
cambodia : Country
cambodia =
    { addressFormat = ""
    , alpha2 = "KH"
    , alpha3 = "KHM"
    , continent = Continent.Asia
    , countryCode = "855"
    , currencyCode = "KHR"
    , emoji = "🇰🇭"
    , gec = "CB"
    , internationalPrefix = "00"
    , ioc = "CAM"
    , languagesOfficial = [ "km" ]
    , languagesSpoken = [ "km" ]
    , localNames = [ "កម្ពុជា" ]
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
    , subdivisions = cambodiaSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "KH"
    , unofficialNames = [ "Cambodia", "Kambodscha", "Cambodge", "Camboya", "カンボジア", "Cambodja" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Cameroon
-}
cameroon : Country
cameroon =
    { addressFormat = ""
    , alpha2 = "CM"
    , alpha3 = "CMR"
    , continent = Continent.Africa
    , countryCode = "237"
    , currencyCode = "XAF"
    , emoji = "🇨🇲"
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
    , subdivisions = cameroonSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "CM"
    , unofficialNames = [ "Cameroon", "Kamerun", "Cameroun", "Camerún", "カメルーン", "Kameroen" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Canada
-}
canada : Country
canada =
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
    , emoji = "🇨🇦"
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
    , subdivisions = canadaSubdivisions
    , subregion = Subregion.NorthernAmerica
    , unLocode = "CA"
    , unofficialNames = [ "Canada", "Kanada", "Canadá", "カナダ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Cayman Islands
-}
caymanIslands : Country
caymanIslands =
    { addressFormat = ""
    , alpha2 = "KY"
    , alpha3 = "CYM"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "KYD"
    , emoji = "🇰🇾"
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
    , subdivisions = caymanIslandsSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "KY"
    , unofficialNames = [ "Cayman Islands", "Kaimaninseln", "Îles Caïmans", "Islas Caimán", "ケイマン諸島", "Caymaneilanden" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Central African Republic
-}
centralAfricanRepublic : Country
centralAfricanRepublic =
    { addressFormat = ""
    , alpha2 = "CF"
    , alpha3 = "CAF"
    , continent = Continent.Africa
    , countryCode = "236"
    , currencyCode = "XAF"
    , emoji = "🇨🇫"
    , gec = "CT"
    , internationalPrefix = "00"
    , ioc = "CAF"
    , languagesOfficial = [ "fr", "sg" ]
    , languagesSpoken = [ "fr", "sg" ]
    , localNames = [ "République centrafricaine" ]
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
    , subdivisions = centralAfricanRepublicSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "CF"
    , unofficialNames = [ "Central African Republic", "Zentralafrikanische Republik", "République Centrafricaine", "República Centroafricana", "中央アフリカ共和国", "Centraal-Afrikaanse Republiek" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Chad
-}
chad : Country
chad =
    { addressFormat = ""
    , alpha2 = "TD"
    , alpha3 = "TCD"
    , continent = Continent.Africa
    , countryCode = "235"
    , currencyCode = "XAF"
    , emoji = "🇹🇩"
    , gec = "CD"
    , internationalPrefix = "15"
    , ioc = "CHA"
    , languagesOfficial = [ "ar", "fr" ]
    , languagesSpoken = [ "ar", "fr" ]
    , localNames = [ "تشاد", "Tchad" ]
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
    , subdivisions = chadSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "TD"
    , unofficialNames = [ "Chad", "تشاد", "Tschad", "Tchad", "チャド", "Tsjaad" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Chile
-}
chile : Country
chile =
    { addressFormat = ""
    , alpha2 = "CL"
    , alpha3 = "CHL"
    , continent = Continent.SouthAmerica
    , countryCode = "56"
    , currencyCode = "CLP"
    , emoji = "🇨🇱"
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
    , subdivisions = chileSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "CL"
    , unofficialNames = [ "Chile", "チリ", "Chili" ]
    , worldRegion = WorldRegion.Amer
    }


{-| China
-}
china : Country
china =
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
    , emoji = "🇨🇳"
    , gec = "CH"
    , internationalPrefix = "00"
    , ioc = "CHN"
    , languagesOfficial = [ "zh" ]
    , languagesSpoken = [ "zh" ]
    , localNames = [ "中国" ]
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
    , subdivisions = chinaSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "CN"
    , unofficialNames = [ "China", "Chine", "中国" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Christmas Island
-}
christmasIsland : Country
christmasIsland =
    { addressFormat = ""
    , alpha2 = "CX"
    , alpha3 = "CXR"
    , continent = Continent.Asia
    , countryCode = "61"
    , currencyCode = "AUD"
    , emoji = "🇨🇽"
    , gec = "KT"
    , internationalPrefix = "0011"
    , ioc = ""
    , languagesOfficial = [ "en", "zh", "ms" ]
    , languagesSpoken = [ "en", "zh", "ms" ]
    , localNames = [ "Christmas Island", "圣诞岛", "Kepulauan Christmas" ]
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
    , unofficialNames = [ "Christmas Island", "Weihnachtsinsel", "クリスマス島", "Christmaseiland" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Cocos (Keeling) Islands
-}
cocosKeelingIslands : Country
cocosKeelingIslands =
    { addressFormat = ""
    , alpha2 = "CC"
    , alpha3 = "CCK"
    , continent = Continent.Asia
    , countryCode = "61"
    , currencyCode = "AUD"
    , emoji = "🇨🇨"
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
    , unofficialNames = [ "Cocos (Keeling) Islands", "Kokosinseln", "ココス（キーリング）諸島", "Cocoseilanden" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Colombia
-}
colombia : Country
colombia =
    { addressFormat = ""
    , alpha2 = "CO"
    , alpha3 = "COL"
    , continent = Continent.SouthAmerica
    , countryCode = "57"
    , currencyCode = "COP"
    , emoji = "🇨🇴"
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
    , subdivisions = colombiaSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "CO"
    , unofficialNames = [ "Colombia", "Kolumbien", "Colombie", "コロンビア" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Comoros
-}
comoros : Country
comoros =
    { addressFormat = ""
    , alpha2 = "KM"
    , alpha3 = "COM"
    , continent = Continent.Africa
    , countryCode = "269"
    , currencyCode = "KMF"
    , emoji = "🇰🇲"
    , gec = "CN"
    , internationalPrefix = "00"
    , ioc = "COM"
    , languagesOfficial = [ "ar", "fr" ]
    , languagesSpoken = [ "ar", "fr" ]
    , localNames = [ "جزر القمر", "Comores" ]
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
    , subdivisions = comorosSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "KM"
    , unofficialNames = [ "Comoros", "Union der Komoren", "Comores", "コモロ", "Comoren" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Congo
-}
congo : Country
congo =
    { addressFormat = ""
    , alpha2 = "CG"
    , alpha3 = "COG"
    , continent = Continent.Africa
    , countryCode = "242"
    , currencyCode = "XAF"
    , emoji = "🇨🇬"
    , gec = "CF"
    , internationalPrefix = "00"
    , ioc = "CGO"
    , languagesOfficial = [ "fr", "ln" ]
    , languagesSpoken = [ "fr", "ln" ]
    , localNames = [ "République du Congo" ]
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
    , subdivisions = congoSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "CG"
    , unofficialNames = [ "Congo", "Kongo", "コンゴ共和国", "Congo [Republiek]", "Congo, Republic of" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Congo (Democratic Republic of the)
-}
congoDemocraticRepublicOfThe : Country
congoDemocraticRepublicOfThe =
    { addressFormat = ""
    , alpha2 = "CD"
    , alpha3 = "COD"
    , continent = Continent.Africa
    , countryCode = "243"
    , currencyCode = "CDF"
    , emoji = "🇨🇩"
    , gec = "CG"
    , internationalPrefix = "00"
    , ioc = "COD"
    , languagesOfficial = [ "fr", "ln", "kg", "sw", "lu" ]
    , languagesSpoken = [ "fr", "ln", "kg", "sw", "lu" ]
    , localNames = [ "République démocratique du Congo", "Congo" ]
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
    , subdivisions = congoDemocraticRepublicOfTheSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "CD"
    , unofficialNames = [ "Congo (Dem. Rep.)", "Kongo (Dem. Rep.)", "Congo (Rep. Dem.)", "コンゴ民主共和国", "Congo [DRC]", "Congo (The Democratic Republic Of The)", "Democratic Republic of the Congo", "Congo, Democratic Republic of" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Cook Islands
-}
cookIslands : Country
cookIslands =
    { addressFormat = ""
    , alpha2 = "CK"
    , alpha3 = "COK"
    , continent = Continent.Australia
    , countryCode = "682"
    , currencyCode = "NZD"
    , emoji = "🇨🇰"
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
    , subdivisions = cookIslandsSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "CK"
    , unofficialNames = [ "Cook Islands", "Cookinseln", "Îles Cook", "Islas Cook", "クック諸島", "Cookeilanden" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Costa Rica
-}
costaRica : Country
costaRica =
    { addressFormat = ""
    , alpha2 = "CR"
    , alpha3 = "CRI"
    , continent = Continent.NorthAmerica
    , countryCode = "506"
    , currencyCode = "CRC"
    , emoji = "🇨🇷"
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
    , subdivisions = costaRicaSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "CR"
    , unofficialNames = [ "Costa Rica", "コスタリカ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Croatia
-}
croatia : Country
croatia =
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
    , emoji = "🇭🇷"
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
    , subdivisions = croatiaSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "HR"
    , unofficialNames = [ "Croatia", "Kroatien", "Croatie", "Croacia", "クロアチア", "Kroatië", "Croatia (Hrvatska)" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Cuba
-}
cuba : Country
cuba =
    { addressFormat = ""
    , alpha2 = "CU"
    , alpha3 = "CUB"
    , continent = Continent.NorthAmerica
    , countryCode = "53"
    , currencyCode = "CUP"
    , emoji = "🇨🇺"
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
    , subdivisions = cubaSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "CU"
    , unofficialNames = [ "Cuba", "Kuba", "キューバ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Curaçao
-}
curacao : Country
curacao =
    { addressFormat = ""
    , alpha2 = "CW"
    , alpha3 = "CUW"
    , continent = Continent.NorthAmerica
    , countryCode = "599"
    , currencyCode = "ANG"
    , emoji = "🇨🇼"
    , gec = "UC"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "nl" ]
    , languagesSpoken = [ "nl" ]
    , localNames = [ "Curaçao" ]
    , name = "Curaçao"
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
    , subdivisions = curacaoSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "CW"
    , unofficialNames = [ "Curaçao", "キュラソー島" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Cyprus
-}
cyprus : Country
cyprus =
    { addressFormat = ""
    , alpha2 = "CY"
    , alpha3 = "CYP"
    , continent = Continent.Asia
    , countryCode = "357"
    , currencyCode = "EUR"
    , emoji = "🇨🇾"
    , gec = "CY"
    , internationalPrefix = "00"
    , ioc = "CYP"
    , languagesOfficial = [ "el", "tr", "hy" ]
    , languagesSpoken = [ "el", "tr", "hy" ]
    , localNames = [ "Κύπρος", "Kıbrıs", "Կիպրոս" ]
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
    , subdivisions = cyprusSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "CY"
    , unofficialNames = [ "Cyprus", "Zypern", "Chypre", "Chipre", "キプロス" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Czech Republic
-}
czechRepublic : Country
czechRepublic =
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
    , emoji = "🇨🇿"
    , gec = "EZ"
    , internationalPrefix = "00"
    , ioc = "CZE"
    , languagesOfficial = [ "cs", "sk" ]
    , languagesSpoken = [ "cs", "sk" ]
    , localNames = [ "Česko", "Česko" ]
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
    , subdivisions = czechRepublicSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "CZ"
    , unofficialNames = [ "Czech Republic", "Tschechische Republik", "République Tchèque", "República Checa", "チェコ", "Tsjechië", "Czechia" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Côte d'Ivoire
-}
coteDIvoire : Country
coteDIvoire =
    { addressFormat = ""
    , alpha2 = "CI"
    , alpha3 = "CIV"
    , continent = Continent.Africa
    , countryCode = "225"
    , currencyCode = "XOF"
    , emoji = "🇨🇮"
    , gec = "IV"
    , internationalPrefix = "00"
    , ioc = "CIV"
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Côte d'Ivoire" ]
    , name = "Côte d'Ivoire"
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
    , subdivisions = coteDIvoireSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "CI"
    , unofficialNames = [ "Côte D'Ivoire", "Elfenbeinküste", "コートジボワール", "Ivoorkust", "Cote D'Ivoire (Ivory Coast)", "Cote d Ivoire (Ivory Coast)", "Ivory Coast" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Denmark
-}
denmark : Country
denmark =
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
    , emoji = "🇩🇰"
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
    , subdivisions = denmarkSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "DK"
    , unofficialNames = [ "Denmark", "Dänemark", "Danemark", "Dinamarca", "デンマーク", "Denemarken" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Djibouti
-}
djibouti : Country
djibouti =
    { addressFormat = ""
    , alpha2 = "DJ"
    , alpha3 = "DJI"
    , continent = Continent.Africa
    , countryCode = "253"
    , currencyCode = "DJF"
    , emoji = "🇩🇯"
    , gec = "DJ"
    , internationalPrefix = "00"
    , ioc = "DJI"
    , languagesOfficial = [ "ar", "fr" ]
    , languagesSpoken = [ "ar", "fr" ]
    , localNames = [ "جيبوتي", "Djibouti" ]
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
    , subdivisions = djiboutiSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "DJ"
    , unofficialNames = [ "Djibouti", "جيبوتي", "Dschibuti", "ジブチ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Dominica
-}
dominica : Country
dominica =
    { addressFormat = ""
    , alpha2 = "DM"
    , alpha3 = "DMA"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "🇩🇲"
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
    , subdivisions = dominicaSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "DM"
    , unofficialNames = [ "Dominica", "ドミニカ国" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Dominican Republic
-}
dominicanRepublic : Country
dominicanRepublic =
    { addressFormat = ""
    , alpha2 = "DO"
    , alpha3 = "DOM"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "DOP"
    , emoji = "🇩🇴"
    , gec = "DR"
    , internationalPrefix = "011"
    , ioc = "DOM"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "República Dominicana" ]
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
    , subdivisions = dominicanRepublicSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "DO"
    , unofficialNames = [ "Dominican Republic", "Dominikanische Republik", "République Dominicaine", "República Dominicana", "ドミニカ共和国", "Dominicaanse Republiek" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Ecuador
-}
ecuador : Country
ecuador =
    { addressFormat = ""
    , alpha2 = "EC"
    , alpha3 = "ECU"
    , continent = Continent.SouthAmerica
    , countryCode = "593"
    , currencyCode = "USD"
    , emoji = "🇪🇨"
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
    , subdivisions = ecuadorSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "EC"
    , unofficialNames = [ "Ecuador", "Équateur", "エクアドル" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Egypt
-}
egypt : Country
egypt =
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
    , emoji = "🇪🇬"
    , gec = "EG"
    , internationalPrefix = "00"
    , ioc = "EGY"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "مصر" ]
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
    , subdivisions = egyptSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "EG"
    , unofficialNames = [ "Egypt", "مصر", "Ägypten", "Égypte", "Egipto", "エジプト", "Egypte" ]
    , worldRegion = WorldRegion.Emea
    }


{-| El Salvador
-}
elSalvador : Country
elSalvador =
    { addressFormat = ""
    , alpha2 = "SV"
    , alpha3 = "SLV"
    , continent = Continent.NorthAmerica
    , countryCode = "503"
    , currencyCode = "USD"
    , emoji = "🇸🇻"
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
    , subdivisions = elSalvadorSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "SV"
    , unofficialNames = [ "El Salvador", "Salvador", "エルサルバドル" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Equatorial Guinea
-}
equatorialGuinea : Country
equatorialGuinea =
    { addressFormat = ""
    , alpha2 = "GQ"
    , alpha3 = "GNQ"
    , continent = Continent.Africa
    , countryCode = "240"
    , currencyCode = "XAF"
    , emoji = "🇬🇶"
    , gec = "EK"
    , internationalPrefix = "00"
    , ioc = "GEQ"
    , languagesOfficial = [ "es", "fr" ]
    , languagesSpoken = [ "es", "fr" ]
    , localNames = [ "Guinea Ecuatorial", "Guinée Équatoriale" ]
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
    , subdivisions = equatorialGuineaSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "GQ"
    , unofficialNames = [ "Equatorial Guinea", "Äquatorial-Guinea", "Guinée Équatoriale", "Guinea Ecuatorial", "赤道ギニア", "Equatoriaal-Guinea" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Eritrea
-}
eritrea : Country
eritrea =
    { addressFormat = ""
    , alpha2 = "ER"
    , alpha3 = "ERI"
    , continent = Continent.Africa
    , countryCode = "291"
    , currencyCode = "ETB"
    , emoji = "🇪🇷"
    , gec = "ER"
    , internationalPrefix = "00"
    , ioc = "ERI"
    , languagesOfficial = [ "en", "ar", "ti" ]
    , languagesSpoken = [ "en", "ar", "ti" ]
    , localNames = [ "Eritrea", "إريتريا", "ኤርትራ" ]
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
    , subdivisions = eritreaSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "ER"
    , unofficialNames = [ "Eritrea", "إريتريا", "Érythrée", "エリトリア" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Estonia
-}
estonia : Country
estonia =
    { addressFormat = ""
    , alpha2 = "EE"
    , alpha3 = "EST"
    , continent = Continent.Europe
    , countryCode = "372"
    , currencyCode = "EUR"
    , emoji = "🇪🇪"
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
    , subdivisions = estoniaSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "EE"
    , unofficialNames = [ "Estonia", "Estland", "Estonie", "エストニア" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Ethiopia
-}
ethiopia : Country
ethiopia =
    { addressFormat = ""
    , alpha2 = "ET"
    , alpha3 = "ETH"
    , continent = Continent.Africa
    , countryCode = "251"
    , currencyCode = "ETB"
    , emoji = "🇪🇹"
    , gec = "ET"
    , internationalPrefix = "00"
    , ioc = "ETH"
    , languagesOfficial = [ "am" ]
    , languagesSpoken = [ "am" ]
    , localNames = [ "ጒት፥ጵ።" ]
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
    , subdivisions = ethiopiaSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "ET"
    , unofficialNames = [ "Ethiopia", "Äthiopien", "Éthiopie", "Etiopía", "エチオピア", "Ethiopië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Falkland Islands (Malvinas)
-}
falklandIslandsMalvinas : Country
falklandIslandsMalvinas =
    { addressFormat = ""
    , alpha2 = "FK"
    , alpha3 = "FLK"
    , continent = Continent.SouthAmerica
    , countryCode = "500"
    , currencyCode = "FKP"
    , emoji = "🇫🇰"
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
    , unofficialNames = [ "Falkland Islands", "Falklandinseln", "Îles Malouines", "Islas Malvinas", "フォークランド（マルビナス）諸島", "Falklandeilanden [Islas Malvinas]" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Faroe Islands
-}
faroeIslands : Country
faroeIslands =
    { addressFormat = ""
    , alpha2 = "FO"
    , alpha3 = "FRO"
    , continent = Continent.Europe
    , countryCode = "298"
    , currencyCode = "DKK"
    , emoji = "🇫🇴"
    , gec = "FO"
    , internationalPrefix = "00"
    , ioc = "FRO"
    , languagesOfficial = [ "fo" ]
    , languagesSpoken = [ "fo" ]
    , localNames = [ "Føroyar" ]
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
    , subdivisions = faroeIslandsSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "FO"
    , unofficialNames = [ "Faroe Islands", "Färöer-Inseln", "Îles Féroé", "Islas Faroe", "フェロー諸島", "Faeröer" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Fiji
-}
fiji : Country
fiji =
    { addressFormat = ""
    , alpha2 = "FJ"
    , alpha3 = "FJI"
    , continent = Continent.Australia
    , countryCode = "679"
    , currencyCode = "FJD"
    , emoji = "🇫🇯"
    , gec = "FJ"
    , internationalPrefix = "00"
    , ioc = "FIJ"
    , languagesOfficial = [ "en", "fj", "hi", "ur" ]
    , languagesSpoken = [ "en", "fj", "hi", "ur" ]
    , localNames = [ "Fiji", "फिजी", "فجی" ]
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
    , subdivisions = fijiSubdivisions
    , subregion = Subregion.Melanesia
    , unLocode = "FJ"
    , unofficialNames = [ "Fiji", "Fidschi", "Fidji", "フィジー" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Finland
-}
finland : Country
finland =
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
    , emoji = "🇫🇮"
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
    , subdivisions = finlandSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "FI"
    , unofficialNames = [ "Finland", "Finnland", "Finlande", "Finlandia", "フィンランド" ]
    , worldRegion = WorldRegion.Emea
    }


{-| France
-}
france : Country
france =
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
    , emoji = "🇫🇷"
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
    , subdivisions = franceSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "FR"
    , unofficialNames = [ "France", "Frankreich", "the French Republic", "フランス", "Frankrijk", "Francia" ]
    , worldRegion = WorldRegion.Emea
    }


{-| French Guiana
-}
frenchGuiana : Country
frenchGuiana =
    { addressFormat = ""
    , alpha2 = "GF"
    , alpha3 = "GUF"
    , continent = Continent.SouthAmerica
    , countryCode = "594"
    , currencyCode = "EUR"
    , emoji = "🇬🇫"
    , gec = "FG"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Guyane française" ]
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
    , subdivisions = frenchGuianaSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "GF"
    , unofficialNames = [ "French Guiana", "Französisch Guyana", "Guayana Francesa", "フランス領ギアナ", "Frans-Guyana" ]
    , worldRegion = WorldRegion.Amer
    }


{-| French Polynesia
-}
frenchPolynesia : Country
frenchPolynesia =
    { addressFormat = ""
    , alpha2 = "PF"
    , alpha3 = "PYF"
    , continent = Continent.Australia
    , countryCode = "689"
    , currencyCode = "XPF"
    , emoji = "🇵🇫"
    , gec = "FP"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Polynésie française" ]
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
    , subdivisions = frenchPolynesiaSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "PF"
    , unofficialNames = [ "French Polynesia", "Französisch-Polynesien", "Polynésie Française", "Polinesia Francesa", "フランス領ポリネシア", "Frans-Polynesië" ]
    , worldRegion = WorldRegion.Apac
    }


{-| French Southern Territories
-}
frenchSouthernTerritories : Country
frenchSouthernTerritories =
    { addressFormat = ""
    , alpha2 = "TF"
    , alpha3 = "ATF"
    , continent = Continent.Antarctica
    , countryCode = "262"
    , currencyCode = "EUR"
    , emoji = "🇹🇫"
    , gec = "FS"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Terres australes françaises" ]
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
    , subdivisions = frenchSouthernTerritoriesSubdivisions
    , subregion = Subregion.None
    , unLocode = "TF"
    , unofficialNames = [ "French Southern Territories", "Französische Süd- und Antarktisgebiete", "Terres Australes Françaises", "Territorios Franceses del Sur", "フランス領南方・南極地域", "Franse Gebieden in de zuidelijke Indische Oceaan", "French Southern and Antarctic Lands" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Gabon
-}
gabon : Country
gabon =
    { addressFormat = ""
    , alpha2 = "GA"
    , alpha3 = "GAB"
    , continent = Continent.Africa
    , countryCode = "241"
    , currencyCode = "XAF"
    , emoji = "🇬🇦"
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
    , subdivisions = gabonSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "GA"
    , unofficialNames = [ "Gabon", "Gabun", "Gabón", "ガボン" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Gambia
-}
gambia : Country
gambia =
    { addressFormat = ""
    , alpha2 = "GM"
    , alpha3 = "GMB"
    , continent = Continent.Africa
    , countryCode = "220"
    , currencyCode = "GMD"
    , emoji = "🇬🇲"
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
    , subdivisions = gambiaSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "GM"
    , unofficialNames = [ "Gambia", "ガンビア" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Georgia
-}
georgia : Country
georgia =
    { addressFormat = ""
    , alpha2 = "GE"
    , alpha3 = "GEO"
    , continent = Continent.Asia
    , countryCode = "995"
    , currencyCode = "GEL"
    , emoji = "🇬🇪"
    , gec = "GG"
    , internationalPrefix = "810"
    , ioc = "GEO"
    , languagesOfficial = [ "ka" ]
    , languagesSpoken = [ "ka" ]
    , localNames = [ "საქართველო" ]
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
    , subdivisions = georgiaSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "GE"
    , unofficialNames = [ "Georgia", "Georgien", "Géorgie", "グルジア", "Georgië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Germany
-}
germany : Country
germany =
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
    , emoji = "🇩🇪"
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
    , subdivisions = germanySubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "DE"
    , unofficialNames = [ "Germany", "Deutschland", "Allemagne", "Alemania", "ドイツ", "Duitsland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Ghana
-}
ghana : Country
ghana =
    { addressFormat = ""
    , alpha2 = "GH"
    , alpha3 = "GHA"
    , continent = Continent.Africa
    , countryCode = "233"
    , currencyCode = "GHS"
    , emoji = "🇬🇭"
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
    , subdivisions = ghanaSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "GH"
    , unofficialNames = [ "Ghana", "ガーナ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Gibraltar
-}
gibraltar : Country
gibraltar =
    { addressFormat = ""
    , alpha2 = "GI"
    , alpha3 = "GIB"
    , continent = Continent.Europe
    , countryCode = "350"
    , currencyCode = "GIP"
    , emoji = "🇬🇮"
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
    , unofficialNames = [ "Gibraltar", "ジブラルタル" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Greece
-}
greece : Country
greece =
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
    , emoji = "🇬🇷"
    , gec = "GR"
    , internationalPrefix = "00"
    , ioc = "GRE"
    , languagesOfficial = [ "el" ]
    , languagesSpoken = [ "el" ]
    , localNames = [ "Ελλάδα" ]
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
    , subdivisions = greeceSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "GR"
    , unofficialNames = [ "Greece", "Griechenland", "Grèce", "Grecia", "ギリシャ", "Griekenland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Greenland
-}
greenland : Country
greenland =
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
    , emoji = "🇬🇱"
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
    , subdivisions = greenlandSubdivisions
    , subregion = Subregion.NorthernAmerica
    , unLocode = "GL"
    , unofficialNames = [ "Greenland", "Grönland", "Groenland", "Groenlandia", "グリーンランド" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Grenada
-}
grenada : Country
grenada =
    { addressFormat = ""
    , alpha2 = "GD"
    , alpha3 = "GRD"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "🇬🇩"
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
    , subdivisions = grenadaSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "GD"
    , unofficialNames = [ "Grenada", "グレナダ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Guadeloupe
-}
guadeloupe : Country
guadeloupe =
    { addressFormat = ""
    , alpha2 = "GP"
    , alpha3 = "GLP"
    , continent = Continent.NorthAmerica
    , countryCode = "590"
    , currencyCode = "EUR"
    , emoji = "🇬🇵"
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
    , subdivisions = guadeloupeSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "GP"
    , unofficialNames = [ "Guadeloupe", "Guadalupe", "グアドループ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Guam
-}
guam : Country
guam =
    { addressFormat = ""
    , alpha2 = "GU"
    , alpha3 = "GUM"
    , continent = Continent.Australia
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "🇬🇺"
    , gec = "GQ"
    , internationalPrefix = "011"
    , ioc = "GUM"
    , languagesOfficial = [ "en", "ch", "es" ]
    , languagesSpoken = [ "en", "ch", "es" ]
    , localNames = [ "Guam", "Guåhån", "Guam" ]
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
    , subdivisions = guamSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "GU"
    , unofficialNames = [ "Guam", "グアム" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Guatemala
-}
guatemala : Country
guatemala =
    { addressFormat = ""
    , alpha2 = "GT"
    , alpha3 = "GTM"
    , continent = Continent.NorthAmerica
    , countryCode = "502"
    , currencyCode = "GTQ"
    , emoji = "🇬🇹"
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
    , subdivisions = guatemalaSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "GT"
    , unofficialNames = [ "Guatemala", "グアテマラ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Guernsey
-}
guernsey : Country
guernsey =
    { addressFormat = ""
    , alpha2 = "GG"
    , alpha3 = "GGY"
    , continent = Continent.Europe
    , countryCode = "44"
    , currencyCode = "GBP"
    , emoji = "🇬🇬"
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
    , subdivisions = guernseySubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "GG"
    , unofficialNames = [ "Guernsey and Alderney", "Guernsey und Alderney", "Guernsey et Alderney", "Guernsey y Alderney", "ガーンジー", "Guernsey" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Guinea
-}
guinea : Country
guinea =
    { addressFormat = ""
    , alpha2 = "GN"
    , alpha3 = "GIN"
    , continent = Continent.Africa
    , countryCode = "224"
    , currencyCode = "GNF"
    , emoji = "🇬🇳"
    , gec = "GV"
    , internationalPrefix = "00"
    , ioc = "GUI"
    , languagesOfficial = [ "fr", "ff" ]
    , languagesSpoken = [ "fr", "ff" ]
    , localNames = [ "Guinée", "Gine" ]
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
    , subdivisions = guineaSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "GN"
    , unofficialNames = [ "Guinea", "Guinée", "ギニア", "Guinee" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Guinea-Bissau
-}
guineaBissau : Country
guineaBissau =
    { addressFormat = ""
    , alpha2 = "GW"
    , alpha3 = "GNB"
    , continent = Continent.Africa
    , countryCode = "245"
    , currencyCode = "XOF"
    , emoji = "🇬🇼"
    , gec = "PU"
    , internationalPrefix = "00"
    , ioc = "GBS"
    , languagesOfficial = [ "pt" ]
    , languagesSpoken = [ "pt" ]
    , localNames = [ "Guiné-Bissáu" ]
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
    , subdivisions = guineaBissauSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "GW"
    , unofficialNames = [ "Guinea-Bissau", "Guinée-Bissau", "ギニアビサウ", "Guinee-Bissau", "Guinea Bissau" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Guyana
-}
guyana : Country
guyana =
    { addressFormat = ""
    , alpha2 = "GY"
    , alpha3 = "GUY"
    , continent = Continent.SouthAmerica
    , countryCode = "592"
    , currencyCode = "GYD"
    , emoji = "🇬🇾"
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
    , subdivisions = guyanaSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "GY"
    , unofficialNames = [ "Guyana", "ガイアナ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Haiti
-}
haiti : Country
haiti =
    { addressFormat = ""
    , alpha2 = "HT"
    , alpha3 = "HTI"
    , continent = Continent.NorthAmerica
    , countryCode = "509"
    , currencyCode = "HTG"
    , emoji = "🇭🇹"
    , gec = "HA"
    , internationalPrefix = "00"
    , ioc = "HAI"
    , languagesOfficial = [ "fr", "ht" ]
    , languagesSpoken = [ "fr", "ht" ]
    , localNames = [ "Haïti", "Ayiti" ]
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
    , subdivisions = haitiSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "HT"
    , unofficialNames = [ "Haiti", "ハイチ", "Haïti" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Heard Island and McDonald Islands
-}
heardIslandAndMcdonaldIslands : Country
heardIslandAndMcdonaldIslands =
    { addressFormat = ""
    , alpha2 = "HM"
    , alpha3 = "HMD"
    , continent = Continent.Antarctica
    , countryCode = "672"
    , currencyCode = "AUD"
    , emoji = "🇭🇲"
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
    , unofficialNames = [ "Heard and McDonald Islands", "Heard und die McDonaldinseln", "ハード島とマクドナルド諸島", "Heard- en McDonaldeilanden", "Heard Island and McDonald Islands" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Holy See
-}
holySee : Country
holySee =
    { addressFormat = ""
    , alpha2 = "VA"
    , alpha3 = "VAT"
    , continent = Continent.Europe
    , countryCode = "39"
    , currencyCode = "EUR"
    , emoji = "🇻🇦"
    , gec = "VT"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "it", "la" ]
    , languagesSpoken = [ "it", "la" ]
    , localNames = [ "Santa Sede (Stato della Città del Vaticano)" ]
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
    , unofficialNames = [ "Vatican City", "Vatikan", "Cité du Vatican", "Ciudad del Vaticano", "バチカン市国", "Vaticaanstad", "Vatican City State (Holy See)" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Honduras
-}
honduras : Country
honduras =
    { addressFormat = ""
    , alpha2 = "HN"
    , alpha3 = "HND"
    , continent = Continent.NorthAmerica
    , countryCode = "504"
    , currencyCode = "HNL"
    , emoji = "🇭🇳"
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
    , subdivisions = hondurasSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "HN"
    , unofficialNames = [ "Honduras", "ホンジュラス" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Hong Kong
-}
hongKong : Country
hongKong =
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
    , emoji = "🇭🇰"
    , gec = "HK"
    , internationalPrefix = "001"
    , ioc = "HKG"
    , languagesOfficial = [ "en", "zh" ]
    , languagesSpoken = [ "en", "zh" ]
    , localNames = [ "Hong Kong", "香港" ]
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
    , subdivisions = hongKongSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "HK"
    , unofficialNames = [ "Hong Kong", "香港", "Hongkong" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Hungary
-}
hungary : Country
hungary =
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
    , emoji = "🇭🇺"
    , gec = "HU"
    , internationalPrefix = "00"
    , ioc = "HUN"
    , languagesOfficial = [ "hu" ]
    , languagesSpoken = [ "hu" ]
    , localNames = [ "Magyarország" ]
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
    , subdivisions = hungarySubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "HU"
    , unofficialNames = [ "Hungary", "Ungarn", "Hongrie", "Hungría", "ハンガリー", "Hongarije" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Iceland
-}
iceland : Country
iceland =
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
    , emoji = "🇮🇸"
    , gec = "IC"
    , internationalPrefix = "00"
    , ioc = "ISL"
    , languagesOfficial = [ "is" ]
    , languagesSpoken = [ "is" ]
    , localNames = [ "Ísland" ]
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
    , subdivisions = icelandSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "IS"
    , unofficialNames = [ "Iceland", "Island", "Islande", "Islandia", "アイスランド", "IJsland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| India
-}
india : Country
india =
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
    , emoji = "🇮🇳"
    , gec = "IN"
    , internationalPrefix = "00"
    , ioc = "IND"
    , languagesOfficial = [ "hi", "en" ]
    , languagesSpoken = [ "hi", "en" ]
    , localNames = [ "भारत", "India" ]
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
    , subdivisions = indiaSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "IN"
    , unofficialNames = [ "India", "Indien", "Inde", "インド" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Indonesia
-}
indonesia : Country
indonesia =
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
    , emoji = "🇮🇩"
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
    , subdivisions = indonesiaSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "ID"
    , unofficialNames = [ "Indonesia", "Indonesien", "Indonésie", "インドネシア", "Indonesië" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Iran (Islamic Republic of)
-}
iranIslamicRepublicOf : Country
iranIslamicRepublicOf =
    { addressFormat = ""
    , alpha2 = "IR"
    , alpha3 = "IRN"
    , continent = Continent.Asia
    , countryCode = "98"
    , currencyCode = "IRR"
    , emoji = "🇮🇷"
    , gec = "IR"
    , internationalPrefix = "00"
    , ioc = "IRI"
    , languagesOfficial = [ "fa" ]
    , languagesSpoken = [ "fa" ]
    , localNames = [ "ایران" ]
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
    , subdivisions = iranIslamicRepublicOfSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "IR"
    , unofficialNames = [ "Iran", "Irán", "Iran (Islamic Republic Of)", "イラン・イスラム共和国", "Islamic Republic of Iran" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Iraq
-}
iraq : Country
iraq =
    { addressFormat = ""
    , alpha2 = "IQ"
    , alpha3 = "IRQ"
    , continent = Continent.Asia
    , countryCode = "964"
    , currencyCode = "IQD"
    , emoji = "🇮🇶"
    , gec = "IZ"
    , internationalPrefix = "00"
    , ioc = "IRQ"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "العراق" ]
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
    , subdivisions = iraqSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "IQ"
    , unofficialNames = [ "Iraq", "العراق", "Irak", "イラク" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Ireland
-}
ireland : Country
ireland =
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
    , emoji = "🇮🇪"
    , gec = "EI"
    , internationalPrefix = "00"
    , ioc = "IRL"
    , languagesOfficial = [ "en", "ga" ]
    , languagesSpoken = [ "en", "ga" ]
    , localNames = [ "Ireland", "Éire" ]
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
    , subdivisions = irelandSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "IE"
    , unofficialNames = [ "Ireland", "Irland", "Irlande", "Irlanda", "アイルランド", "Ierland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Isle of Man
-}
isleOfMan : Country
isleOfMan =
    { addressFormat = ""
    , alpha2 = "IM"
    , alpha3 = "IMN"
    , continent = Continent.Europe
    , countryCode = "44"
    , currencyCode = "IMP"
    , emoji = "🇮🇲"
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
    , subdivisions = isleOfManSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "IM"
    , unofficialNames = [ "Isle of Man", "Insel Man", "Île de Man", "Isla de Man", "マン島" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Israel
-}
israel : Country
israel =
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
    , emoji = "🇮🇱"
    , gec = "IS"
    , internationalPrefix = "00"
    , ioc = "ISR"
    , languagesOfficial = [ "he", "ar" ]
    , languagesSpoken = [ "he", "ar" ]
    , localNames = [ "ישראל", "إسرائيل" ]
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
    , subdivisions = israelSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "IL"
    , unofficialNames = [ "Israel", "Israël", "イスラエル" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Italy
-}
italy : Country
italy =
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
    , emoji = "🇮🇹"
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
    , subdivisions = italySubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "IT"
    , unofficialNames = [ "Italy", "Italien", "Italie", "Italia", "イタリア", "Italië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Jamaica
-}
jamaica : Country
jamaica =
    { addressFormat = ""
    , alpha2 = "JM"
    , alpha3 = "JAM"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "JMD"
    , emoji = "🇯🇲"
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
    , subdivisions = jamaicaSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "JM"
    , unofficialNames = [ "Jamaica", "Jamaika", "Jamaïque", "ジャマイカ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Japan
-}
japan : Country
japan =
    { addressFormat = """〒{{postalcode}}
{{region_short}}{{city}}{{street}}
{{recipient}}
{{country}}
"""
    , alpha2 = "JP"
    , alpha3 = "JPN"
    , continent = Continent.Asia
    , countryCode = "81"
    , currencyCode = "JPY"
    , emoji = "🇯🇵"
    , gec = "JA"
    , internationalPrefix = "010"
    , ioc = "JPN"
    , languagesOfficial = [ "ja" ]
    , languagesSpoken = [ "ja" ]
    , localNames = [ "日本" ]
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
    , subdivisions = japanSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "JP"
    , unofficialNames = [ "Japan", "Japon", "Japón", "日本" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Jersey
-}
jersey : Country
jersey =
    { addressFormat = ""
    , alpha2 = "JE"
    , alpha3 = "JEY"
    , continent = Continent.Europe
    , countryCode = "44"
    , currencyCode = "JEP"
    , emoji = "🇯🇪"
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
    , subdivisions = jerseySubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "JE"
    , unofficialNames = [ "Jersey", "ジャージー" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Jordan
-}
jordan : Country
jordan =
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
    , emoji = "🇯🇴"
    , gec = "JO"
    , internationalPrefix = "00"
    , ioc = "JOR"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "الأردن" ]
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
    , subdivisions = jordanSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "JO"
    , unofficialNames = [ "Jordan", "الأردن", "Jordanien", "Jordanie", "Jordania", "ヨルダン", "Jordanië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Kazakhstan
-}
kazakhstan : Country
kazakhstan =
    { addressFormat = ""
    , alpha2 = "KZ"
    , alpha3 = "KAZ"
    , continent = Continent.Asia
    , countryCode = "7"
    , currencyCode = "KZT"
    , emoji = "🇰🇿"
    , gec = "KZ"
    , internationalPrefix = "810"
    , ioc = "KAZ"
    , languagesOfficial = [ "kk", "ru" ]
    , languagesSpoken = [ "kk", "ru" ]
    , localNames = [ "Қазақстан", "Казахстан" ]
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
    , subdivisions = kazakhstanSubdivisions
    , subregion = Subregion.CentralAsia
    , unLocode = "KZ"
    , unofficialNames = [ "Kazakhstan", "Kasachstan", "Kazajistán", "カザフスタン", "Kazachstan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Kenya
-}
kenya : Country
kenya =
    { addressFormat = ""
    , alpha2 = "KE"
    , alpha3 = "KEN"
    , continent = Continent.Africa
    , countryCode = "254"
    , currencyCode = "KES"
    , emoji = "🇰🇪"
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
    , subdivisions = kenyaSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "KE"
    , unofficialNames = [ "Kenya", "Kenia", "ケニア" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Kiribati
-}
kiribati : Country
kiribati =
    { addressFormat = ""
    , alpha2 = "KI"
    , alpha3 = "KIR"
    , continent = Continent.Australia
    , countryCode = "686"
    , currencyCode = "AUD"
    , emoji = "🇰🇮"
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
    , subdivisions = kiribatiSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "KI"
    , unofficialNames = [ "Kiribati", "キリバス" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Korea (Democratic People's Republic of)
-}
koreaDemocraticPeopleSRepublicOf : Country
koreaDemocraticPeopleSRepublicOf =
    { addressFormat = ""
    , alpha2 = "KP"
    , alpha3 = "PRK"
    , continent = Continent.Asia
    , countryCode = "850"
    , currencyCode = "KPW"
    , emoji = "🇰🇵"
    , gec = "KN"
    , internationalPrefix = "00"
    , ioc = "PRK"
    , languagesOfficial = [ "ko" ]
    , languagesSpoken = [ "ko" ]
    , localNames = [ "조선민주주의인민공화국" ]
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
    , subdivisions = koreaDemocraticPeopleSRepublicOfSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "KP"
    , unofficialNames = [ "Korea (North)", "North Korea", "Nordkorea", "Corée du Nord", "Corea del Norte", "朝鮮民主主義人民共和国", "Noord-Korea", "Korea Democratic People's Republic", "Korea (Democratic People s Republic of)" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Korea (Republic of)
-}
koreaRepublicOf : Country
koreaRepublicOf =
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
    , emoji = "🇰🇷"
    , gec = "KS"
    , internationalPrefix = "001"
    , ioc = "KOR"
    , languagesOfficial = [ "ko" ]
    , languagesSpoken = [ "ko" ]
    , localNames = [ "대한민국" ]
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
    , subdivisions = koreaRepublicOfSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "KR"
    , unofficialNames = [ "South Korea", "Korea (South)", "Südkorea", "Corée du Sud", "Corea del Sur", "大韓民国", "Zuid-Korea", "Korea (Republic of)" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Kuwait
-}
kuwait : Country
kuwait =
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
    , emoji = "🇰🇼"
    , gec = "KU"
    , internationalPrefix = "00"
    , ioc = "KUW"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "الكويت" ]
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
    , subdivisions = kuwaitSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "KW"
    , unofficialNames = [ "Kuwait", "الكويت", "Koweït", "クウェート", "Koeweit" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Kyrgyzstan
-}
kyrgyzstan : Country
kyrgyzstan =
    { addressFormat = ""
    , alpha2 = "KG"
    , alpha3 = "KGZ"
    , continent = Continent.Asia
    , countryCode = "996"
    , currencyCode = "KGS"
    , emoji = "🇰🇬"
    , gec = "KG"
    , internationalPrefix = "00"
    , ioc = "KGZ"
    , languagesOfficial = [ "ky", "ru" ]
    , languagesSpoken = [ "ky", "ru" ]
    , localNames = [ "Кыргызстан", "Киргизия" ]
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
    , subdivisions = kyrgyzstanSubdivisions
    , subregion = Subregion.CentralAsia
    , unLocode = "KG"
    , unofficialNames = [ "Kyrgyzstan", "Kirgisistan", "Kirghizistan", "Kirguizistán", "キルギス", "Kirgizië", "Kyrgzstan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Lao People's Democratic Republic
-}
laoPeopleSDemocraticRepublic : Country
laoPeopleSDemocraticRepublic =
    { addressFormat = ""
    , alpha2 = "LA"
    , alpha3 = "LAO"
    , continent = Continent.Asia
    , countryCode = "856"
    , currencyCode = "LAK"
    , emoji = "🇱🇦"
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
    , subdivisions = laoPeopleSDemocraticRepublicSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "LA"
    , unofficialNames = [ "Laos", "ラオス人民民主共和国", "Lao People s Democratic Republic" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Latvia
-}
latvia : Country
latvia =
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
    , emoji = "🇱🇻"
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
    , subdivisions = latviaSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "LV"
    , unofficialNames = [ "Latvia", "Lettland", "Lettonie", "Letonia", "ラトビア", "Letland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Lebanon
-}
lebanon : Country
lebanon =
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
    , emoji = "🇱🇧"
    , gec = "LE"
    , internationalPrefix = "00"
    , ioc = "LIB"
    , languagesOfficial = [ "ar", "fr" ]
    , languagesSpoken = [ "ar", "fr" ]
    , localNames = [ "لبنان", "Liban" ]
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
    , subdivisions = lebanonSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "LB"
    , unofficialNames = [ "Lebanon", "لبنان", "Libanon", "Liban", "Líbano", "レバノン" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Lesotho
-}
lesotho : Country
lesotho =
    { addressFormat = ""
    , alpha2 = "LS"
    , alpha3 = "LSO"
    , continent = Continent.Africa
    , countryCode = "266"
    , currencyCode = "LSL"
    , emoji = "🇱🇸"
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
    , subdivisions = lesothoSubdivisions
    , subregion = Subregion.SouthernAfrica
    , unLocode = "LS"
    , unofficialNames = [ "Lesotho", "レソト" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Liberia
-}
liberia : Country
liberia =
    { addressFormat = ""
    , alpha2 = "LR"
    , alpha3 = "LBR"
    , continent = Continent.Africa
    , countryCode = "231"
    , currencyCode = "LRD"
    , emoji = "🇱🇷"
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
    , subdivisions = liberiaSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "LR"
    , unofficialNames = [ "Liberia", "リベリア" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Libya
-}
libya : Country
libya =
    { addressFormat = ""
    , alpha2 = "LY"
    , alpha3 = "LBY"
    , continent = Continent.Africa
    , countryCode = "218"
    , currencyCode = "LYD"
    , emoji = "🇱🇾"
    , gec = "LY"
    , internationalPrefix = "00"
    , ioc = "LBA"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "ليبيا" ]
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
    , subdivisions = libyaSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "LY"
    , unofficialNames = [ "Libya", "ليبيا", "Libyen", "Libye", "Libia", "リビア", "Libië", "Libyan Arab Jamahiriya" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Liechtenstein
-}
liechtenstein : Country
liechtenstein =
    { addressFormat = ""
    , alpha2 = "LI"
    , alpha3 = "LIE"
    , continent = Continent.Europe
    , countryCode = "423"
    , currencyCode = "CHF"
    , emoji = "🇱🇮"
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
    , subdivisions = liechtensteinSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "LI"
    , unofficialNames = [ "Liechtenstein", "リヒテンシュタイン" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Lithuania
-}
lithuania : Country
lithuania =
    { addressFormat = ""
    , alpha2 = "LT"
    , alpha3 = "LTU"
    , continent = Continent.Europe
    , countryCode = "370"
    , currencyCode = "EUR"
    , emoji = "🇱🇹"
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
    , subdivisions = lithuaniaSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "LT"
    , unofficialNames = [ "Lithuania", "Litauen", "Lituanie", "Lituania", "リトアニア", "Litouwen", "Літва", "Lietuva" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Luxembourg
-}
luxembourg : Country
luxembourg =
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
    , emoji = "🇱🇺"
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
    , subdivisions = luxembourgSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "LU"
    , unofficialNames = [ "Luxembourg", "Luxemburg", "Luxemburgo", "ルクセンブルク" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Macao
-}
macao : Country
macao =
    { addressFormat = ""
    , alpha2 = "MO"
    , alpha3 = "MAC"
    , continent = Continent.Asia
    , countryCode = "853"
    , currencyCode = "MOP"
    , emoji = "🇲🇴"
    , gec = "MC"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "zh", "pt" ]
    , languagesSpoken = [ "zh", "pt" ]
    , localNames = [ "澳门", "Macau" ]
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
    , subdivisions = macaoSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "MO"
    , unofficialNames = [ "Macao", "Macau", "マカオ" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Madagascar
-}
madagascar : Country
madagascar =
    { addressFormat = ""
    , alpha2 = "MG"
    , alpha3 = "MDG"
    , continent = Continent.Africa
    , countryCode = "261"
    , currencyCode = "MGA"
    , emoji = "🇲🇬"
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
    , subdivisions = madagascarSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "MG"
    , unofficialNames = [ "Madagascar", "Madagaskar", "the Republic of Madagascar", "マダガスカル" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Malawi
-}
malawi : Country
malawi =
    { addressFormat = ""
    , alpha2 = "MW"
    , alpha3 = "MWI"
    , continent = Continent.Africa
    , countryCode = "265"
    , currencyCode = "MWK"
    , emoji = "🇲🇼"
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
    , subdivisions = malawiSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "MW"
    , unofficialNames = [ "Malawi", "マラウイ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Malaysia
-}
malaysia : Country
malaysia =
    { addressFormat = ""
    , alpha2 = "MY"
    , alpha3 = "MYS"
    , continent = Continent.Asia
    , countryCode = "60"
    , currencyCode = "MYR"
    , emoji = "🇲🇾"
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
    , subdivisions = malaysiaSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "MY"
    , unofficialNames = [ "Malaysia", "Malaisie", "Malasia", "マレーシア", "Maleisië" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Maldives
-}
maldives : Country
maldives =
    { addressFormat = ""
    , alpha2 = "MV"
    , alpha3 = "MDV"
    , continent = Continent.Asia
    , countryCode = "960"
    , currencyCode = "MVR"
    , emoji = "🇲🇻"
    , gec = "MV"
    , internationalPrefix = "00"
    , ioc = "MDV"
    , languagesOfficial = [ "dv" ]
    , languagesSpoken = [ "dv" ]
    , localNames = [ "ދިވެހިރާއްޖެ" ]
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
    , subdivisions = maldivesSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "MV"
    , unofficialNames = [ "Maldives", "Malediven", "Maldivas", "モルディブ", "Maldiven" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Mali
-}
mali : Country
mali =
    { addressFormat = ""
    , alpha2 = "ML"
    , alpha3 = "MLI"
    , continent = Continent.Africa
    , countryCode = "223"
    , currencyCode = "XOF"
    , emoji = "🇲🇱"
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
    , subdivisions = maliSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "ML"
    , unofficialNames = [ "Mali", "マリ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Malta
-}
malta : Country
malta =
    { addressFormat = ""
    , alpha2 = "MT"
    , alpha3 = "MLT"
    , continent = Continent.Europe
    , countryCode = "356"
    , currencyCode = "EUR"
    , emoji = "🇲🇹"
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
    , subdivisions = maltaSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "MT"
    , unofficialNames = [ "Malta", "Malte", "マルタ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Marshall Islands
-}
marshallIslands : Country
marshallIslands =
    { addressFormat = ""
    , alpha2 = "MH"
    , alpha3 = "MHL"
    , continent = Continent.Australia
    , countryCode = "692"
    , currencyCode = "USD"
    , emoji = "🇲🇭"
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
    , subdivisions = marshallIslandsSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "MH"
    , unofficialNames = [ "Marshall Islands", "Marshallinseln", "Îles Marshall", "Islas Marshall", "マーシャル諸島", "Marshalleilanden" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Martinique
-}
martinique : Country
martinique =
    { addressFormat = ""
    , alpha2 = "MQ"
    , alpha3 = "MTQ"
    , continent = Continent.NorthAmerica
    , countryCode = "596"
    , currencyCode = "EUR"
    , emoji = "🇲🇶"
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
    , subdivisions = martiniqueSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "MQ"
    , unofficialNames = [ "Martinique", "Martinica", "マルティニーク" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Mauritania
-}
mauritania : Country
mauritania =
    { addressFormat = ""
    , alpha2 = "MR"
    , alpha3 = "MRT"
    , continent = Continent.Africa
    , countryCode = "222"
    , currencyCode = "MRU"
    , emoji = "🇲🇷"
    , gec = "MR"
    , internationalPrefix = "00"
    , ioc = "MTN"
    , languagesOfficial = [ "ar", "fr" ]
    , languagesSpoken = [ "ar", "fr" ]
    , localNames = [ "موريتانيا", "Mauritanie" ]
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
    , subdivisions = mauritaniaSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "MR"
    , unofficialNames = [ "Mauritania", "موريتانيا", "Mauretanien", "Mauritanie", "モーリタニア", "Mauritanië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Mauritius
-}
mauritius : Country
mauritius =
    { addressFormat = ""
    , alpha2 = "MU"
    , alpha3 = "MUS"
    , continent = Continent.Africa
    , countryCode = "230"
    , currencyCode = "MUR"
    , emoji = "🇲🇺"
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
    , subdivisions = mauritiusSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "MU"
    , unofficialNames = [ "Mauritius", "Île Maurice", "Mauricio", "モーリシャス" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Mayotte
-}
mayotte : Country
mayotte =
    { addressFormat = ""
    , alpha2 = "YT"
    , alpha3 = "MYT"
    , continent = Continent.Africa
    , countryCode = "262"
    , currencyCode = "EUR"
    , emoji = "🇾🇹"
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
    , subdivisions = mayotteSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "YT"
    , unofficialNames = [ "Mayotte", "マヨット" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Mexico
-}
mexico : Country
mexico =
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
    , emoji = "🇲🇽"
    , gec = "MX"
    , internationalPrefix = "00"
    , ioc = "MEX"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "México" ]
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
    , subdivisions = mexicoSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "MX"
    , unofficialNames = [ "Mexico", "Mexiko", "Mexique", "México", "メキシコ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Micronesia (Federated States of)
-}
micronesiaFederatedStatesOf : Country
micronesiaFederatedStatesOf =
    { addressFormat = ""
    , alpha2 = "FM"
    , alpha3 = "FSM"
    , continent = Continent.Australia
    , countryCode = "691"
    , currencyCode = "USD"
    , emoji = "🇫🇲"
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
    , subdivisions = micronesiaFederatedStatesOfSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "FM"
    , unofficialNames = [ "Micronesia", "Mikronesien", "Micronésie", "ミクロネシア連邦", "Micronesië" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Moldova (Republic of)
-}
moldovaRepublicOf : Country
moldovaRepublicOf =
    { addressFormat = ""
    , alpha2 = "MD"
    , alpha3 = "MDA"
    , continent = Continent.Europe
    , countryCode = "373"
    , currencyCode = "MDL"
    , emoji = "🇲🇩"
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
    , subdivisions = moldovaRepublicOfSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "MD"
    , unofficialNames = [ "Moldova", "Moldawien", "Moldavie", "Moldavia", "the Republic of Moldova", "モルドバ共和国", "Moldavië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Monaco
-}
monaco : Country
monaco =
    { addressFormat = ""
    , alpha2 = "MC"
    , alpha3 = "MCO"
    , continent = Continent.Europe
    , countryCode = "377"
    , currencyCode = "EUR"
    , emoji = "🇲🇨"
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
    , subdivisions = monacoSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "MC"
    , unofficialNames = [ "Monaco", "Mónaco", "モナコ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Mongolia
-}
mongolia : Country
mongolia =
    { addressFormat = ""
    , alpha2 = "MN"
    , alpha3 = "MNG"
    , continent = Continent.Asia
    , countryCode = "976"
    , currencyCode = "MNT"
    , emoji = "🇲🇳"
    , gec = "MG"
    , internationalPrefix = "001"
    , ioc = "MGL"
    , languagesOfficial = [ "mn" ]
    , languagesSpoken = [ "mn" ]
    , localNames = [ "Монгол" ]
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
    , subdivisions = mongoliaSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "MN"
    , unofficialNames = [ "Mongolia", "Mongolei", "Mongolie", "モンゴル", "Mongolië" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Montenegro
-}
montenegro : Country
montenegro =
    { addressFormat = ""
    , alpha2 = "ME"
    , alpha3 = "MNE"
    , continent = Continent.Europe
    , countryCode = "382"
    , currencyCode = "EUR"
    , emoji = "🇲🇪"
    , gec = "MJ"
    , internationalPrefix = "99"
    , ioc = "MNE"
    , languagesOfficial = [ "sr", "bs", "sq", "hr" ]
    , languagesSpoken = [ "sr", "bs", "sq", "hr" ]
    , localNames = [ "Црна Гора", "Crna Gora", "Mali i Zi", "Crna Gora" ]
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
    , subdivisions = montenegroSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "ME"
    , unofficialNames = [ "Crna Gora", "Montenegro", "モンテネグロ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Montserrat
-}
montserrat : Country
montserrat =
    { addressFormat = ""
    , alpha2 = "MS"
    , alpha3 = "MSR"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "🇲🇸"
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
    , subdivisions = montserratSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "MS"
    , unofficialNames = [ "Montserrat", "モントセラト" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Morocco
-}
morocco : Country
morocco =
    { addressFormat = ""
    , alpha2 = "MA"
    , alpha3 = "MAR"
    , continent = Continent.Africa
    , countryCode = "212"
    , currencyCode = "MAD"
    , emoji = "🇲🇦"
    , gec = "MO"
    , internationalPrefix = "00"
    , ioc = "MAR"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "المغرب" ]
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
    , subdivisions = moroccoSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "MA"
    , unofficialNames = [ "Morocco", "المغرب", "Marokko", "Maroc", "Marruecos", "モロッコ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Mozambique
-}
mozambique : Country
mozambique =
    { addressFormat = ""
    , alpha2 = "MZ"
    , alpha3 = "MOZ"
    , continent = Continent.Africa
    , countryCode = "258"
    , currencyCode = "MZN"
    , emoji = "🇲🇿"
    , gec = "MZ"
    , internationalPrefix = "00"
    , ioc = "MOZ"
    , languagesOfficial = [ "pt" ]
    , languagesSpoken = [ "pt" ]
    , localNames = [ "Moçambique" ]
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
    , subdivisions = mozambiqueSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "MZ"
    , unofficialNames = [ "Mozambique", "Mosambik", "モザンビーク" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Myanmar
-}
myanmar : Country
myanmar =
    { addressFormat = ""
    , alpha2 = "MM"
    , alpha3 = "MMR"
    , continent = Continent.Asia
    , countryCode = "95"
    , currencyCode = "MMK"
    , emoji = "🇲🇲"
    , gec = "BM"
    , internationalPrefix = "00"
    , ioc = "MYA"
    , languagesOfficial = [ "my" ]
    , languagesSpoken = [ "my" ]
    , localNames = [ "မြန်မာနိုင်ငံ" ]
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
    , subdivisions = myanmarSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "MM"
    , unofficialNames = [ "Myanmar", "ミャンマー" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Namibia
-}
namibia : Country
namibia =
    { addressFormat = ""
    , alpha2 = "NA"
    , alpha3 = "NAM"
    , continent = Continent.Africa
    , countryCode = "264"
    , currencyCode = "NAD"
    , emoji = "🇳🇦"
    , gec = "WA"
    , internationalPrefix = "00"
    , ioc = "NAM"
    , languagesOfficial = [ "en", "af" ]
    , languagesSpoken = [ "en", "af" ]
    , localNames = [ "Namibia", "Namibië" ]
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
    , subdivisions = namibiaSubdivisions
    , subregion = Subregion.SouthernAfrica
    , unLocode = "NA"
    , unofficialNames = [ "Namibia", "Namibie", "ナミビア", "Namibië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Nauru
-}
nauru : Country
nauru =
    { addressFormat = ""
    , alpha2 = "NR"
    , alpha3 = "NRU"
    , continent = Continent.Australia
    , countryCode = "674"
    , currencyCode = "AUD"
    , emoji = "🇳🇷"
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
    , subdivisions = nauruSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "NR"
    , unofficialNames = [ "Nauru", "ナウル" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Nepal
-}
nepal : Country
nepal =
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
    , emoji = "🇳🇵"
    , gec = "NP"
    , internationalPrefix = "00"
    , ioc = "NEP"
    , languagesOfficial = [ "ne" ]
    , languagesSpoken = [ "ne", "mai", "bho", "new", "urd" ]
    , localNames = [ "नेपाल" ]
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
    , subdivisions = nepalSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "NP"
    , unofficialNames = [ "Nepal", "Népal", "the Federal Democratic Republic of Nepal", "ネパール" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Netherlands
-}
netherlands : Country
netherlands =
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
    , emoji = "🇳🇱"
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
    , subdivisions = netherlandsSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "NL"
    , unofficialNames = [ "Netherlands", "The Netherlands", "Niederlande", "Pays-Bas", "Países Bajos", "オランダ", "Nederland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| New Caledonia
-}
newCaledonia : Country
newCaledonia =
    { addressFormat = ""
    , alpha2 = "NC"
    , alpha3 = "NCL"
    , continent = Continent.Australia
    , countryCode = "687"
    , currencyCode = "XPF"
    , emoji = "🇳🇨"
    , gec = "NC"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Nouvelle-Calédonie" ]
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
    , subdivisions = newCaledoniaSubdivisions
    , subregion = Subregion.Melanesia
    , unLocode = "NC"
    , unofficialNames = [ "New Caledonia", "Neukaledonien", "Nouvelle-Calédonie", "Nueva Caledonia", "ニューカレドニア", "Nieuw-Caledonië" ]
    , worldRegion = WorldRegion.Apac
    }


{-| New Zealand
-}
newZealand : Country
newZealand =
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
    , emoji = "🇳🇿"
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
    , subdivisions = newZealandSubdivisions
    , subregion = Subregion.AustraliaAndNewZealand
    , unLocode = "NZ"
    , unofficialNames = [ "New Zealand", "Neuseeland", "Nouvelle Zélande", "Nueva Zelanda", "ニュージーランド", "Nieuw-Zeeland" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Nicaragua
-}
nicaragua : Country
nicaragua =
    { addressFormat = ""
    , alpha2 = "NI"
    , alpha3 = "NIC"
    , continent = Continent.NorthAmerica
    , countryCode = "505"
    , currencyCode = "NIO"
    , emoji = "🇳🇮"
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
    , subdivisions = nicaraguaSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "NI"
    , unofficialNames = [ "Nicaragua", "ニカラグア" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Niger
-}
niger : Country
niger =
    { addressFormat = ""
    , alpha2 = "NE"
    , alpha3 = "NER"
    , continent = Continent.Africa
    , countryCode = "227"
    , currencyCode = "XOF"
    , emoji = "🇳🇪"
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
    , subdivisions = nigerSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "NE"
    , unofficialNames = [ "Niger", "Níger", "ニジェール" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Nigeria
-}
nigeria : Country
nigeria =
    { addressFormat = ""
    , alpha2 = "NG"
    , alpha3 = "NGA"
    , continent = Continent.Africa
    , countryCode = "234"
    , currencyCode = "NGN"
    , emoji = "🇳🇬"
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
    , subdivisions = nigeriaSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "NG"
    , unofficialNames = [ "Nigeria", "Nigéria", "the Federal Republic of Nigeria", "ナイジェリア" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Niue
-}
niue : Country
niue =
    { addressFormat = ""
    , alpha2 = "NU"
    , alpha3 = "NIU"
    , continent = Continent.Australia
    , countryCode = "683"
    , currencyCode = "NZD"
    , emoji = "🇳🇺"
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
    , unofficialNames = [ "Niue", "ニウエ" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Norfolk Island
-}
norfolkIsland : Country
norfolkIsland =
    { addressFormat = ""
    , alpha2 = "NF"
    , alpha3 = "NFK"
    , continent = Continent.Australia
    , countryCode = "672"
    , currencyCode = "AUD"
    , emoji = "🇳🇫"
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
    , unofficialNames = [ "Norfolk Island", "Norfolkinsel", "Île de Norfolk", "Isla de Norfolk", "ノーフォーク島", "Norfolkeiland" ]
    , worldRegion = WorldRegion.Apac
    }


{-| North Macedonia
-}
northMacedonia : Country
northMacedonia =
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
    , emoji = "🇲🇰"
    , gec = "MK"
    , internationalPrefix = "00"
    , ioc = "MKD"
    , languagesOfficial = [ "mk" ]
    , languagesSpoken = [ "mk" ]
    , localNames = [ "Нова Каледонија" ]
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
    , subdivisions = northMacedoniaSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "MK"
    , unofficialNames = [ "Macedonia", "Mazedonien", "Macédoine", "F.Y.R.O.M (Macedonia)", "マケドニア旧ユーゴスラビア共和国", "Macedonië [FYROM]", "Macedonia (The Former Yugoslav Republic of)", "North Macedonia" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Northern Mariana Islands
-}
northernMarianaIslands : Country
northernMarianaIslands =
    { addressFormat = ""
    , alpha2 = "MP"
    , alpha3 = "MNP"
    , continent = Continent.Australia
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "🇲🇵"
    , gec = "CQ"
    , internationalPrefix = "011"
    , ioc = ""
    , languagesOfficial = [ "en", "ch" ]
    , languagesSpoken = [ "en", "ch" ]
    , localNames = [ "Northern Mariana Islands", "Notte Mariånas" ]
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
    , subdivisions = northernMarianaIslandsSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "MP"
    , unofficialNames = [ "Northern Mariana Islands", "Nördliche Marianen", "Mariannes du Nord", "Islas Marianas del Norte", "北マリアナ諸島", "Noordelijke Marianeneilanden" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Norway
-}
norway : Country
norway =
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
    , emoji = "🇳🇴"
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
    , subdivisions = norwaySubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "NO"
    , unofficialNames = [ "Norway", "Norwegen", "Norvège", "Noruega", "ノルウェー", "Noorwegen" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Oman
-}
oman : Country
oman =
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
    , emoji = "🇴🇲"
    , gec = "MU"
    , internationalPrefix = "00"
    , ioc = "OMA"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "عمان" ]
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
    , subdivisions = omanSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "OM"
    , unofficialNames = [ "Oman", "عمان", "Omán", "オマーン" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Pakistan
-}
pakistan : Country
pakistan =
    { addressFormat = ""
    , alpha2 = "PK"
    , alpha3 = "PAK"
    , continent = Continent.Asia
    , countryCode = "92"
    , currencyCode = "PKR"
    , emoji = "🇵🇰"
    , gec = "PK"
    , internationalPrefix = "00"
    , ioc = "PAK"
    , languagesOfficial = [ "en", "ur" ]
    , languagesSpoken = [ "en", "ur" ]
    , localNames = [ "Pakistan", "پاکستان" ]
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
    , subdivisions = pakistanSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "PK"
    , unofficialNames = [ "Pakistan", "Paquistán", "パキスタン" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Palau
-}
palau : Country
palau =
    { addressFormat = ""
    , alpha2 = "PW"
    , alpha3 = "PLW"
    , continent = Continent.Australia
    , countryCode = "680"
    , currencyCode = "USD"
    , emoji = "🇵🇼"
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
    , subdivisions = palauSubdivisions
    , subregion = Subregion.Micronesia
    , unLocode = "PW"
    , unofficialNames = [ "Palau", "パラオ" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Palestine, State of
-}
palestineStateOf : Country
palestineStateOf =
    { addressFormat = ""
    , alpha2 = "PS"
    , alpha3 = "PSE"
    , continent = Continent.Asia
    , countryCode = "970"
    , currencyCode = "ILS"
    , emoji = "🇵🇸"
    , gec = "WE"
    , internationalPrefix = "00"
    , ioc = "PLE"
    , languagesOfficial = [ "ar", "he", "en" ]
    , languagesSpoken = [ "ar", "he", "en" ]
    , localNames = [ "فلسطين", "פלסטין, מדינת", "Palestine, State of" ]
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
    , subdivisions = palestineStateOfSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "PS"
    , unofficialNames = [ "Palestine", "فلسطين", "Palästina", "Palestina", "the Occupied Palestinian Territory", "パレスチナ", "Palestijnse gebieden", "Palestinian Territory Occupied", "Palestinian Authority" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Panama
-}
panama : Country
panama =
    { addressFormat = ""
    , alpha2 = "PA"
    , alpha3 = "PAN"
    , continent = Continent.NorthAmerica
    , countryCode = "507"
    , currencyCode = "PAB"
    , emoji = "🇵🇦"
    , gec = "PM"
    , internationalPrefix = "00"
    , ioc = "PAN"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Panamá" ]
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
    , subdivisions = panamaSubdivisions
    , subregion = Subregion.CentralAmerica
    , unLocode = "PA"
    , unofficialNames = [ "Panama", "Panamá", "パナマ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Papua New Guinea
-}
papuaNewGuinea : Country
papuaNewGuinea =
    { addressFormat = ""
    , alpha2 = "PG"
    , alpha3 = "PNG"
    , continent = Continent.Australia
    , countryCode = "675"
    , currencyCode = "PGK"
    , emoji = "🇵🇬"
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
    , subdivisions = papuaNewGuineaSubdivisions
    , subregion = Subregion.Melanesia
    , unLocode = "PG"
    , unofficialNames = [ "Papua New Guinea", "Papua-Neuguinea", "Papouasie Nouvelle-Guinée", "Papúa Nueva Guinea", "パプアニューギニア", "Papoea-Nieuw-Guinea" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Paraguay
-}
paraguay : Country
paraguay =
    { addressFormat = ""
    , alpha2 = "PY"
    , alpha3 = "PRY"
    , continent = Continent.SouthAmerica
    , countryCode = "595"
    , currencyCode = "PYG"
    , emoji = "🇵🇾"
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
    , subdivisions = paraguaySubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "PY"
    , unofficialNames = [ "Paraguay", "パラグアイ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Peru
-}
peru : Country
peru =
    { addressFormat = ""
    , alpha2 = "PE"
    , alpha3 = "PER"
    , continent = Continent.SouthAmerica
    , countryCode = "51"
    , currencyCode = "PEN"
    , emoji = "🇵🇪"
    , gec = "PE"
    , internationalPrefix = "00"
    , ioc = "PER"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "Perú" ]
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
    , subdivisions = peruSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "PE"
    , unofficialNames = [ "Peru", "Pérou", "Perú", "ペルー" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Philippines
-}
philippines : Country
philippines =
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
    , emoji = "🇵🇭"
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
    , subdivisions = philippinesSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "PH"
    , unofficialNames = [ "Philippines", "Philippinen", "Filipinas", "フィリピン", "Filipijnen" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Pitcairn
-}
pitcairn : Country
pitcairn =
    { addressFormat = ""
    , alpha2 = "PN"
    , alpha3 = "PCN"
    , continent = Continent.Australia
    , countryCode = "64"
    , currencyCode = "NZD"
    , emoji = "🇵🇳"
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
    , unofficialNames = [ "Pitcairn", "ピトケアン", "Pitcairneilanden", "Pitcairn Islands" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Poland
-}
poland : Country
poland =
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
    , emoji = "🇵🇱"
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
    , subdivisions = polandSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "PL"
    , unofficialNames = [ "Poland", "Polen", "Pologne", "Polonia", "ポーランド" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Portugal
-}
portugal : Country
portugal =
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
    , emoji = "🇵🇹"
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
    , subdivisions = portugalSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "PT"
    , unofficialNames = [ "Portugal", "ポルトガル" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Puerto Rico
-}
puertoRico : Country
puertoRico =
    { addressFormat = ""
    , alpha2 = "PR"
    , alpha3 = "PRI"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "🇵🇷"
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
    , subdivisions = puertoRicoSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "PR"
    , unofficialNames = [ "Puerto Rico", "プエルトリコ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Qatar
-}
qatar : Country
qatar =
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
    , emoji = "🇶🇦"
    , gec = "QA"
    , internationalPrefix = "00"
    , ioc = "QAT"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "قطر" ]
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
    , subdivisions = qatarSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "QA"
    , unofficialNames = [ "Qatar", "قطر", "Katar", "カタール" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Romania
-}
romania : Country
romania =
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
    , emoji = "🇷🇴"
    , gec = "RO"
    , internationalPrefix = "00"
    , ioc = "ROU"
    , languagesOfficial = [ "ro" ]
    , languagesSpoken = [ "ro" ]
    , localNames = [ "România" ]
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
    , subdivisions = romaniaSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "RO"
    , unofficialNames = [ "Romania", "Rumänien", "Roumanie", "Rumania", "ルーマニア", "Roemenië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Russian Federation
-}
russianFederation : Country
russianFederation =
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
    , emoji = "🇷🇺"
    , gec = "RS"
    , internationalPrefix = "810"
    , ioc = "RUS"
    , languagesOfficial = [ "ru" ]
    , languagesSpoken = [ "ru" ]
    , localNames = [ "Российская Федерация" ]
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
    , subdivisions = russianFederationSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "RU"
    , unofficialNames = [ "Russia", "Russland", "Russie", "Rusia", "ロシア連邦", "Rusland", "Россия", "Расія" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Rwanda
-}
rwanda : Country
rwanda =
    { addressFormat = ""
    , alpha2 = "RW"
    , alpha3 = "RWA"
    , continent = Continent.Africa
    , countryCode = "250"
    , currencyCode = "RWF"
    , emoji = "🇷🇼"
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
    , subdivisions = rwandaSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "RW"
    , unofficialNames = [ "Rwanda", "Ruanda", "ルワンダ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Réunion
-}
reunion : Country
reunion =
    { addressFormat = ""
    , alpha2 = "RE"
    , alpha3 = "REU"
    , continent = Continent.Africa
    , countryCode = "262"
    , currencyCode = "EUR"
    , emoji = "🇷🇪"
    , gec = "RE"
    , internationalPrefix = "00"
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Réunion, Île de la" ]
    , name = "Réunion"
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
    , subdivisions = reunionSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "RE"
    , unofficialNames = [ "Réunion", "Reunión", "Reunion", "レユニオン" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Saint Barthélemy
-}
saintBarthelemy : Country
saintBarthelemy =
    { addressFormat = ""
    , alpha2 = "BL"
    , alpha3 = "BLM"
    , continent = Continent.NorthAmerica
    , countryCode = "590"
    , currencyCode = "EUR"
    , emoji = "🇧🇱"
    , gec = "TB"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Saint-Barthélemy" ]
    , name = "Saint Barthélemy"
    , nanpPrefix = ""
    , nationalDestinationCodeLengths = []
    , nationalNumberLengths = []
    , nationalPrefix = ""
    , nationality = "Saint Barthélemy Islander"
    , number = "652"
    , postalCode = True
    , postalCodeFormat = "9[78][01]\\d{2}"
    , region = Region.Americas
    , startOfWeek = Time.Mon
    , subdivisions = saintBarthelemySubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "BL"
    , unofficialNames = [ "Saint Barthélemy", "Saint-Barthélemy", "サン・バルテルミー" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Saint Helena, Ascension and Tristan da Cunha
-}
saintHelenaAscensionAndTristanDaCunha : Country
saintHelenaAscensionAndTristanDaCunha =
    { addressFormat = ""
    , alpha2 = "SH"
    , alpha3 = "SHN"
    , continent = Continent.Africa
    , countryCode = "290"
    , currencyCode = "SHP"
    , emoji = "🇸🇭"
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
    , subdivisions = saintHelenaAscensionAndTristanDaCunhaSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "SH"
    , unofficialNames = [ "Saint Helena", "Sankt Helena", "Sainte Hélène", "Santa Helena", "セントヘレナ・アセンションおよびトリスタンダクーニャ", "Sint-Helena", "Saint Helena, Ascension and Tristan da Cunha" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Saint Kitts and Nevis
-}
saintKittsAndNevis : Country
saintKittsAndNevis =
    { addressFormat = ""
    , alpha2 = "KN"
    , alpha3 = "KNA"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "🇰🇳"
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
    , subdivisions = saintKittsAndNevisSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "KN"
    , unofficialNames = [ "Saint Kitts and Nevis", "Föderation St. Kitts und Nevis", "Saint Kitts et Nevis", "Saint Kitts y Nevis", "セントクリストファー・ネイビス", "Saint Kitts en Nevis", "St. Kitts and Nevis", "St Kitts and Nevis" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Saint Lucia
-}
saintLucia : Country
saintLucia =
    { addressFormat = ""
    , alpha2 = "LC"
    , alpha3 = "LCA"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "🇱🇨"
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
    , subdivisions = saintLuciaSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "LC"
    , unofficialNames = [ "Saint Lucia", "Saint-Lucie", "Santa Lucía", "セントルシア", "St. Lucia", "St Lucia" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Saint Martin (French part)
-}
saintMartinFrenchPart : Country
saintMartinFrenchPart =
    { addressFormat = ""
    , alpha2 = "MF"
    , alpha3 = "MAF"
    , continent = Continent.NorthAmerica
    , countryCode = "590"
    , currencyCode = "EUR"
    , emoji = "🇲🇫"
    , gec = "RN"
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "en", "fr", "nl" ]
    , languagesSpoken = [ "en", "fr", "nl" ]
    , localNames = [ "Saint Martin (French part)", "Saint-Martin (partie française)", "Sint-Maarten" ]
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
    , subdivisions = saintMartinFrenchPartSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "MF"
    , unofficialNames = [ "Saint Martin", "サン・マルタン（フランス領）", "Saint-Martin" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Saint Pierre and Miquelon
-}
saintPierreAndMiquelon : Country
saintPierreAndMiquelon =
    { addressFormat = ""
    , alpha2 = "PM"
    , alpha3 = "SPM"
    , continent = Continent.NorthAmerica
    , countryCode = "508"
    , currencyCode = "EUR"
    , emoji = "🇵🇲"
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
    , subdivisions = saintPierreAndMiquelonSubdivisions
    , subregion = Subregion.NorthernAmerica
    , unLocode = "PM"
    , unofficialNames = [ "Saint Pierre and Miquelon", "Saint-Pierre und Miquelon", "Saint-Pierre-et-Miquelon", "San Pedro y Miquelón", "サンピエール島・ミクロン島", "Saint Pierre en Miquelon" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Saint Vincent and the Grenadines
-}
saintVincentAndTheGrenadines : Country
saintVincentAndTheGrenadines =
    { addressFormat = ""
    , alpha2 = "VC"
    , alpha3 = "VCT"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "XCD"
    , emoji = "🇻🇨"
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
    , subdivisions = saintVincentAndTheGrenadinesSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "VC"
    , unofficialNames = [ "Saint Vincent and the Grenadines", "Saint Vincent und die Grenadinen", "Saint-Vincent et les Grenadines", "San Vicente y Granadinas", "セントビンセントおよびグレナディーン諸島", "Saint Vincent en de Grenadines", "St. Vincent Grenadines", "St Vincent Grenadines" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Samoa
-}
samoa : Country
samoa =
    { addressFormat = ""
    , alpha2 = "WS"
    , alpha3 = "WSM"
    , continent = Continent.Australia
    , countryCode = "685"
    , currencyCode = "WST"
    , emoji = "🇼🇸"
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
    , subdivisions = samoaSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "WS"
    , unofficialNames = [ "Samoa", "サモア" ]
    , worldRegion = WorldRegion.Apac
    }


{-| San Marino
-}
sanMarino : Country
sanMarino =
    { addressFormat = ""
    , alpha2 = "SM"
    , alpha3 = "SMR"
    , continent = Continent.Europe
    , countryCode = "378"
    , currencyCode = "EUR"
    , emoji = "🇸🇲"
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
    , subdivisions = sanMarinoSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "SM"
    , unofficialNames = [ "San Marino", "Saint-Marin", "サンマリノ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Sao Tome and Principe
-}
saoTomeAndPrincipe : Country
saoTomeAndPrincipe =
    { addressFormat = ""
    , alpha2 = "ST"
    , alpha3 = "STP"
    , continent = Continent.Africa
    , countryCode = "239"
    , currencyCode = "STD"
    , emoji = "🇸🇹"
    , gec = "TP"
    , internationalPrefix = "00"
    , ioc = "STP"
    , languagesOfficial = [ "pt" ]
    , languagesSpoken = [ "pt" ]
    , localNames = [ "São Tomé e Príncipe" ]
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
    , subdivisions = saoTomeAndPrincipeSubdivisions
    , subregion = Subregion.MiddleAfrica
    , unLocode = "ST"
    , unofficialNames = [ "São Tomé and Príncipe", "São Tomé und Príncipe", "São Tomé et Príncipe", "Santo Tomé y Príncipe", "サントメ・プリンシペ", "Sao Tomé en Principe" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Saudi Arabia
-}
saudiArabia : Country
saudiArabia =
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
    , emoji = "🇸🇦"
    , gec = "SA"
    , internationalPrefix = "00"
    , ioc = "KSA"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "السعودية" ]
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
    , subdivisions = saudiArabiaSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "SA"
    , unofficialNames = [ "Saudi Arabia", "Kingdom of Saudi Arabia", "السعودية", "Saudi-Arabien", "Arabie Saoudite", "Arabia Saudí", "サウジアラビア", "Saoedi-Arabië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Senegal
-}
senegal : Country
senegal =
    { addressFormat = ""
    , alpha2 = "SN"
    , alpha3 = "SEN"
    , continent = Continent.Africa
    , countryCode = "221"
    , currencyCode = "XOF"
    , emoji = "🇸🇳"
    , gec = "SG"
    , internationalPrefix = "00"
    , ioc = "SEN"
    , languagesOfficial = [ "fr" ]
    , languagesSpoken = [ "fr" ]
    , localNames = [ "Sénégal" ]
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
    , subdivisions = senegalSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "SN"
    , unofficialNames = [ "Senegal", "Sénégal", "セネガル" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Serbia
-}
serbia : Country
serbia =
    { addressFormat = ""
    , alpha2 = "RS"
    , alpha3 = "SRB"
    , continent = Continent.Europe
    , countryCode = "381"
    , currencyCode = "RSD"
    , emoji = "🇷🇸"
    , gec = "RI"
    , internationalPrefix = "99"
    , ioc = "SRB"
    , languagesOfficial = [ "sr" ]
    , languagesSpoken = [ "sr" ]
    , localNames = [ "Србија" ]
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
    , subdivisions = serbiaSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "RS"
    , unofficialNames = [ "Serbia", "Serbien", "Serbie", "セルビア", "Servië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Seychelles
-}
seychelles : Country
seychelles =
    { addressFormat = ""
    , alpha2 = "SC"
    , alpha3 = "SYC"
    , continent = Continent.Africa
    , countryCode = "248"
    , currencyCode = "SCR"
    , emoji = "🇸🇨"
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
    , subdivisions = seychellesSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "SC"
    , unofficialNames = [ "Seychelles", "Seychellen", "セーシェル" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Sierra Leone
-}
sierraLeone : Country
sierraLeone =
    { addressFormat = ""
    , alpha2 = "SL"
    , alpha3 = "SLE"
    , continent = Continent.Africa
    , countryCode = "232"
    , currencyCode = "SLL"
    , emoji = "🇸🇱"
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
    , subdivisions = sierraLeoneSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "SL"
    , unofficialNames = [ "Sierra Leone", "シエラレオネ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Singapore
-}
singapore : Country
singapore =
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
    , emoji = "🇸🇬"
    , gec = "SN"
    , internationalPrefix = "001"
    , ioc = "SGP"
    , languagesOfficial = [ "en", "ms", "ta" ]
    , languagesSpoken = [ "en", "ms", "ta" ]
    , localNames = [ "Singapore", "Singapura", "சிங்கப்பூர்" ]
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
    , subdivisions = singaporeSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "SG"
    , unofficialNames = [ "Singapore", "Singapur", "Singapour", "シンガポール" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Sint Maarten (Dutch part)
-}
sintMaartenDutchPart : Country
sintMaartenDutchPart =
    { addressFormat = ""
    , alpha2 = "SX"
    , alpha3 = "SXM"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "ANG"
    , emoji = "🇸🇽"
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
    , subdivisions = sintMaartenDutchPartSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "SX"
    , unofficialNames = [ "Sint Maarten", "セント・マーチン島" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Slovakia
-}
slovakia : Country
slovakia =
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
    , emoji = "🇸🇰"
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
    , subdivisions = slovakiaSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "SK"
    , unofficialNames = [ "Slovakia", "Slowakei", "Slovaquie", "República Eslovaca", "スロバキア", "Slowakije" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Slovenia
-}
slovenia : Country
slovenia =
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
    , emoji = "🇸🇮"
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
    , subdivisions = sloveniaSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "SI"
    , unofficialNames = [ "Slovenia", "Slowenien", "Slovénie", "Eslovenia", "スロベニア", "Slovenië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Solomon Islands
-}
solomonIslands : Country
solomonIslands =
    { addressFormat = ""
    , alpha2 = "SB"
    , alpha3 = "SLB"
    , continent = Continent.Australia
    , countryCode = "677"
    , currencyCode = "SBD"
    , emoji = "🇸🇧"
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
    , subdivisions = solomonIslandsSubdivisions
    , subregion = Subregion.Melanesia
    , unLocode = "SB"
    , unofficialNames = [ "Solomon Islands", "Salomonen", "Îles Salomon", "Islas Salomón", "ソロモン諸島", "Salomonseilanden" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Somalia
-}
somalia : Country
somalia =
    { addressFormat = ""
    , alpha2 = "SO"
    , alpha3 = "SOM"
    , continent = Continent.Africa
    , countryCode = "252"
    , currencyCode = "SOS"
    , emoji = "🇸🇴"
    , gec = "SO"
    , internationalPrefix = "00"
    , ioc = "SOM"
    , languagesOfficial = [ "so", "ar" ]
    , languagesSpoken = [ "so", "ar" ]
    , localNames = [ "Soomaaliya", "الصومال\u{200E}" ]
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
    , subdivisions = somaliaSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "SO"
    , unofficialNames = [ "Somalia", "الصومال", "ソマリア", "Somalië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| South Africa
-}
southAfrica : Country
southAfrica =
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
    , emoji = "🇿🇦"
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
    , subdivisions = southAfricaSubdivisions
    , subregion = Subregion.SouthernAfrica
    , unLocode = "ZA"
    , unofficialNames = [ "South Africa", "Republik Südafrika", "Afrique du Sud", "República de Sudáfrica", "南アフリカ", "Zuid-Afrika" ]
    , worldRegion = WorldRegion.Emea
    }


{-| South Georgia and the South Sandwich Islands
-}
southGeorgiaAndTheSouthSandwichIslands : Country
southGeorgiaAndTheSouthSandwichIslands =
    { addressFormat = ""
    , alpha2 = "GS"
    , alpha3 = "SGS"
    , continent = Continent.Antarctica
    , countryCode = "500"
    , currencyCode = "GBP"
    , emoji = "🇬🇸"
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
    , unofficialNames = [ "South Georgia", "South Georgia and the South Sandwich Islands", "Südgeorgien und die Südlichen Sandwichinseln", "サウスジョージア・サウスサンドウィッチ諸島", "Zuid-Georgia en Zuidelijke Sandwicheilanden" ]
    , worldRegion = WorldRegion.Amer
    }


{-| South Sudan
-}
southSudan : Country
southSudan =
    { addressFormat = ""
    , alpha2 = "SS"
    , alpha3 = "SSD"
    , continent = Continent.Africa
    , countryCode = "211"
    , currencyCode = "SSP"
    , emoji = "🇸🇸"
    , gec = "OD"
    , internationalPrefix = "0"
    , ioc = ""
    , languagesOfficial = [ "ar", "en" ]
    , languagesSpoken = [ "ar", "en" ]
    , localNames = [ "جنوب السّودان", "South Sudan" ]
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
    , subdivisions = southSudanSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "SS"
    , unofficialNames = [ "South Sudan", "Südsudan", "南スーダン", "Zuid-Soedan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Spain
-}
spain : Country
spain =
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
    , emoji = "🇪🇸"
    , gec = "SP"
    , internationalPrefix = "00"
    , ioc = "ESP"
    , languagesOfficial = [ "es" ]
    , languagesSpoken = [ "es" ]
    , localNames = [ "España" ]
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
    , subdivisions = spainSubdivisions
    , subregion = Subregion.SouthernEurope
    , unLocode = "ES"
    , unofficialNames = [ "Spain", "Spanien", "Espagne", "España", "スペイン", "Spanje" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Sri Lanka
-}
sriLanka : Country
sriLanka =
    { addressFormat = ""
    , alpha2 = "LK"
    , alpha3 = "LKA"
    , continent = Continent.Asia
    , countryCode = "94"
    , currencyCode = "LKR"
    , emoji = "🇱🇰"
    , gec = "CE"
    , internationalPrefix = "00"
    , ioc = "SRI"
    , languagesOfficial = [ "si", "ta" ]
    , languagesSpoken = [ "si", "ta" ]
    , localNames = [ "ශ්\u{200D}රී ලංකාව", "இலங்கை" ]
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
    , subdivisions = sriLankaSubdivisions
    , subregion = Subregion.SouthernAsia
    , unLocode = "LK"
    , unofficialNames = [ "Sri Lanka", "スリランカ" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Sudan
-}
sudan : Country
sudan =
    { addressFormat = ""
    , alpha2 = "SD"
    , alpha3 = "SDN"
    , continent = Continent.Africa
    , countryCode = "249"
    , currencyCode = "SDG"
    , emoji = "🇸🇩"
    , gec = "SU"
    , internationalPrefix = "00"
    , ioc = "SUD"
    , languagesOfficial = [ "ar", "en" ]
    , languagesSpoken = [ "ar", "en" ]
    , localNames = [ "السودان", "Sudan" ]
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
    , subdivisions = sudanSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "SD"
    , unofficialNames = [ "Sudan", "السودان", "Soudan", "Sudán", "スーダン", "Soedan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Suriname
-}
suriname : Country
suriname =
    { addressFormat = ""
    , alpha2 = "SR"
    , alpha3 = "SUR"
    , continent = Continent.SouthAmerica
    , countryCode = "597"
    , currencyCode = "SRD"
    , emoji = "🇸🇷"
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
    , subdivisions = surinameSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "SR"
    , unofficialNames = [ "Suriname", "Surinam", "スリナム" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Svalbard and Jan Mayen
-}
svalbardAndJanMayen : Country
svalbardAndJanMayen =
    { addressFormat = ""
    , alpha2 = "SJ"
    , alpha3 = "SJM"
    , continent = Continent.Europe
    , countryCode = "47"
    , currencyCode = "NOK"
    , emoji = "🇸🇯"
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
    , subdivisions = svalbardAndJanMayenSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "SJ"
    , unofficialNames = [ "Svalbard and Jan Mayen", "Svalbard und Jan Mayen", "Îles Svalbard et Jan Mayen", "Islas Svalbard y Jan Mayen", "スヴァールバル諸島およびヤンマイエン島", "Svalbard en Jan Mayen" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Sweden
-}
sweden : Country
sweden =
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
    , emoji = "🇸🇪"
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
    , subdivisions = swedenSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "SE"
    , unofficialNames = [ "Sweden", "Schweden", "Suède", "Suecia", "スウェーデン", "Zweden" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Switzerland
-}
switzerland : Country
switzerland =
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
    , emoji = "🇨🇭"
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
    , subdivisions = switzerlandSubdivisions
    , subregion = Subregion.WesternEurope
    , unLocode = "CH"
    , unofficialNames = [ "Switzerland", "Schweiz", "Suisse", "Suiza", "スイス", "Zwitserland" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Syrian Arab Republic
-}
syrianArabRepublic : Country
syrianArabRepublic =
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
    , emoji = "🇸🇾"
    , gec = "SY"
    , internationalPrefix = "00"
    , ioc = "SYR"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "سوريا" ]
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
    , subdivisions = syrianArabRepublicSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "SY"
    , unofficialNames = [ "Syria", "سوريا", "سورية", "Syrien", "Syrie", "Siria", "シリア・アラブ共和国", "Syrië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Taiwan, Province of China
-}
taiwanProvinceOfChina : Country
taiwanProvinceOfChina =
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
    , emoji = "🇹🇼"
    , gec = "TW"
    , internationalPrefix = "002"
    , ioc = "TPE"
    , languagesOfficial = [ "zh" ]
    , languagesSpoken = [ "zh" ]
    , localNames = [ "台湾" ]
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
    , subdivisions = taiwanProvinceOfChinaSubdivisions
    , subregion = Subregion.EasternAsia
    , unLocode = "TW"
    , unofficialNames = [ "Taiwan", "Taiwán", "台湾" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Tajikistan
-}
tajikistan : Country
tajikistan =
    { addressFormat = ""
    , alpha2 = "TJ"
    , alpha3 = "TJK"
    , continent = Continent.Asia
    , countryCode = "992"
    , currencyCode = "TJS"
    , emoji = "🇹🇯"
    , gec = "TI"
    , internationalPrefix = "810"
    , ioc = "TJK"
    , languagesOfficial = [ "tg", "ru" ]
    , languagesSpoken = [ "tg", "ru" ]
    , localNames = [ "Тоҷикистон", "Таджикистан" ]
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
    , subdivisions = tajikistanSubdivisions
    , subregion = Subregion.CentralAsia
    , unLocode = "TJ"
    , unofficialNames = [ "Tajikistan", "Tadschikistan", "Tayikistán", "タジキスタン", "Tadzjikistan", "Tajikstan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Tanzania, United Republic of
-}
tanzaniaUnitedRepublicOf : Country
tanzaniaUnitedRepublicOf =
    { addressFormat = ""
    , alpha2 = "TZ"
    , alpha3 = "TZA"
    , continent = Continent.Africa
    , countryCode = "255"
    , currencyCode = "TZS"
    , emoji = "🇹🇿"
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
    , subdivisions = tanzaniaUnitedRepublicOfSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "TZ"
    , unofficialNames = [ "Tanzania", "Tansania", "Tanzanie", "タンザニア", "Tanzania United Republic" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Thailand
-}
thailand : Country
thailand =
    { addressFormat = ""
    , alpha2 = "TH"
    , alpha3 = "THA"
    , continent = Continent.Asia
    , countryCode = "66"
    , currencyCode = "THB"
    , emoji = "🇹🇭"
    , gec = "TH"
    , internationalPrefix = "001"
    , ioc = "THA"
    , languagesOfficial = [ "th" ]
    , languagesSpoken = [ "th" ]
    , localNames = [ "ไทย" ]
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
    , subdivisions = thailandSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "TH"
    , unofficialNames = [ "Thailand", "Thaïlande", "Tailandia", "タイ" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Timor-Leste
-}
timorLeste : Country
timorLeste =
    { addressFormat = ""
    , alpha2 = "TL"
    , alpha3 = "TLS"
    , continent = Continent.Asia
    , countryCode = "670"
    , currencyCode = "IDR"
    , emoji = "🇹🇱"
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
    , subdivisions = timorLesteSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "TL"
    , unofficialNames = [ "East Timor", "Timor-Leste", "Timor oriental", "Timor Oriental", "東ティモール", "Oost-Timor" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Togo
-}
togo : Country
togo =
    { addressFormat = ""
    , alpha2 = "TG"
    , alpha3 = "TGO"
    , continent = Continent.Africa
    , countryCode = "228"
    , currencyCode = "XOF"
    , emoji = "🇹🇬"
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
    , subdivisions = togoSubdivisions
    , subregion = Subregion.WesternAfrica
    , unLocode = "TG"
    , unofficialNames = [ "Togo", "トーゴ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Tokelau
-}
tokelau : Country
tokelau =
    { addressFormat = ""
    , alpha2 = "TK"
    , alpha3 = "TKL"
    , continent = Continent.Australia
    , countryCode = "690"
    , currencyCode = "NZD"
    , emoji = "🇹🇰"
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
    , subdivisions = tokelauSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "TK"
    , unofficialNames = [ "Tokelau", "Îles Tokelau", "Islas Tokelau", "トケラウ" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Tonga
-}
tonga : Country
tonga =
    { addressFormat = ""
    , alpha2 = "TO"
    , alpha3 = "TON"
    , continent = Continent.Australia
    , countryCode = "676"
    , currencyCode = "TOP"
    , emoji = "🇹🇴"
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
    , subdivisions = tongaSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "TO"
    , unofficialNames = [ "Tonga", "トンガ" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Trinidad and Tobago
-}
trinidadAndTobago : Country
trinidadAndTobago =
    { addressFormat = ""
    , alpha2 = "TT"
    , alpha3 = "TTO"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "TTD"
    , emoji = "🇹🇹"
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
    , subdivisions = trinidadAndTobagoSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "TT"
    , unofficialNames = [ "Trinidad and Tobago", "Trinidad und Tobago", "Trinité et Tobago", "Trinidad y Tobago", "トリニダード・トバゴ", "Trinidad en Tobago" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Tunisia
-}
tunisia : Country
tunisia =
    { addressFormat = ""
    , alpha2 = "TN"
    , alpha3 = "TUN"
    , continent = Continent.Africa
    , countryCode = "216"
    , currencyCode = "TND"
    , emoji = "🇹🇳"
    , gec = "TS"
    , internationalPrefix = "00"
    , ioc = "TUN"
    , languagesOfficial = [ "ar", "fr" ]
    , languagesSpoken = [ "ar", "fr" ]
    , localNames = [ "تونس", "Tunisie" ]
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
    , subdivisions = tunisiaSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "TN"
    , unofficialNames = [ "Tunisia", "تونس", "Tunesien", "Tunisie", "Túnez", "チュニジア", "Tunesië" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Turkey
-}
turkey : Country
turkey =
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
    , emoji = "🇹🇷"
    , gec = "TU"
    , internationalPrefix = "00"
    , ioc = "TUR"
    , languagesOfficial = [ "tr" ]
    , languagesSpoken = [ "tr" ]
    , localNames = [ "Türkiye" ]
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
    , subdivisions = turkeySubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "TR"
    , unofficialNames = [ "Turkey", "Türkei", "Turquie", "Turquía", "トルコ", "Turkije" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Turkmenistan
-}
turkmenistan : Country
turkmenistan =
    { addressFormat = ""
    , alpha2 = "TM"
    , alpha3 = "TKM"
    , continent = Continent.Asia
    , countryCode = "993"
    , currencyCode = "TMT"
    , emoji = "🇹🇲"
    , gec = "TX"
    , internationalPrefix = "810"
    , ioc = "TKM"
    , languagesOfficial = [ "tk", "ru" ]
    , languagesSpoken = [ "tk", "ru" ]
    , localNames = [ "Türkmenistan", "Туркменистан" ]
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
    , subdivisions = turkmenistanSubdivisions
    , subregion = Subregion.CentralAsia
    , unLocode = "TM"
    , unofficialNames = [ "Turkmenistan", "Turkménistan", "Turkmenistán", "トルクメニスタン" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Turks and Caicos Islands
-}
turksAndCaicosIslands : Country
turksAndCaicosIslands =
    { addressFormat = ""
    , alpha2 = "TC"
    , alpha3 = "TCA"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "🇹🇨"
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
    , unofficialNames = [ "Turks and Caicos Islands", "Turks- und Caicosinseln", "Îles Turks et Caïcos", "Islas Turks y Caicos", "タークス・カイコス諸島", "Turks- en Caicoseilanden", "Turks and Caicos" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Tuvalu
-}
tuvalu : Country
tuvalu =
    { addressFormat = ""
    , alpha2 = "TV"
    , alpha3 = "TUV"
    , continent = Continent.Australia
    , countryCode = "688"
    , currencyCode = "AUD"
    , emoji = "🇹🇻"
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
    , subdivisions = tuvaluSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "TV"
    , unofficialNames = [ "Tuvalu", "ツバル" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Uganda
-}
uganda : Country
uganda =
    { addressFormat = ""
    , alpha2 = "UG"
    , alpha3 = "UGA"
    , continent = Continent.Africa
    , countryCode = "256"
    , currencyCode = "UGX"
    , emoji = "🇺🇬"
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
    , subdivisions = ugandaSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "UG"
    , unofficialNames = [ "Uganda", "ウガンダ", "Oeganda" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Ukraine
-}
ukraine : Country
ukraine =
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
    , emoji = "🇺🇦"
    , gec = "UP"
    , internationalPrefix = "810"
    , ioc = "UKR"
    , languagesOfficial = [ "uk" ]
    , languagesSpoken = [ "uk" ]
    , localNames = [ "Україна" ]
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
    , subdivisions = ukraineSubdivisions
    , subregion = Subregion.EasternEurope
    , unLocode = "UA"
    , unofficialNames = [ "Ukraine", "Ucrania", "ウクライナ", "Oekraïne", "Украина", "Україна", "Украіна" ]
    , worldRegion = WorldRegion.Emea
    }


{-| United Arab Emirates
-}
unitedArabEmirates : Country
unitedArabEmirates =
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
    , emoji = "🇦🇪"
    , gec = "AE"
    , internationalPrefix = "00"
    , ioc = "UAE"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "الإمارات العربيّة المتّحدة" ]
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
    , subdivisions = unitedArabEmiratesSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "AE"
    , unofficialNames = [ "United Arab Emirates", "الإمارات العربية المتحدة", "Vereinigte Arabische Emirate", "Émirats Arabes Unis", "Emiratos Árabes Unidos", "アラブ首長国連邦", "Verenigde Arabische Emiraten" ]
    , worldRegion = WorldRegion.Emea
    }


{-| United Kingdom of Great Britain and Northern Ireland
-}
unitedKingdomOfGreatBritainAndNorthernIreland : Country
unitedKingdomOfGreatBritainAndNorthernIreland =
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
    , emoji = "🇬🇧"
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
    , subdivisions = unitedKingdomOfGreatBritainAndNorthernIrelandSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "GB"
    , unofficialNames = [ "United Kingdom", "The United Kingdom", "Vereinigtes Königreich", "Royaume-Uni", "Reino Unido", "イギリス", "Verenigd Koninkrijk", "Great Britain (UK)", "UK", "Великобритания" ]
    , worldRegion = WorldRegion.Emea
    }


{-| United States Minor Outlying Islands
-}
unitedStatesMinorOutlyingIslands : Country
unitedStatesMinorOutlyingIslands =
    { addressFormat = ""
    , alpha2 = "UM"
    , alpha3 = "UMI"
    , continent = Continent.Australia
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "🇺🇲"
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
    , subdivisions = unitedStatesMinorOutlyingIslandsSubdivisions
    , subregion = Subregion.NorthernAmerica
    , unLocode = "UM"
    , unofficialNames = [ "United States Minor Outlying Islands", "US-Amerikanische Hoheitsgebiete", "Dépendances américaines", "Islas menores de Estados Unidos", "合衆国領有小離島", "Kleine afgelegen eilanden van de Verenigde Staten" ]
    , worldRegion = WorldRegion.Amer
    }


{-| United States of America
-}
unitedStatesOfAmerica : Country
unitedStatesOfAmerica =
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
    , emoji = "🇺🇸"
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
    , subdivisions = unitedStatesOfAmericaSubdivisions
    , subregion = Subregion.NorthernAmerica
    , unLocode = "US"
    , unofficialNames = [ "United States", "Murica", "Vereinigte Staaten von Amerika", "États-Unis", "Estados Unidos", "アメリカ合衆国", "Verenigde Staten" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Uruguay
-}
uruguay : Country
uruguay =
    { addressFormat = ""
    , alpha2 = "UY"
    , alpha3 = "URY"
    , continent = Continent.SouthAmerica
    , countryCode = "598"
    , currencyCode = "UYU"
    , emoji = "🇺🇾"
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
    , subdivisions = uruguaySubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "UY"
    , unofficialNames = [ "Uruguay", "ウルグアイ" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Uzbekistan
-}
uzbekistan : Country
uzbekistan =
    { addressFormat = ""
    , alpha2 = "UZ"
    , alpha3 = "UZB"
    , continent = Continent.Asia
    , countryCode = "998"
    , currencyCode = "UZS"
    , emoji = "🇺🇿"
    , gec = "UZ"
    , internationalPrefix = "810"
    , ioc = "UZB"
    , languagesOfficial = [ "uz", "ru" ]
    , languagesSpoken = [ "uz", "ru" ]
    , localNames = [ "Oʻzbekiston", "Узбекистан" ]
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
    , subdivisions = uzbekistanSubdivisions
    , subregion = Subregion.CentralAsia
    , unLocode = "UZ"
    , unofficialNames = [ "Uzbekistan", "Usbekistan", "Ouzbékistan", "Uzbekistán", "ウズベキスタン", "Oezbekistan" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Vanuatu
-}
vanuatu : Country
vanuatu =
    { addressFormat = ""
    , alpha2 = "VU"
    , alpha3 = "VUT"
    , continent = Continent.Australia
    , countryCode = "678"
    , currencyCode = "VUV"
    , emoji = "🇻🇺"
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
    , subdivisions = vanuatuSubdivisions
    , subregion = Subregion.Melanesia
    , unLocode = "VU"
    , unofficialNames = [ "Vanuatu", "バヌアツ" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Venezuela (Bolivarian Republic of)
-}
venezuelaBolivarianRepublicOf : Country
venezuelaBolivarianRepublicOf =
    { addressFormat = ""
    , alpha2 = "VE"
    , alpha3 = "VEN"
    , continent = Continent.SouthAmerica
    , countryCode = "58"
    , currencyCode = "VES"
    , emoji = "🇻🇪"
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
    , subdivisions = venezuelaBolivarianRepublicOfSubdivisions
    , subregion = Subregion.SouthAmerica
    , unLocode = "VE"
    , unofficialNames = [ "Venezuela", "ベネズエラ・ボリバル共和国" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Viet Nam
-}
vietNam : Country
vietNam =
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
    , emoji = "🇻🇳"
    , gec = "VM"
    , internationalPrefix = "00"
    , ioc = "VIE"
    , languagesOfficial = [ "vi" ]
    , languagesSpoken = [ "vi" ]
    , localNames = [ "Việt Nam" ]
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
    , subdivisions = vietNamSubdivisions
    , subregion = Subregion.SouthEasternAsia
    , unLocode = "VN"
    , unofficialNames = [ "Vietnam", "ベトナム", "Viet Nam" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Virgin Islands (British)
-}
virginIslandsBritish : Country
virginIslandsBritish =
    { addressFormat = ""
    , alpha2 = "VG"
    , alpha3 = "VGB"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "🇻🇬"
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
    , unofficialNames = [ "British Virgin Islands", "Britische Jungferninseln", "Îles Vierges britanniques", "Islas Vírgenes del Reino Unido", "イギリス領ヴァージン諸島", "Britse Maagdeneilanden", "Virgin Islands (British)" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Virgin Islands (U.S.)
-}
virginIslandsUS : Country
virginIslandsUS =
    { addressFormat = ""
    , alpha2 = "VI"
    , alpha3 = "VIR"
    , continent = Continent.NorthAmerica
    , countryCode = "1"
    , currencyCode = "USD"
    , emoji = "🇻🇮"
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
    , subdivisions = virginIslandsUSSubdivisions
    , subregion = Subregion.Caribbean
    , unLocode = "VI"
    , unofficialNames = [ "Virgin Islands of the United States", "Amerikanische Jungferninseln", "Îles Vierges américaines", "Islas Vírgenes de los Estados Unidos", "アメリカ領ヴァージン諸島", "Amerikaanse Maagdeneilanden", "Virgin Islands (U.S.)", "United States Virgin Islands" ]
    , worldRegion = WorldRegion.Amer
    }


{-| Wallis and Futuna
-}
wallisAndFutuna : Country
wallisAndFutuna =
    { addressFormat = ""
    , alpha2 = "WF"
    , alpha3 = "WLF"
    , continent = Continent.Australia
    , countryCode = "681"
    , currencyCode = "XPF"
    , emoji = "🇼🇫"
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
    , subdivisions = wallisAndFutunaSubdivisions
    , subregion = Subregion.Polynesia
    , unLocode = "WF"
    , unofficialNames = [ "Wallis and Futuna", "Wallis und Futuna", "Wallis et Futuna", "Wallis y Futuna", "ウォリス・フツナ", "Wallis en Futuna" ]
    , worldRegion = WorldRegion.Apac
    }


{-| Western Sahara
-}
westernSahara : Country
westernSahara =
    { addressFormat = ""
    , alpha2 = "EH"
    , alpha3 = "ESH"
    , continent = Continent.Africa
    , countryCode = "212"
    , currencyCode = "MAD"
    , emoji = "🇪🇭"
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
    , subdivisions = westernSaharaSubdivisions
    , subregion = Subregion.NorthernAfrica
    , unLocode = "EH"
    , unofficialNames = [ "Western Sahara", "الصحراء الغربية", "Westsahara", "Sahara Occidental", "西サハラ", "Westelijke Sahara" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Yemen
-}
yemen : Country
yemen =
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
    , emoji = "🇾🇪"
    , gec = "YM"
    , internationalPrefix = "00"
    , ioc = "YEM"
    , languagesOfficial = [ "ar" ]
    , languagesSpoken = [ "ar" ]
    , localNames = [ "اليمن" ]
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
    , subdivisions = yemenSubdivisions
    , subregion = Subregion.WesternAsia
    , unLocode = "YE"
    , unofficialNames = [ "Yemen", "اليمن", "Jemen", "Yémen", "イエメン" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Zambia
-}
zambia : Country
zambia =
    { addressFormat = ""
    , alpha2 = "ZM"
    , alpha3 = "ZMB"
    , continent = Continent.Africa
    , countryCode = "260"
    , currencyCode = "ZMW"
    , emoji = "🇿🇲"
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
    , subdivisions = zambiaSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "ZM"
    , unofficialNames = [ "Zambia", "Sambia", "Zambie", "ザンビア" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Zimbabwe
-}
zimbabwe : Country
zimbabwe =
    { addressFormat = ""
    , alpha2 = "ZW"
    , alpha3 = "ZWE"
    , continent = Continent.Africa
    , countryCode = "263"
    , currencyCode = "USD"
    , emoji = "🇿🇼"
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
    , subdivisions = zimbabweSubdivisions
    , subregion = Subregion.EasternAfrica
    , unLocode = "ZW"
    , unofficialNames = [ "Zimbabwe", "Simbabwe", "Zimbabue", "ジンバブエ" ]
    , worldRegion = WorldRegion.Emea
    }


{-| eSwatini
-}
eswatini : Country
eswatini =
    { addressFormat = ""
    , alpha2 = "SZ"
    , alpha3 = "SWZ"
    , continent = Continent.Africa
    , countryCode = "268"
    , currencyCode = "SZL"
    , emoji = "🇸🇿"
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
    , subdivisions = eswatiniSubdivisions
    , subregion = Subregion.SouthernAfrica
    , unLocode = "SZ"
    , unofficialNames = [ "Swaziland", "Swasiland", "Suazilandia", "スワジランド" ]
    , worldRegion = WorldRegion.Emea
    }


{-| Åland Islands
-}
alandIslands : Country
alandIslands =
    { addressFormat = ""
    , alpha2 = "AX"
    , alpha3 = "ALA"
    , continent = Continent.Europe
    , countryCode = "358"
    , currencyCode = "EUR"
    , emoji = "🇦🇽"
    , gec = ""
    , internationalPrefix = ""
    , ioc = ""
    , languagesOfficial = [ "sv" ]
    , languagesSpoken = [ "sv" ]
    , localNames = [ "Åland" ]
    , name = "Åland Islands"
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
    , subdivisions = alandIslandsSubdivisions
    , subregion = Subregion.NorthernEurope
    , unLocode = "AX"
    , unofficialNames = [ "Åland Islands", "Åland", "オーランド諸島", "Ålandeilanden" ]
    , worldRegion = WorldRegion.Emea
    }


{-| -}
andorraSubdivisions : List Subdivision
andorraSubdivisions =
    [ { name = "Canillo"
      , code = ""
      , unofficialNames = [ "Canillo" ]
      }
    , { name = "Encamp"
      , code = ""
      , unofficialNames = [ "Encamp" ]
      }
    , { name = "La Massana"
      , code = ""
      , unofficialNames = [ "La Massana" ]
      }
    , { name = "Ordino"
      , code = ""
      , unofficialNames = [ "Ordino" ]
      }
    , { name = "Sant Julià de Lòria"
      , code = ""
      , unofficialNames = [ "Saint Julia de Loria" ]
      }
    , { name = "Andorra la Vella"
      , code = ""
      , unofficialNames = [ "Andorra la Vieja", "Andorre-la-Vieille" ]
      }
    , { name = "Escaldes-Engordany"
      , code = ""
      , unofficialNames = [ "Les Escaldes" ]
      }
    ]


{-| -}
unitedArabEmiratesSubdivisions : List Subdivision
unitedArabEmiratesSubdivisions =
    [ { name = "'Ajmān"
      , code = ""
      , unofficialNames = [ "-إمارة عجمانّ - Ujman" ]
      }
    , { name = "Abū Z̧aby [Abu Dhabi]"
      , code = ""
      , unofficialNames = [ "أبو ظبي", "Abu Zabi", "Abu Zaby", "Abū Z̨abī", "Abu Dhabi", "Abu Dhabi" ]
      }
    , { name = "Dubayy"
      , code = ""
      , unofficialNames = [ "دبي", "Dubai" ]
      }
    , { name = "Al Fujayrah"
      , code = ""
      , unofficialNames = [ "الفجيرة", "Al Fujayrah", "Fujairah" ]
      }
    , { name = "Ra's al Khaymah"
      , code = ""
      , unofficialNames = [ "إمارة رأس الخيمة", "Ras al-Khaimah" ]
      }
    , { name = "Ash Shariqah [Sharjah]"
      , code = ""
      , unofficialNames = [ "إمارة الشارقةّ", "Ash Shariqah" ]
      }
    , { name = "Umm al Qaywayn"
      , code = ""
      , unofficialNames = [ "أمّ القيوين", "Umm al-Quwain" ]
      }
    ]


{-| -}
afghanistanSubdivisions : List Subdivision
afghanistanSubdivisions =
    [ { name = "Balkh"
      , code = ""
      , unofficialNames = [ "Balkh" ]
      }
    , { name = "Bamian"
      , code = ""
      , unofficialNames = [ "Bamian", "Bamiyan", "Bāmīān" ]
      }
    , { name = "Badghis"
      , code = ""
      , unofficialNames = [ "Badghis", "Badgis", "Bādghīs" ]
      }
    , { name = "Badakhshan"
      , code = ""
      , unofficialNames = [ "Badaẖšan" ]
      }
    , { name = "Baghlan"
      , code = ""
      , unofficialNames = [ "Baghlan", "Baghlān", "Baglan" ]
      }
    , { name = "Daykondi"
      , code = ""
      , unofficialNames = [ "Daikondi" ]
      }
    , { name = "Farah"
      , code = ""
      , unofficialNames = [ "Fahrah" ]
      }
    , { name = "Faryab"
      , code = ""
      , unofficialNames = [ "Fariab" ]
      }
    , { name = "Ghazni"
      , code = ""
      , unofficialNames = [ "Gazni", "Ghazni" ]
      }
    , { name = "Ghowr"
      , code = ""
      , unofficialNames = [ "Ghawr", "Ghor", "Ghowr", "Gōr" ]
      }
    , { name = "Helmand"
      , code = ""
      , unofficialNames = [ "Helmand", "Hilmend" ]
      }
    , { name = "Herat"
      , code = ""
      , unofficialNames = [ "Herat" ]
      }
    , { name = "Jowzjan"
      , code = ""
      , unofficialNames = [ "Jawzjan", "Jowzjan", "Jowzjān", "Jozjan", "Juzjan" ]
      }
    , { name = "Kabul [Kabol]"
      , code = ""
      , unofficialNames = [ "Kabol", "Kābol", "Kābul", "Kabul" ]
      }
    , { name = "Kandahar"
      , code = ""
      , unofficialNames = [ "Kandahar" ]
      }
    , { name = "Kapisa"
      , code = ""
      , unofficialNames = [ "Kapesa", "Kapisa", "Kapissa" ]
      }
    , { name = "Kondoz [Kunduz]"
      , code = ""
      , unofficialNames = [ "Kondoz", "Kondūz", "Kūnduz", "Qondūz" ]
      }
    , { name = "Khowst"
      , code = ""
      , unofficialNames = [ "H̱ōst", "Khawst", "Khost", "Matun", "Matūn", "H̱awst" ]
      }
    , { name = "Konar [Kunar]"
      , code = ""
      , unofficialNames = [ "Konar", "Konarhā" ]
      }
    , { name = "Laghman"
      , code = ""
      , unofficialNames = [ "Laghman", "Laghmān", "Lagman" ]
      }
    , { name = "Lowgar"
      , code = ""
      , unofficialNames = [ "Lawgar", "Logar", "Loghar", "Lowgar", "Lowghar" ]
      }
    , { name = "Nangrahar [Nangarhar]"
      , code = ""
      , unofficialNames = [ "Nangarhar", "Ningarhar" ]
      }
    , { name = "Nimruz"
      , code = ""
      , unofficialNames = [ "Chakhānsur", "Neemroze", "Nimroz", "Nimroze" ]
      }
    , { name = "Nurestan"
      , code = ""
      , unofficialNames = [ "Nooristan", "Nouristan", "Nurestan" ]
      }
    , { name = "Oruzgan [Uruzgan]"
      , code = ""
      , unofficialNames = [ "Oruzgan", "Oruzghan", "Orūzghān", "Uruzgan", "Uruzghan", "Urūzghān" ]
      }
    , { name = "Panjshir"
      , code = ""
      , unofficialNames = [ "Panjshir" ]
      }
    , { name = "Parwan"
      , code = ""
      , unofficialNames = [ "Parvan", "Parvān", "Parwan" ]
      }
    , { name = "Paktia"
      , code = ""
      , unofficialNames = [ "Paktia", "Paktiya", "Paktīā" ]
      }
    , { name = "Paktika"
      , code = ""
      , unofficialNames = [ "Paktika" ]
      }
    , { name = "Samangan"
      , code = ""
      , unofficialNames = [ "Samangan" ]
      }
    , { name = "Sar-e Pol"
      , code = ""
      , unofficialNames = [ "Sar-e Pol", "Sar-i Pol", "Sari Pol" ]
      }
    , { name = "Takhar"
      , code = ""
      , unofficialNames = [ "Tahar", "Takhar", "Takhār" ]
      }
    , { name = "Wardak [Wardag]"
      , code = ""
      , unofficialNames = [ "Vardak", "Wardagh", "Wardak" ]
      }
    , { name = "Zabol [Zabul]"
      , code = ""
      , unofficialNames = [ "Zabol", "Zabul", "Zābol" ]
      }
    ]


{-| -}
antiguaAndBarbudaSubdivisions : List Subdivision
antiguaAndBarbudaSubdivisions =
    [ { name = "Saint George"
      , code = ""
      , unofficialNames = [ "Saint George" ]
      }
    , { name = "Saint John’s"
      , code = ""
      , unofficialNames = [ "Saint John’s" ]
      }
    , { name = "Saint Mary"
      , code = ""
      , unofficialNames = [ "Saint Mary" ]
      }
    , { name = "Saint Paul"
      , code = ""
      , unofficialNames = [ "Saint Paul" ]
      }
    , { name = "Saint Peter"
      , code = ""
      , unofficialNames = [ "Saint Peter" ]
      }
    , { name = "Saint Philip"
      , code = ""
      , unofficialNames = [ "Saint Philip" ]
      }
    , { name = "Barbuda"
      , code = ""
      , unofficialNames = [ "Barbuda" ]
      }
    , { name = "Redonda"
      , code = ""
      , unofficialNames = [ "Redonda" ]
      }
    ]


{-| -}
anguillaSubdivisions : List Subdivision
anguillaSubdivisions =
    [ { name = "Blowing Point"
      , code = ""
      , unofficialNames = [ "Blowing Point" ]
      }
    , { name = "East End"
      , code = ""
      , unofficialNames = [ "East End" ]
      }
    , { name = "George Hill"
      , code = ""
      , unofficialNames = [ "George Hill" ]
      }
    , { name = "Island Harbour"
      , code = ""
      , unofficialNames = [ "Island Harbour" ]
      }
    , { name = "North Hill"
      , code = ""
      , unofficialNames = [ "North Hill" ]
      }
    , { name = "North Side"
      , code = ""
      , unofficialNames = [ "North Side" ]
      }
    , { name = "Sandy Ground"
      , code = ""
      , unofficialNames = [ "Sandy Ground" ]
      }
    , { name = "Sandy Hill"
      , code = ""
      , unofficialNames = [ "Sandy Hill" ]
      }
    , { name = "South Hill"
      , code = ""
      , unofficialNames = [ "South Hill" ]
      }
    , { name = "Stoney Ground"
      , code = ""
      , unofficialNames = [ "Stoney Ground" ]
      }
    , { name = "The Farrington"
      , code = ""
      , unofficialNames = [ "The Farrington" ]
      }
    , { name = "The Quarter"
      , code = ""
      , unofficialNames = [ "The Quarter" ]
      }
    , { name = "The Valley"
      , code = ""
      , unofficialNames = [ "The Valley" ]
      }
    , { name = "West End"
      , code = ""
      , unofficialNames = [ "West End" ]
      }
    ]


{-| -}
albaniaSubdivisions : List Subdivision
albaniaSubdivisions =
    [ { name = "Berat"
      , code = ""
      , unofficialNames = [ "Berat" ]
      }
    , { name = "Bulqizë"
      , code = ""
      , unofficialNames = [ "Bulqizë" ]
      }
    , { name = "Dibër"
      , code = ""
      , unofficialNames = [ "Dibër" ]
      }
    , { name = "Delvinë"
      , code = ""
      , unofficialNames = [ "Delvinë" ]
      }
    , { name = "Durrës"
      , code = ""
      , unofficialNames = [ "Durrës" ]
      }
    , { name = "Devoll"
      , code = ""
      , unofficialNames = [ "Devoli" ]
      }
    , { name = "Elbasan"
      , code = ""
      , unofficialNames = [ "Elbasan" ]
      }
    , { name = "Kolonjë"
      , code = ""
      , unofficialNames = [ "Kolonjë" ]
      }
    , { name = "Fier"
      , code = ""
      , unofficialNames = [ "Fier" ]
      }
    , { name = "Gjirokastër"
      , code = ""
      , unofficialNames = [ "Gjirokastër" ]
      }
    , { name = "Gramsh"
      , code = ""
      , unofficialNames = [ "Gramsh" ]
      }
    , { name = "Has"
      , code = ""
      , unofficialNames = [ "Has" ]
      }
    , { name = "Kavajë"
      , code = ""
      , unofficialNames = [ "Kavajë" ]
      }
    , { name = "Kurbin"
      , code = ""
      , unofficialNames = [ "Kurbin" ]
      }
    , { name = "Kuçovë"
      , code = ""
      , unofficialNames = [ "Kuçovë" ]
      }
    , { name = "Korçë"
      , code = ""
      , unofficialNames = [ "Korçë" ]
      }
    , { name = "Krujë"
      , code = ""
      , unofficialNames = [ "Krujë" ]
      }
    , { name = "Kukës"
      , code = ""
      , unofficialNames = [ "Kukës" ]
      }
    , { name = "Librazhd"
      , code = ""
      , unofficialNames = [ "Librazhd" ]
      }
    , { name = "Lezhë"
      , code = ""
      , unofficialNames = [ "Lezhë" ]
      }
    , { name = "Lushnjë"
      , code = ""
      , unofficialNames = [ "Lushnjë" ]
      }
    , { name = "Mallakastër"
      , code = ""
      , unofficialNames = [ "Mallakastër" ]
      }
    , { name = "Malësi e Madhe"
      , code = ""
      , unofficialNames = [ "Malesia e Madhe" ]
      }
    , { name = "Mirditë"
      , code = ""
      , unofficialNames = [ "Mirditë" ]
      }
    , { name = "Mat"
      , code = ""
      , unofficialNames = [ "Mat" ]
      }
    , { name = "Pogradec"
      , code = ""
      , unofficialNames = [ "Pogradec" ]
      }
    , { name = "Peqin"
      , code = ""
      , unofficialNames = [ "Peqin" ]
      }
    , { name = "Përmet"
      , code = ""
      , unofficialNames = [ "Përmet" ]
      }
    , { name = "Pukë"
      , code = ""
      , unofficialNames = [ "Pukë" ]
      }
    , { name = "Shkodër"
      , code = ""
      , unofficialNames = [ "Shkodër" ]
      }
    , { name = "Skrapar"
      , code = ""
      , unofficialNames = [ "Skrapar" ]
      }
    , { name = "Sarandë"
      , code = ""
      , unofficialNames = [ "Sarandë" ]
      }
    , { name = "Tepelenë"
      , code = ""
      , unofficialNames = [ "Tepelenë" ]
      }
    , { name = "Tropojë"
      , code = ""
      , unofficialNames = [ "Tropojë" ]
      }
    , { name = "Tiranë"
      , code = ""
      , unofficialNames = [ "Tiranë", "Tirana", "Tirana" ]
      }
    , { name = "Vlorë"
      , code = ""
      , unofficialNames = [ "Vlorë" ]
      }
    ]


{-| -}
armeniaSubdivisions : List Subdivision
armeniaSubdivisions =
    [ { name = "Aragacotn"
      , code = ""
      , unofficialNames = [ "Aragacotn" ]
      }
    , { name = "Ararat"
      , code = ""
      , unofficialNames = [ "Ararat" ]
      }
    , { name = "Armavir"
      , code = ""
      , unofficialNames = [ "Armavir" ]
      }
    , { name = "Erevan"
      , code = ""
      , unofficialNames = [ "Erevan" ]
      }
    , { name = "Gegark'unik'"
      , code = ""
      , unofficialNames = [ "Gegharkunick" ]
      }
    , { name = "Kotayk'"
      , code = ""
      , unofficialNames = [ "Kotaik" ]
      }
    , { name = "Lory"
      , code = ""
      , unofficialNames = [ "Lorri" ]
      }
    , { name = "Širak"
      , code = ""
      , unofficialNames = [ "Širak" ]
      }
    , { name = "Syunik'"
      , code = ""
      , unofficialNames = [ "Syunik'" ]
      }
    , { name = "Tavuš"
      , code = ""
      , unofficialNames = [ "Tavoush" ]
      }
    , { name = "Vayoc Jor"
      , code = ""
      , unofficialNames = [ "Vayoc Jor" ]
      }
    ]


{-| -}
angolaSubdivisions : List Subdivision
angolaSubdivisions =
    [ { name = "Bengo"
      , code = ""
      , unofficialNames = [ "Bengo" ]
      }
    , { name = "Benguela"
      , code = ""
      , unofficialNames = [ "Benguela" ]
      }
    , { name = "Bié"
      , code = ""
      , unofficialNames = [ "Bié" ]
      }
    , { name = "Cabinda"
      , code = ""
      , unofficialNames = [ "Kabinda" ]
      }
    , { name = "Cuando-Cubango"
      , code = ""
      , unofficialNames = [ "Cuando-Cubango" ]
      }
    , { name = "Cunene"
      , code = ""
      , unofficialNames = [ "Cunene" ]
      }
    , { name = "Cuanza Norte"
      , code = ""
      , unofficialNames = [ "Cuanza-Norte" ]
      }
    , { name = "Cuanza Sul"
      , code = ""
      , unofficialNames = [ "Cuanza-Sul" ]
      }
    , { name = "Huambo"
      , code = ""
      , unofficialNames = [ "Huambo" ]
      }
    , { name = "Huíla"
      , code = ""
      , unofficialNames = [ "Huíla" ]
      }
    , { name = "Lunda Norte"
      , code = ""
      , unofficialNames = [ "Lunda Norte" ]
      }
    , { name = "Lunda Sul"
      , code = ""
      , unofficialNames = [ "Lunda Sul" ]
      }
    , { name = "Luanda"
      , code = ""
      , unofficialNames = [ "Luanda" ]
      }
    , { name = "Malange"
      , code = ""
      , unofficialNames = [ "Malange" ]
      }
    , { name = "Moxico"
      , code = ""
      , unofficialNames = [ "Moxico" ]
      }
    , { name = "Namibe"
      , code = ""
      , unofficialNames = [ "Namibe" ]
      }
    , { name = "Uíge"
      , code = ""
      , unofficialNames = [ "Uíge" ]
      }
    , { name = "Zaire"
      , code = ""
      , unofficialNames = [ "Zaire" ]
      }
    ]


{-| -}
argentinaSubdivisions : List Subdivision
argentinaSubdivisions =
    [ { name = "Salta"
      , code = ""
      , unofficialNames = [ "Salta" ]
      }
    , { name = "Buenos Aires"
      , code = ""
      , unofficialNames = [ "Buenos Aires" ]
      }
    , { name = "Capital federal"
      , code = ""
      , unofficialNames = [ "Capital federal" ]
      }
    , { name = "San Luis"
      , code = ""
      , unofficialNames = [ "San Luis" ]
      }
    , { name = "Entre Ríos"
      , code = ""
      , unofficialNames = [ "Entre Ríos" ]
      }
    , { name = "La Rioja"
      , code = ""
      , unofficialNames = [ "La Rioja" ]
      }
    , { name = "Santiago del Estero"
      , code = ""
      , unofficialNames = [ "Santiago del Estero" ]
      }
    , { name = "Chaco"
      , code = ""
      , unofficialNames = [ "Chaco" ]
      }
    , { name = "San Juan"
      , code = ""
      , unofficialNames = [ "San Juan" ]
      }
    , { name = "Catamarca"
      , code = ""
      , unofficialNames = [ "Catamarca" ]
      }
    , { name = "La Pampa"
      , code = ""
      , unofficialNames = [ "Pampa" ]
      }
    , { name = "Mendoza"
      , code = ""
      , unofficialNames = [ "Mendoza" ]
      }
    , { name = "Misiones"
      , code = ""
      , unofficialNames = [ "Misiones" ]
      }
    , { name = "Formosa"
      , code = ""
      , unofficialNames = [ "Formosa" ]
      }
    , { name = "Neuquén"
      , code = ""
      , unofficialNames = [ "Neuquén" ]
      }
    , { name = "Río Negro"
      , code = ""
      , unofficialNames = [ "Río Negro" ]
      }
    , { name = "Santa Fe"
      , code = ""
      , unofficialNames = [ "Santa Fe" ]
      }
    , { name = "Tucumán"
      , code = ""
      , unofficialNames = [ "Tucumán" ]
      }
    , { name = "Chubut"
      , code = ""
      , unofficialNames = [ "Chubut" ]
      }
    , { name = "Tierra del Fuego"
      , code = ""
      , unofficialNames = [ "Tierra del Fuego" ]
      }
    , { name = "Corrientes"
      , code = ""
      , unofficialNames = [ "Corrientes" ]
      }
    , { name = "Córdoba"
      , code = ""
      , unofficialNames = [ "Córdoba" ]
      }
    , { name = "Jujuy"
      , code = ""
      , unofficialNames = [ "Jujuy" ]
      }
    , { name = "Santa Cruz"
      , code = ""
      , unofficialNames = [ "Santa Cruz" ]
      }
    ]


{-| -}
americanSamoaSubdivisions : List Subdivision
americanSamoaSubdivisions =
    [ { name = "Eastern District"
      , code = ""
      , unofficialNames = [ "Eastern District" ]
      }
    , { name = "Manu'a District"
      , code = ""
      , unofficialNames = [ "Manu'a District" ]
      }
    , { name = "Rose Atoll"
      , code = ""
      , unofficialNames = [ "Rose Atoll" ]
      }
    , { name = "Swains Island"
      , code = ""
      , unofficialNames = [ "Swains Island" ]
      }
    , { name = "Western District"
      , code = ""
      , unofficialNames = [ "Western District" ]
      }
    ]


{-| -}
austriaSubdivisions : List Subdivision
austriaSubdivisions =
    [ { name = "Burgenland"
      , code = ""
      , unofficialNames = [ "Burgenland" ]
      }
    , { name = "Kärnten"
      , code = ""
      , unofficialNames = [ "Carinthia", "Koroška" ]
      }
    , { name = "Niederösterreich"
      , code = ""
      , unofficialNames = [ "Lower Austria" ]
      }
    , { name = "Oberösterreich"
      , code = ""
      , unofficialNames = [ "Upper Austria" ]
      }
    , { name = "Salzburg"
      , code = ""
      , unofficialNames = [ "Salzbourg" ]
      }
    , { name = "Steiermark"
      , code = ""
      , unofficialNames = [ "Styria" ]
      }
    , { name = "Tirol"
      , code = ""
      , unofficialNames = [ "Tyrol" ]
      }
    , { name = "Vorarlberg"
      , code = ""
      , unofficialNames = [ "Vorarlberg" ]
      }
    , { name = "Wien"
      , code = ""
      , unofficialNames = [ "Vienna" ]
      }
    ]


{-| -}
australiaSubdivisions : List Subdivision
australiaSubdivisions =
    [ { name = "Australian Capital Territory"
      , code = ""
      , unofficialNames = [ "Australian Capital Territory" ]
      }
    , { name = "New South Wales"
      , code = ""
      , unofficialNames = [ "New South Wales" ]
      }
    , { name = "Northern Territory"
      , code = ""
      , unofficialNames = [ "Northern Territory" ]
      }
    , { name = "Queensland"
      , code = ""
      , unofficialNames = [ "Queensland" ]
      }
    , { name = "South Australia"
      , code = ""
      , unofficialNames = [ "South Australia" ]
      }
    , { name = "Tasmania"
      , code = ""
      , unofficialNames = [ "Tasmania" ]
      }
    , { name = "Victoria"
      , code = ""
      , unofficialNames = [ "Victoria" ]
      }
    , { name = "Western Australia"
      , code = ""
      , unofficialNames = [ "Western Australia" ]
      }
    ]


{-| -}
arubaSubdivisions : List Subdivision
arubaSubdivisions =
    []


{-| -}
alandIslandsSubdivisions : List Subdivision
alandIslandsSubdivisions =
    [ { name = "Mariehamn"
      , code = ""
      , unofficialNames = [ "Mariehamn" ]
      }
    , { name = "Alands landsbygd"
      , code = ""
      , unofficialNames = [ "Alands landsbygd" ]
      }
    , { name = "Alands skaergard"
      , code = ""
      , unofficialNames = [ "Alands skaergard" ]
      }
    ]


{-| -}
azerbaijanSubdivisions : List Subdivision
azerbaijanSubdivisions =
    [ { name = "Äli Bayramli"
      , code = ""
      , unofficialNames = [ "Äli Bayramli" ]
      }
    , { name = "Abseron"
      , code = ""
      , unofficialNames = [ "Abseron" ]
      }
    , { name = "Agstafa"
      , code = ""
      , unofficialNames = [ "Agstafa" ]
      }
    , { name = "Agcabädi"
      , code = ""
      , unofficialNames = [ "Agcabädi" ]
      }
    , { name = "Agdam"
      , code = ""
      , unofficialNames = [ "Agdam" ]
      }
    , { name = "Agdas"
      , code = ""
      , unofficialNames = [ "Agdas" ]
      }
    , { name = "Agsu"
      , code = ""
      , unofficialNames = [ "Agsu" ]
      }
    , { name = "Astara"
      , code = ""
      , unofficialNames = [ "Astara" ]
      }
    , { name = "Baki"
      , code = ""
      , unofficialNames = [ "Baki" ]
      }
    , { name = "Babäk"
      , code = ""
      , unofficialNames = [ "Babäk" ]
      }
    , { name = "Balakän"
      , code = ""
      , unofficialNames = [ "Balakän" ]
      }
    , { name = "Bärdä"
      , code = ""
      , unofficialNames = [ "Bärdä" ]
      }
    , { name = "Beyläqan"
      , code = ""
      , unofficialNames = [ "Beyläqan" ]
      }
    , { name = "Biläsuvar"
      , code = ""
      , unofficialNames = [ "Biläsuvar" ]
      }
    , { name = "Cäbrayil"
      , code = ""
      , unofficialNames = [ "Cäbrayil" ]
      }
    , { name = "Cälilabab"
      , code = ""
      , unofficialNames = [ "Cälilabab" ]
      }
    , { name = "Culfa"
      , code = ""
      , unofficialNames = [ "Culfa" ]
      }
    , { name = "Daskäsän"
      , code = ""
      , unofficialNames = [ "Daskäsän" ]
      }
    , { name = "Däväçi"
      , code = ""
      , unofficialNames = [ "Däväçi" ]
      }
    , { name = "Füzuli"
      , code = ""
      , unofficialNames = [ "Füzuli" ]
      }
    , { name = "Gäncä"
      , code = ""
      , unofficialNames = [ "Gäncä" ]
      }
    , { name = "Gädäbäy"
      , code = ""
      , unofficialNames = [ "Gädäbäy" ]
      }
    , { name = "Goranboy"
      , code = ""
      , unofficialNames = [ "Goranboy" ]
      }
    , { name = "Göyçay"
      , code = ""
      , unofficialNames = [ "Göyçay" ]
      }
    , { name = "Haciqabul"
      , code = ""
      , unofficialNames = [ "Haciqabul" ]
      }
    , { name = "Imisli"
      , code = ""
      , unofficialNames = [ "Imisli" ]
      }
    , { name = "Ismayilli"
      , code = ""
      , unofficialNames = [ "Ismayilli" ]
      }
    , { name = "Kälbäcär"
      , code = ""
      , unofficialNames = [ "Kälbäcär" ]
      }
    , { name = "Kürdämir"
      , code = ""
      , unofficialNames = [ "Kürdämir" ]
      }
    , { name = "Länkäran City"
      , code = ""
      , unofficialNames = [ "Länkäran City" ]
      }
    , { name = "Laçin"
      , code = ""
      , unofficialNames = [ "Laçin" ]
      }
    , { name = "Länkäran"
      , code = ""
      , unofficialNames = [ "Länkäran" ]
      }
    , { name = "Lerik"
      , code = ""
      , unofficialNames = [ "Lerik" ]
      }
    , { name = "Masalli"
      , code = ""
      , unofficialNames = [ "Masalli" ]
      }
    , { name = "Mingäçevir"
      , code = ""
      , unofficialNames = [ "Mingäçevir" ]
      }
    , { name = "Naftalan"
      , code = ""
      , unofficialNames = [ "Naftalan" ]
      }
    , { name = "Neftçala"
      , code = ""
      , unofficialNames = [ "Neftçala" ]
      }
    , { name = "Naxçivan"
      , code = ""
      , unofficialNames = [ "Naxçivan" ]
      }
    , { name = "Oguz"
      , code = ""
      , unofficialNames = [ "Oguz" ]
      }
    , { name = "Ordubad"
      , code = ""
      , unofficialNames = [ "Ordubad" ]
      }
    , { name = "Qäbälä"
      , code = ""
      , unofficialNames = [ "Qäbälä" ]
      }
    , { name = "Qax"
      , code = ""
      , unofficialNames = [ "Qax" ]
      }
    , { name = "Qazax"
      , code = ""
      , unofficialNames = [ "Qazax" ]
      }
    , { name = "Quba"
      , code = ""
      , unofficialNames = [ "Quba" ]
      }
    , { name = "Qubadli"
      , code = ""
      , unofficialNames = [ "Qubadli" ]
      }
    , { name = "Qobustan"
      , code = ""
      , unofficialNames = [ "Qobustan" ]
      }
    , { name = "Qusar"
      , code = ""
      , unofficialNames = [ "Qusar" ]
      }
    , { name = "Säki City"
      , code = ""
      , unofficialNames = [ "Säki City" ]
      }
    , { name = "Sabirabad"
      , code = ""
      , unofficialNames = [ "Sabirabad" ]
      }
    , { name = "Sädäräk"
      , code = ""
      , unofficialNames = [ "Sädäräk" ]
      }
    , { name = "Sahbuz"
      , code = ""
      , unofficialNames = [ "Sahbuz" ]
      }
    , { name = "Säki"
      , code = ""
      , unofficialNames = [ "Säki" ]
      }
    , { name = "Salyan"
      , code = ""
      , unofficialNames = [ "Salyan" ]
      }
    , { name = "Särur"
      , code = ""
      , unofficialNames = [ "Särur" ]
      }
    , { name = "Saatli"
      , code = ""
      , unofficialNames = [ "Saatli" ]
      }
    , { name = "Siyäzän"
      , code = ""
      , unofficialNames = [ "Siyäzän" ]
      }
    , { name = "Sämkir"
      , code = ""
      , unofficialNames = [ "Sämkir" ]
      }
    , { name = "Sumqayit"
      , code = ""
      , unofficialNames = [ "Sumqayit" ]
      }
    , { name = "Samaxi"
      , code = ""
      , unofficialNames = [ "Samaxi" ]
      }
    , { name = "Samux"
      , code = ""
      , unofficialNames = [ "Samux" ]
      }
    , { name = "Susa City"
      , code = ""
      , unofficialNames = [ "Susa City" ]
      }
    , { name = "Susa"
      , code = ""
      , unofficialNames = [ "Susa" ]
      }
    , { name = "Tärtär"
      , code = ""
      , unofficialNames = [ "Tärtär" ]
      }
    , { name = "Tovuz"
      , code = ""
      , unofficialNames = [ "Tovuz" ]
      }
    , { name = "Ucar"
      , code = ""
      , unofficialNames = [ "Ucar" ]
      }
    , { name = "Xankändi"
      , code = ""
      , unofficialNames = [ "Xankändi" ]
      }
    , { name = "Xaçmaz"
      , code = ""
      , unofficialNames = [ "Xaçmaz" ]
      }
    , { name = "Xanlar"
      , code = ""
      , unofficialNames = [ "Xanlar" ]
      }
    , { name = "Xocali"
      , code = ""
      , unofficialNames = [ "Xocali" ]
      }
    , { name = "Xizi"
      , code = ""
      , unofficialNames = [ "Xizi" ]
      }
    , { name = "Xocavänd"
      , code = ""
      , unofficialNames = [ "Xocavänd" ]
      }
    , { name = "Yardimli"
      , code = ""
      , unofficialNames = [ "Yardimli" ]
      }
    , { name = "Yevlax City"
      , code = ""
      , unofficialNames = [ "Yevlax City" ]
      }
    , { name = "Yevlax"
      , code = ""
      , unofficialNames = [ "Yevlax" ]
      }
    , { name = "Zängilan"
      , code = ""
      , unofficialNames = [ "Zängilan" ]
      }
    , { name = "Zaqatala"
      , code = ""
      , unofficialNames = [ "Zaqatala" ]
      }
    , { name = "Zärdab"
      , code = ""
      , unofficialNames = [ "Zärdab" ]
      }
    ]


{-| -}
bosniaAndHerzegovinaSubdivisions : List Subdivision
bosniaAndHerzegovinaSubdivisions =
    [ { name = "Federacija Bosna i Hercegovina"
      , code = ""
      , unofficialNames = [ "Federacija Bosna i Hercegovina" ]
      }
    , { name = "Republika Srpska"
      , code = ""
      , unofficialNames = [ "Republika Srpska" ]
      }
    ]


{-| -}
barbadosSubdivisions : List Subdivision
barbadosSubdivisions =
    [ { name = "Christ Church"
      , code = ""
      , unofficialNames = [ "Christ Church" ]
      }
    , { name = "Saint Andrew"
      , code = ""
      , unofficialNames = [ "Saint Andrew" ]
      }
    , { name = "Saint George"
      , code = ""
      , unofficialNames = [ "Saint George" ]
      }
    , { name = "Saint James"
      , code = ""
      , unofficialNames = [ "Saint James" ]
      }
    , { name = "Saint John"
      , code = ""
      , unofficialNames = [ "Saint John" ]
      }
    , { name = "Saint Joseph"
      , code = ""
      , unofficialNames = [ "Saint Joseph" ]
      }
    , { name = "Saint Lucy"
      , code = ""
      , unofficialNames = [ "Saint Lucy" ]
      }
    , { name = "Saint Michael"
      , code = ""
      , unofficialNames = [ "Saint Michael" ]
      }
    , { name = "Saint Peter"
      , code = ""
      , unofficialNames = [ "Saint Peter" ]
      }
    , { name = "Saint Philip"
      , code = ""
      , unofficialNames = [ "Saint Philip" ]
      }
    , { name = "Saint Thomas"
      , code = ""
      , unofficialNames = [ "Saint Thomas" ]
      }
    ]


{-| -}
bangladeshSubdivisions : List Subdivision
bangladeshSubdivisions =
    [ { name = "Bandarban zila"
      , code = ""
      , unofficialNames = [ "Bandarban" ]
      }
    , { name = "Barguna zila"
      , code = ""
      , unofficialNames = [ "Barguna zila" ]
      }
    , { name = "Bogra zila"
      , code = ""
      , unofficialNames = [ "Bogora", "Bogra", "Borga Thana" ]
      }
    , { name = "Brahmanbaria zila"
      , code = ""
      , unofficialNames = [ "Brahman Bariya", "Brahmanbaria" ]
      }
    , { name = "Bagerhat zila"
      , code = ""
      , unofficialNames = [ "Bagarhat", "Bagerhat", "Bagherhat", "Basabari", "Bāsābāri" ]
      }
    , { name = "Barisal zila"
      , code = ""
      , unofficialNames = [ "Barisal" ]
      }
    , { name = "Bhola zila"
      , code = ""
      , unofficialNames = [ "Bhola" ]
      }
    , { name = "Comilla zila"
      , code = ""
      , unofficialNames = [ "Comilla", "Komilla" ]
      }
    , { name = "Chandpur zila"
      , code = ""
      , unofficialNames = [ "Chandipur", "Chandpur" ]
      }
    , { name = "Chittagong zila"
      , code = ""
      , unofficialNames = [ "Chattagam", "Chittagong" ]
      }
    , { name = "Cox's Bazar zila"
      , code = ""
      , unofficialNames = [ "Coxʿs Bazar", "Koks Bazar" ]
      }
    , { name = "Chuadanga zila"
      , code = ""
      , unofficialNames = [ "Chuadanga" ]
      }
    , { name = "Dhaka zila"
      , code = ""
      , unofficialNames = [ "Dacca", "Dakka", "Dhaka" ]
      }
    , { name = "Dinajpur zila"
      , code = ""
      , unofficialNames = [ "Dinajpur" ]
      }
    , { name = "Faridpur zila"
      , code = ""
      , unofficialNames = [ "Faridpur" ]
      }
    , { name = "Feni zila"
      , code = ""
      , unofficialNames = [ "Feni" ]
      }
    , { name = "Gopalganj zila"
      , code = ""
      , unofficialNames = [ "Gopalganj" ]
      }
    , { name = "Gazipur zila"
      , code = ""
      , unofficialNames = [ "Gajipur" ]
      }
    , { name = "Gaibandha zila"
      , code = ""
      , unofficialNames = [ "Gaibanda", "Gaibandah", "Gaibandha", "Gaybanda", "Gaybandah" ]
      }
    , { name = "Habiganj zila"
      , code = ""
      , unofficialNames = [ "Habiganj", "Hobiganj", "Hobigonj" ]
      }
    , { name = "Jamalpur zila"
      , code = ""
      , unofficialNames = [ "Jamalpur" ]
      }
    , { name = "Jessore zila"
      , code = ""
      , unofficialNames = [ "Jessore", "Jessur" ]
      }
    , { name = "Jhenaidah zila"
      , code = ""
      , unofficialNames = [ "Jhanaydah", "Jhanidah", "Jhanīdāh", "Jhenaida", "Jhenida" ]
      }
    , { name = "Jaipurhat zila"
      , code = ""
      , unofficialNames = [ "Jaipur Hat", "Jaipurhat", "Joypurhat" ]
      }
    , { name = "Jhalakati zila"
      , code = ""
      , unofficialNames = [ "Jhalakati", "Jhalokati" ]
      }
    , { name = "Kishoreganj zila"
      , code = ""
      , unofficialNames = [ "Kishoreganj" ]
      }
    , { name = "Khulna zila"
      , code = ""
      , unofficialNames = [ "Khulna" ]
      }
    , { name = "Kurigram zila"
      , code = ""
      , unofficialNames = [ "Kurigram" ]
      }
    , { name = "Khagrachari zila"
      , code = ""
      , unofficialNames = [ "Khagrachari zila" ]
      }
    , { name = "Kushtia zila"
      , code = ""
      , unofficialNames = [ "Kushtia", "Kushtiya" ]
      }
    , { name = "Lakshmipur zila"
      , code = ""
      , unofficialNames = [ "Lakshmipur", "Laksmipur" ]
      }
    , { name = "Lalmonirhat zila"
      , code = ""
      , unofficialNames = [ "Lalmanir Hat", "Lalmonirhat" ]
      }
    , { name = "Manikganj zila"
      , code = ""
      , unofficialNames = [ "Manikganj" ]
      }
    , { name = "Mymensingh zila"
      , code = ""
      , unofficialNames = [ "Mymensingh", "Nasirabad", "Nasirābād" ]
      }
    , { name = "Munshiganj zila"
      , code = ""
      , unofficialNames = [ "Munshiganj zila" ]
      }
    , { name = "Madaripur zila"
      , code = ""
      , unofficialNames = [ "Madaripur" ]
      }
    , { name = "Magura zila"
      , code = ""
      , unofficialNames = [ "Magura" ]
      }
    , { name = "Moulvibazar zila"
      , code = ""
      , unofficialNames = [ "Maulvi Bazar", "Moulvi Bazar" ]
      }
    , { name = "Meherpur zila"
      , code = ""
      , unofficialNames = [ "Meherpur zila" ]
      }
    , { name = "Narayanganj zila"
      , code = ""
      , unofficialNames = [ "Narayanganj" ]
      }
    , { name = "Netrakona zila"
      , code = ""
      , unofficialNames = [ "Netrakona", "Netrokana" ]
      }
    , { name = "Narsingdi zila"
      , code = ""
      , unofficialNames = [ "Narsinghdi" ]
      }
    , { name = "Narail zila"
      , code = ""
      , unofficialNames = [ "Narail", "Naral" ]
      }
    , { name = "Natore zila"
      , code = ""
      , unofficialNames = [ "Nator", "Natore" ]
      }
    , { name = "Nawabganj zila"
      , code = ""
      , unofficialNames = [ "Nawabganj", "Nawabgonj" ]
      }
    , { name = "Nilphamari zila"
      , code = ""
      , unofficialNames = [ "Nilphamari" ]
      }
    , { name = "Noakhali zila"
      , code = ""
      , unofficialNames = [ "Noakhali" ]
      }
    , { name = "Naogaon zila"
      , code = ""
      , unofficialNames = [ "Naogaon", "Naugaon" ]
      }
    , { name = "Pabna zila"
      , code = ""
      , unofficialNames = [ "Pabna" ]
      }
    , { name = "Pirojpur zila"
      , code = ""
      , unofficialNames = [ "Perojpur", "Pirojpur" ]
      }
    , { name = "Patuakhali zila"
      , code = ""
      , unofficialNames = [ "Patukhali" ]
      }
    , { name = "Panchagarh zila"
      , code = ""
      , unofficialNames = [ "Panchagarh zila" ]
      }
    , { name = "Rajbari zila"
      , code = ""
      , unofficialNames = [ "Rajbari" ]
      }
    , { name = "Rajshahi zila"
      , code = ""
      , unofficialNames = [ "Rajshahi", "Rampur Boalia" ]
      }
    , { name = "Rangpur zila"
      , code = ""
      , unofficialNames = [ "Rangpur" ]
      }
    , { name = "Rangamati zila"
      , code = ""
      , unofficialNames = [ "Rangamati" ]
      }
    , { name = "Sherpur zila"
      , code = ""
      , unofficialNames = [ "Sherpur" ]
      }
    , { name = "Satkhira zila"
      , code = ""
      , unofficialNames = [ "Satkhira" ]
      }
    , { name = "Sirajganj zila"
      , code = ""
      , unofficialNames = [ "Serajgonj", "Sirajganj" ]
      }
    , { name = "Sylhet zila"
      , code = ""
      , unofficialNames = [ "Silhat", "Sylhet" ]
      }
    , { name = "Sunamganj zila"
      , code = ""
      , unofficialNames = [ "Shunamganj", "Sunamganj" ]
      }
    , { name = "Shariatpur zila"
      , code = ""
      , unofficialNames = [ "Shariatpur" ]
      }
    , { name = "Tangail zila"
      , code = ""
      , unofficialNames = [ "Tangail", "Tangayal" ]
      }
    , { name = "Thakurgaon zila"
      , code = ""
      , unofficialNames = [ "Thakurgaon" ]
      }
    ]


{-| -}
belgiumSubdivisions : List Subdivision
belgiumSubdivisions =
    [ { name = "Brussels"
      , code = ""
      , unofficialNames = [ "Brussels Hoofdstedelijk Gewest", "Région de Bruxelles-Capitale", "Brussel", "Brüssel", "Bruxelles" ]
      }
    , { name = "Antwerpen (nl)"
      , code = ""
      , unofficialNames = [ "Antwerpen", "Anvers" ]
      }
    , { name = "Vlaams Brabant (nl)"
      , code = ""
      , unofficialNames = [ "Brabant-Vlanderen", "Vlaams-Brabant", "Flämisch Brabant", "Brabant-Flamand" ]
      }
    , { name = "Limburg (nl)"
      , code = ""
      , unofficialNames = [ "Limbourg" ]
      }
    , { name = "Oost-Vlaanderen (nl)"
      , code = ""
      , unofficialNames = [ "Oos-Vlanderen", "Oost-Vlaanderen", "Ost-Flandern", "Flandre-Orientale" ]
      }
    , { name = "West-Vlaanderen (nl)"
      , code = ""
      , unofficialNames = [ "Wes-Vlanderen", "West-Vlaanderen", "West-Flandern", "Flandre-Occidentale" ]
      }
    , { name = "Brabant Wallon (fr)"
      , code = ""
      , unofficialNames = [ "Waals-Brabant", "Wallonisch Brabant", "Walloon Brabant" ]
      }
    , { name = "Hainaut (fr)"
      , code = ""
      , unofficialNames = [ "Henegouwen", "Hennegau" ]
      }
    , { name = "Liège (fr)"
      , code = ""
      , unofficialNames = [ "Luik", "Lüttich" ]
      }
    , { name = "Luxembourg (fr)"
      , code = ""
      , unofficialNames = [ "Luxembourg", "Luxemburg" ]
      }
    , { name = "Namur (fr)"
      , code = ""
      , unofficialNames = [ "Namen" ]
      }
    ]


{-| -}
burkinaFasoSubdivisions : List Subdivision
burkinaFasoSubdivisions =
    [ { name = "Balé"
      , code = ""
      , unofficialNames = [ "Balé" ]
      }
    , { name = "Bam"
      , code = ""
      , unofficialNames = [ "Bam" ]
      }
    , { name = "Banwa"
      , code = ""
      , unofficialNames = [ "Banwa" ]
      }
    , { name = "Bazèga"
      , code = ""
      , unofficialNames = [ "Bazèga" ]
      }
    , { name = "Bougouriba"
      , code = ""
      , unofficialNames = [ "Bougouriba" ]
      }
    , { name = "Boulgou"
      , code = ""
      , unofficialNames = [ "Boulgou" ]
      }
    , { name = "Boulkiemdé"
      , code = ""
      , unofficialNames = [ "Boulkiemdé" ]
      }
    , { name = "Comoé"
      , code = ""
      , unofficialNames = [ "Comoé" ]
      }
    , { name = "Ganzourgou"
      , code = ""
      , unofficialNames = [ "Ganzourgou" ]
      }
    , { name = "Gnagna"
      , code = ""
      , unofficialNames = [ "Gnagna" ]
      }
    , { name = "Gourma"
      , code = ""
      , unofficialNames = [ "Gourma" ]
      }
    , { name = "Houet"
      , code = ""
      , unofficialNames = [ "Houet" ]
      }
    , { name = "Ioba"
      , code = ""
      , unofficialNames = [ "Ioba" ]
      }
    , { name = "Kadiogo"
      , code = ""
      , unofficialNames = [ "Kadiogo" ]
      }
    , { name = "Kénédougou"
      , code = ""
      , unofficialNames = [ "Kénédougou" ]
      }
    , { name = "Komondjari"
      , code = ""
      , unofficialNames = [ "Komandjoari", "Komondjari" ]
      }
    , { name = "Kompienga"
      , code = ""
      , unofficialNames = [ "Kompienga" ]
      }
    , { name = "Koulpélogo"
      , code = ""
      , unofficialNames = [ "Koulpélogo" ]
      }
    , { name = "Kossi"
      , code = ""
      , unofficialNames = [ "Kossi" ]
      }
    , { name = "Kouritenga"
      , code = ""
      , unofficialNames = [ "Kouritenga" ]
      }
    , { name = "Kourwéogo"
      , code = ""
      , unofficialNames = [ "Kourwéogo" ]
      }
    , { name = "Léraba"
      , code = ""
      , unofficialNames = [ "Léraba" ]
      }
    , { name = "Loroum"
      , code = ""
      , unofficialNames = [ "Loroum" ]
      }
    , { name = "Mouhoun"
      , code = ""
      , unofficialNames = [ "Mouhoun" ]
      }
    , { name = "Namentenga"
      , code = ""
      , unofficialNames = [ "Namentenga" ]
      }
    , { name = "Nahouri"
      , code = ""
      , unofficialNames = [ "Naouri" ]
      }
    , { name = "Nayala"
      , code = ""
      , unofficialNames = [ "Nayala" ]
      }
    , { name = "Noumbiel"
      , code = ""
      , unofficialNames = [ "Noumbiel" ]
      }
    , { name = "Oubritenga"
      , code = ""
      , unofficialNames = [ "Oubritenga" ]
      }
    , { name = "Oudalan"
      , code = ""
      , unofficialNames = [ "Oudalan" ]
      }
    , { name = "Passoré"
      , code = ""
      , unofficialNames = [ "Passoré" ]
      }
    , { name = "Poni"
      , code = ""
      , unofficialNames = [ "Poni" ]
      }
    , { name = "Séno"
      , code = ""
      , unofficialNames = [ "Séno" ]
      }
    , { name = "Sissili"
      , code = ""
      , unofficialNames = [ "Sissili" ]
      }
    , { name = "Sanmatenga"
      , code = ""
      , unofficialNames = [ "Sanmatenga" ]
      }
    , { name = "Sanguié"
      , code = ""
      , unofficialNames = [ "Sanguié" ]
      }
    , { name = "Soum"
      , code = ""
      , unofficialNames = [ "Soum" ]
      }
    , { name = "Sourou"
      , code = ""
      , unofficialNames = [ "Sourou" ]
      }
    , { name = "Tapoa"
      , code = ""
      , unofficialNames = [ "Tapoa" ]
      }
    , { name = "Tui"
      , code = ""
      , unofficialNames = [ "Tui" ]
      }
    , { name = "Yagha"
      , code = ""
      , unofficialNames = [ "Yagha" ]
      }
    , { name = "Yatenga"
      , code = ""
      , unofficialNames = [ "Yatenga" ]
      }
    , { name = "Ziro"
      , code = ""
      , unofficialNames = [ "Ziro" ]
      }
    , { name = "Zondoma"
      , code = ""
      , unofficialNames = [ "Zondoma" ]
      }
    , { name = "Zoundwéogo"
      , code = ""
      , unofficialNames = [ "Zoundwéogo" ]
      }
    ]


{-| -}
bulgariaSubdivisions : List Subdivision
bulgariaSubdivisions =
    [ { name = "Blagoevgrad"
      , code = ""
      , unofficialNames = [ "Blagoevgrad" ]
      }
    , { name = "Burgas"
      , code = ""
      , unofficialNames = [ "Burgas" ]
      }
    , { name = "Varna"
      , code = ""
      , unofficialNames = [ "Varna" ]
      }
    , { name = "Veliko Tarnovo"
      , code = ""
      , unofficialNames = [ "Veliko Tarnovo" ]
      }
    , { name = "Vidin"
      , code = ""
      , unofficialNames = [ "Vidin" ]
      }
    , { name = "Vratsa"
      , code = ""
      , unofficialNames = [ "Vratsa" ]
      }
    , { name = "Gabrovo"
      , code = ""
      , unofficialNames = [ "Gabrovo" ]
      }
    , { name = "Dobrich"
      , code = ""
      , unofficialNames = [ "Dobrich" ]
      }
    , { name = "Kardzhali"
      , code = ""
      , unofficialNames = [ "Kardzhali" ]
      }
    , { name = "Kjustendil"
      , code = ""
      , unofficialNames = [ "Kjustendil" ]
      }
    , { name = "Lovech"
      , code = ""
      , unofficialNames = [ "Lovech" ]
      }
    , { name = "Montana"
      , code = ""
      , unofficialNames = [ "Montana" ]
      }
    , { name = "Pazardzhik"
      , code = ""
      , unofficialNames = [ "Pazardzhik" ]
      }
    , { name = "Pernik"
      , code = ""
      , unofficialNames = [ "Pernik" ]
      }
    , { name = "Pleven"
      , code = ""
      , unofficialNames = [ "Pleven" ]
      }
    , { name = "Plovdiv"
      , code = ""
      , unofficialNames = [ "Plovdiv" ]
      }
    , { name = "Razgrad"
      , code = ""
      , unofficialNames = [ "Razgrad" ]
      }
    , { name = "Ruse"
      , code = ""
      , unofficialNames = [ "Ruse" ]
      }
    , { name = "Silistra"
      , code = ""
      , unofficialNames = [ "Silistra" ]
      }
    , { name = "Sliven"
      , code = ""
      , unofficialNames = [ "Sliven" ]
      }
    , { name = "Smolyan"
      , code = ""
      , unofficialNames = [ "Smolyan" ]
      }
    , { name = "Sofia-Grad"
      , code = ""
      , unofficialNames = [ "Sofia-Grad" ]
      }
    , { name = "Sofia"
      , code = ""
      , unofficialNames = [ "Sofia" ]
      }
    , { name = "Stara Zagora"
      , code = ""
      , unofficialNames = [ "Stara Zagora" ]
      }
    , { name = "Targovishte"
      , code = ""
      , unofficialNames = [ "Targovishte" ]
      }
    , { name = "Haskovo"
      , code = ""
      , unofficialNames = [ "Haskovo" ]
      }
    , { name = "Šumen"
      , code = ""
      , unofficialNames = [ "Šumen" ]
      }
    , { name = "Yambol"
      , code = ""
      , unofficialNames = [ "Yambol" ]
      }
    ]


{-| -}
bahrainSubdivisions : List Subdivision
bahrainSubdivisions =
    [ { name = "Al Manamah (Al ‘Asimah)"
      , code = ""
      , unofficialNames = [ "Manāmah", "al-Manāmah", "Manama", "Manama", "Manama" ]
      }
    , { name = "Al Janubiyah"
      , code = ""
      , unofficialNames = [ "Eastern", "Hawa", "Juzur H̨awār", "Southern", "ash Sharqiyah", "aš-Šarqīyah" ]
      }
    , { name = "Al Muharraq"
      , code = ""
      , unofficialNames = [ "Al Muharraq" ]
      }
    , { name = "Al Wustá"
      , code = ""
      , unofficialNames = [ "Central", "al-Mintaqah al-Wusta" ]
      }
    , { name = "Ash Shamaliyah"
      , code = ""
      , unofficialNames = [ "Northern", "al-Mintaqa ash Shamaliyah", "ash Shamaliyah" ]
      }
    ]


{-| -}
burundiSubdivisions : List Subdivision
burundiSubdivisions =
    [ { name = "Bubanza"
      , code = ""
      , unofficialNames = [ "Bubanza" ]
      }
    , { name = "Bujumbura"
      , code = ""
      , unofficialNames = [ "Bujumbura" ]
      }
    , { name = "Bururi"
      , code = ""
      , unofficialNames = [ "Bururi" ]
      }
    , { name = "Cankuzo"
      , code = ""
      , unofficialNames = [ "Cankuzo" ]
      }
    , { name = "Cibitoke"
      , code = ""
      , unofficialNames = [ "Cibitoke" ]
      }
    , { name = "Gitega"
      , code = ""
      , unofficialNames = [ "Kitega" ]
      }
    , { name = "Kirundo"
      , code = ""
      , unofficialNames = [ "Kirundo" ]
      }
    , { name = "Karuzi"
      , code = ""
      , unofficialNames = [ "Karusi" ]
      }
    , { name = "Kayanza"
      , code = ""
      , unofficialNames = [ "Kayanza" ]
      }
    , { name = "Makamba"
      , code = ""
      , unofficialNames = [ "Makamba" ]
      }
    , { name = "Muramvya"
      , code = ""
      , unofficialNames = [ "Muramuya" ]
      }
    , { name = "Mwaro"
      , code = ""
      , unofficialNames = [ "Mwaro" ]
      }
    , { name = "Muyinga"
      , code = ""
      , unofficialNames = [ "Muhinga" ]
      }
    , { name = "Ngozi"
      , code = ""
      , unofficialNames = [ "Ngozi" ]
      }
    , { name = "Rutana"
      , code = ""
      , unofficialNames = [ "Rutana" ]
      }
    , { name = "Ruyigi"
      , code = ""
      , unofficialNames = [ "Ruyigi" ]
      }
    ]


{-| -}
beninSubdivisions : List Subdivision
beninSubdivisions =
    [ { name = "Atakora"
      , code = ""
      , unofficialNames = [ "Atakora" ]
      }
    , { name = "Alibori"
      , code = ""
      , unofficialNames = [ "Alibori" ]
      }
    , { name = "Atlantique"
      , code = ""
      , unofficialNames = [ "Atlantique" ]
      }
    , { name = "Borgou"
      , code = ""
      , unofficialNames = [ "Borgou" ]
      }
    , { name = "Collines"
      , code = ""
      , unofficialNames = [ "Collines" ]
      }
    , { name = "Donga"
      , code = ""
      , unofficialNames = [ "Donga" ]
      }
    , { name = "Kouffo"
      , code = ""
      , unofficialNames = [ "Kouffo" ]
      }
    , { name = "Littoral"
      , code = ""
      , unofficialNames = [ "Littoral" ]
      }
    , { name = "Mono"
      , code = ""
      , unofficialNames = [ "Mono" ]
      }
    , { name = "Ouémé"
      , code = ""
      , unofficialNames = [ "Ouémé" ]
      }
    , { name = "Plateau"
      , code = ""
      , unofficialNames = [ "Plateau" ]
      }
    , { name = "Zou"
      , code = ""
      , unofficialNames = [ "Zou" ]
      }
    ]


{-| -}
saintBarthelemySubdivisions : List Subdivision
saintBarthelemySubdivisions =
    []


{-| -}
bermudaSubdivisions : List Subdivision
bermudaSubdivisions =
    [ { name = "Devonshire"
      , code = ""
      , unofficialNames = [ "Devonshire" ]
      }
    , { name = "Saint George"
      , code = ""
      , unofficialNames = [ "Saint George" ]
      }
    , { name = "Hamilton"
      , code = ""
      , unofficialNames = [ "Hamilton" ]
      }
    , { name = "Hamilton City"
      , code = ""
      , unofficialNames = [ "Hamilton City" ]
      }
    , { name = "Pembroke"
      , code = ""
      , unofficialNames = [ "Pembroke" ]
      }
    , { name = "Paget"
      , code = ""
      , unofficialNames = [ "Paget" ]
      }
    , { name = "Sandys"
      , code = ""
      , unofficialNames = [ "Sandys" ]
      }
    , { name = "Saint George's"
      , code = ""
      , unofficialNames = [ "Saint George's" ]
      }
    , { name = "Southampton"
      , code = ""
      , unofficialNames = [ "Southampton" ]
      }
    , { name = "Smith's"
      , code = ""
      , unofficialNames = [ "Smith's" ]
      }
    , { name = "Warwick"
      , code = ""
      , unofficialNames = [ "Warwick" ]
      }
    ]


{-| -}
bruneiDarussalamSubdivisions : List Subdivision
bruneiDarussalamSubdivisions =
    [ { name = "Belait"
      , code = ""
      , unofficialNames = [ "Belait" ]
      }
    , { name = "Brunei-Muara"
      , code = ""
      , unofficialNames = [ "Brunei-Muara" ]
      }
    , { name = "Temburong"
      , code = ""
      , unofficialNames = [ "Temburong" ]
      }
    , { name = "Tutong"
      , code = ""
      , unofficialNames = [ "Tutong" ]
      }
    ]


{-| -}
boliviaPlurinationalStateOfSubdivisions : List Subdivision
boliviaPlurinationalStateOfSubdivisions =
    [ { name = "El Beni"
      , code = ""
      , unofficialNames = [ "El Beni" ]
      }
    , { name = "Cochabamba"
      , code = ""
      , unofficialNames = [ "Cochabamba" ]
      }
    , { name = "Chuquisaca"
      , code = ""
      , unofficialNames = [ "Chuquisaca" ]
      }
    , { name = "La Paz"
      , code = ""
      , unofficialNames = [ "La Paz" ]
      }
    , { name = "Pando"
      , code = ""
      , unofficialNames = [ "Pando" ]
      }
    , { name = "Oruro"
      , code = ""
      , unofficialNames = [ "Oruro" ]
      }
    , { name = "Potosí"
      , code = ""
      , unofficialNames = [ "Potosí" ]
      }
    , { name = "Santa Cruz"
      , code = ""
      , unofficialNames = [ "Santa Cruz" ]
      }
    , { name = "Tarija"
      , code = ""
      , unofficialNames = [ "Tarija" ]
      }
    ]


{-| -}
bonaireSintEustatiusAndSabaSubdivisions : List Subdivision
bonaireSintEustatiusAndSabaSubdivisions =
    [ { name = "Bonaire"
      , code = ""
      , unofficialNames = [ "Bonaire" ]
      }
    , { name = "Saba"
      , code = ""
      , unofficialNames = [ "Saba" ]
      }
    , { name = "Sint Eustatius"
      , code = ""
      , unofficialNames = [ "Sint Eustatius" ]
      }
    ]


{-| -}
brazilSubdivisions : List Subdivision
brazilSubdivisions =
    [ { name = "Acre"
      , code = ""
      , unofficialNames = [ "Acre" ]
      }
    , { name = "Alagoas"
      , code = ""
      , unofficialNames = [ "Alagoas" ]
      }
    , { name = "Amazonas"
      , code = ""
      , unofficialNames = [ "Amazonas" ]
      }
    , { name = "Amapá"
      , code = ""
      , unofficialNames = [ "Amapá" ]
      }
    , { name = "Bahia"
      , code = ""
      , unofficialNames = [ "Bahia" ]
      }
    , { name = "Ceará"
      , code = ""
      , unofficialNames = [ "Ceará" ]
      }
    , { name = "Distrito Federal"
      , code = ""
      , unofficialNames = [ "Distrito Federal" ]
      }
    , { name = "Espírito Santo"
      , code = ""
      , unofficialNames = [ "Espírito Santo" ]
      }
    , { name = "Goiás"
      , code = ""
      , unofficialNames = [ "Goiás" ]
      }
    , { name = "Maranhão"
      , code = ""
      , unofficialNames = [ "Maranhão" ]
      }
    , { name = "Minas Gerais"
      , code = ""
      , unofficialNames = [ "Minas Gerais" ]
      }
    , { name = "Mato Grosso do Sul"
      , code = ""
      , unofficialNames = [ "Mato Grosso do Sul" ]
      }
    , { name = "Mato Grosso"
      , code = ""
      , unofficialNames = [ "Mato Grosso" ]
      }
    , { name = "Pará"
      , code = ""
      , unofficialNames = [ "Pará" ]
      }
    , { name = "Paraíba"
      , code = ""
      , unofficialNames = [ "Paraíba" ]
      }
    , { name = "Pernambuco"
      , code = ""
      , unofficialNames = [ "Pernambuco" ]
      }
    , { name = "Piauí"
      , code = ""
      , unofficialNames = [ "Piauí" ]
      }
    , { name = "Paraná"
      , code = ""
      , unofficialNames = [ "Paraná" ]
      }
    , { name = "Rio de Janeiro"
      , code = ""
      , unofficialNames = [ "Rio de Janeiro" ]
      }
    , { name = "Rio Grande do Norte"
      , code = ""
      , unofficialNames = [ "Rio Grande do Norte" ]
      }
    , { name = "Rondônia"
      , code = ""
      , unofficialNames = [ "Rondônia" ]
      }
    , { name = "Roraima"
      , code = ""
      , unofficialNames = [ "Roraima" ]
      }
    , { name = "Rio Grande do Sul"
      , code = ""
      , unofficialNames = [ "Rio Grande do Sul" ]
      }
    , { name = "Santa Catarina"
      , code = ""
      , unofficialNames = [ "Santa Catarina" ]
      }
    , { name = "Sergipe"
      , code = ""
      , unofficialNames = [ "Sergipe" ]
      }
    , { name = "São Paulo"
      , code = ""
      , unofficialNames = [ "São Paulo" ]
      }
    , { name = "Tocantins"
      , code = ""
      , unofficialNames = [ "Tocantins" ]
      }
    ]


{-| -}
bahamasSubdivisions : List Subdivision
bahamasSubdivisions =
    [ { name = "Acklins and Crooked Islands"
      , code = ""
      , unofficialNames = [ "Acklins and Crooked Islands" ]
      }
    , { name = "Bimini"
      , code = ""
      , unofficialNames = [ "Bimini Islands" ]
      }
    , { name = "Cat Island"
      , code = ""
      , unofficialNames = [ "Cat Island" ]
      }
    , { name = "Exuma"
      , code = ""
      , unofficialNames = [ "Exuma" ]
      }
    , { name = "Fresh Creek"
      , code = ""
      , unofficialNames = [ "Fresh Creek" ]
      }
    , { name = "Freeport"
      , code = ""
      , unofficialNames = [ "Freeport" ]
      }
    , { name = "Governor's Harbour"
      , code = ""
      , unofficialNames = [ "Governor's Harbour" ]
      }
    , { name = "Green Turtle Cay"
      , code = ""
      , unofficialNames = [ "Green Turtle Cay" ]
      }
    , { name = "Harbour Island"
      , code = ""
      , unofficialNames = [ "Harbour Island" ]
      }
    , { name = "High Rock"
      , code = ""
      , unofficialNames = [ "High Rock" ]
      }
    , { name = "Inagua"
      , code = ""
      , unofficialNames = [ "Inagua" ]
      }
    , { name = "Kemps Bay"
      , code = ""
      , unofficialNames = [ "Kemps Bay" ]
      }
    , { name = "Long Island"
      , code = ""
      , unofficialNames = [ "Long Island" ]
      }
    , { name = "Mayaguana"
      , code = ""
      , unofficialNames = [ "Mayaguana" ]
      }
    , { name = "Marsh Harbour"
      , code = ""
      , unofficialNames = [ "Marsh Harbour" ]
      }
    , { name = "Nicholls Town and Berry Islands"
      , code = ""
      , unofficialNames = [ "Nicholls Town and Berry Islands" ]
      }
    , { name = "New Providence"
      , code = ""
      , unofficialNames = [ "New Providence" ]
      }
    , { name = "Ragged Island"
      , code = ""
      , unofficialNames = [ "Ragged Island" ]
      }
    , { name = "Rock Sound"
      , code = ""
      , unofficialNames = [ "Rock Sound" ]
      }
    , { name = "Sandy Point"
      , code = ""
      , unofficialNames = [ "Sandy Point" ]
      }
    , { name = "San Salvador and Rum Cay"
      , code = ""
      , unofficialNames = [ "San Salvador and Rum Cay" ]
      }
    ]


{-| -}
bhutanSubdivisions : List Subdivision
bhutanSubdivisions =
    [ { name = "Paro"
      , code = ""
      , unofficialNames = [ "Paro", "Rinpung" ]
      }
    , { name = "Chhukha"
      , code = ""
      , unofficialNames = [ "Chhuka", "Chuka", "Chukha" ]
      }
    , { name = "Ha"
      , code = ""
      , unofficialNames = [ "Ha", "Haa" ]
      }
    , { name = "Samtse"
      , code = ""
      , unofficialNames = [ "Samchi", "Samtse" ]
      }
    , { name = "Thimphu"
      , code = ""
      , unofficialNames = [ "Thimbu", "Thimphu", "Thimpu", "Timbhu", "Timbu", "Timphu" ]
      }
    , { name = "Tsirang"
      , code = ""
      , unofficialNames = [ "Chirang", "Tsirang" ]
      }
    , { name = "Dagana"
      , code = ""
      , unofficialNames = [ "Daga", "Dagana" ]
      }
    , { name = "Punakha"
      , code = ""
      , unofficialNames = [ "Punakha" ]
      }
    , { name = "Wangdue Phodrang"
      , code = ""
      , unofficialNames = [ "Wangdi Phodrang", "Wangdiphodrang", "Wangdue", "Wangdue Phodrang" ]
      }
    , { name = "Sarpang"
      , code = ""
      , unofficialNames = [ "Gaylegphug", "Geylegphug", "Sarbhang", "Sarpang" ]
      }
    , { name = "Trongsa"
      , code = ""
      , unofficialNames = [ "Tongsa", "Trongsa" ]
      }
    , { name = "Bumthang"
      , code = ""
      , unofficialNames = [ "Bumthang" ]
      }
    , { name = "Zhemgang"
      , code = ""
      , unofficialNames = [ "Shemgang", "Zhemgang" ]
      }
    , { name = "Trashigang"
      , code = ""
      , unofficialNames = [ "Tashigang", "Trashigang" ]
      }
    , { name = "Monggar"
      , code = ""
      , unofficialNames = [ "Monggar", "Mongor" ]
      }
    , { name = "Pemagatshel"
      , code = ""
      , unofficialNames = [ "Pema Gatshel", "Pemagatsel" ]
      }
    , { name = "Lhuentse"
      , code = ""
      , unofficialNames = [ "Lhuentse", "Lhun Tshi", "Lhuntshi", "Lhuntsi" ]
      }
    , { name = "Samdrup Jongkha"
      , code = ""
      , unofficialNames = [ "Samdruk Jongkhar", "Samdrup", "Samdrup Jongkha" ]
      }
    , { name = "Gasa"
      , code = ""
      , unofficialNames = [ "Gaza" ]
      }
    , { name = "Trashi Yangtse"
      , code = ""
      , unofficialNames = [ "Tashiyangtse" ]
      }
    ]


{-| -}
botswanaSubdivisions : List Subdivision
botswanaSubdivisions =
    [ { name = "Central"
      , code = ""
      , unofficialNames = [ "Central" ]
      }
    , { name = "Ghanzi"
      , code = ""
      , unofficialNames = [ "Ghansi", "Khanzi" ]
      }
    , { name = "Kgalagadi"
      , code = ""
      , unofficialNames = [ "Kgalagadi" ]
      }
    , { name = "Kgatleng"
      , code = ""
      , unofficialNames = [ "Kgatleng" ]
      }
    , { name = "Kweneng"
      , code = ""
      , unofficialNames = [ "Kweneng" ]
      }
    , { name = "North-East"
      , code = ""
      , unofficialNames = [ "North-East" ]
      }
    , { name = "North-West"
      , code = ""
      , unofficialNames = [ "North-West" ]
      }
    , { name = "South-East"
      , code = ""
      , unofficialNames = [ "South-East" ]
      }
    , { name = "Southern"
      , code = ""
      , unofficialNames = [ "Southern" ]
      }
    ]


{-| -}
belarusSubdivisions : List Subdivision
belarusSubdivisions =
    [ { name = "Brestskaya voblasts' (be) Brestskaya oblast' (ru)"
      , code = ""
      , unofficialNames = [ "Bierascie", "Brest-Litovsk", "Brestskaja Oblastʿ", "Brestskaja Voblastsʿ", "Brestskaya Oblastʿ", "Brestskaya Voblastsʿ", "Brisk", "Brześć nad Bugiem", "Brześć-Litewski" ]
      }
    , { name = "Homyel'skaya voblasts' (be) Gomel'skaya oblast' (ru)"
      , code = ""
      , unofficialNames = [ "Gomel", "Gomelskaja Oblastʿ", "Gomelskaya Oblastʿ", "Gomelʿ", "Homelskaja Voblastsʿ", "Homelskaya Voblastsʿ", "Homiel", "Homyel" ]
      }
    , { name = "Hrodzenskaya voblasts' (be) Grodnenskaya oblast' (ru)"
      , code = ""
      , unofficialNames = [ "Gardinas", "Grodnenskaja Oblastʿ", "Grodnenskaya Oblastʿ", "Grodno", "Horadnia", "Hrodno", "Hrodzenskaja Voblastsʿ", "Hrodzenskaya Voblastsʿ" ]
      }
    , { name = "Mahilyowskaya voblasts' (be) Mogilevskaya oblast' (ru)"
      , code = ""
      , unofficialNames = [ "Mahiljov", "Mahiljowskaja Voblastsʿ", "Mahilyov", "Mahilyowskaya Voblastsʿ", "Mahilëv", "Mahilëŭ", "Mogilev", "Mogiliov", "Mogiljovskaja Oblastʿ", "Mogilov", "Mogilyovskaya Oblast", "Mogilëv", "Mogilʿov" ]
      }
    , { name = "Minskaya voblasts' (be) Minskaya oblast' (ru)"
      , code = ""
      , unofficialNames = [ "Minskaja Oblastʿ", "Minskaya Oblastʿ", "Minskaya Voblastsʿ" ]
      }
    , { name = "Vitsyebskaya voblasts' (be) Vitebskaya oblast' (ru)"
      , code = ""
      , unofficialNames = [ "Vicebskaja Voblastsʿ", "Vicebskaya Voblastsʿ", "Viciebsk", "Vicjebsk", "Vitebsk", "Vitebskaja Oblastʿ", "Vitebskaya Oblastʿ", "Vitsyebsk" ]
      }
    , { name = "Horad Minsk"
      , code = ""
      , unofficialNames = [ "Gorod Minsk", "Horad Minsk", "Mensk" ]
      }
    ]


{-| -}
belizeSubdivisions : List Subdivision
belizeSubdivisions =
    [ { name = "Belize"
      , code = ""
      , unofficialNames = [ "Belize" ]
      }
    , { name = "Cayo"
      , code = ""
      , unofficialNames = [ "Cayo" ]
      }
    , { name = "Corozal"
      , code = ""
      , unofficialNames = [ "Corozal" ]
      }
    , { name = "Orange Walk"
      , code = ""
      , unofficialNames = [ "Orange Walk" ]
      }
    , { name = "Stann Creek"
      , code = ""
      , unofficialNames = [ "Stann Creek" ]
      }
    , { name = "Toledo"
      , code = ""
      , unofficialNames = [ "Toledo" ]
      }
    ]


{-| -}
canadaSubdivisions : List Subdivision
canadaSubdivisions =
    [ { name = "Alberta"
      , code = ""
      , unofficialNames = [ "Alberta" ]
      }
    , { name = "British Columbia"
      , code = ""
      , unofficialNames = [ "Colombie-Britannique" ]
      }
    , { name = "Manitoba"
      , code = ""
      , unofficialNames = [ "Manitoba" ]
      }
    , { name = "New Brunswick"
      , code = ""
      , unofficialNames = [ "Nouveau-Brunswick" ]
      }
    , { name = "Newfoundland and Labrador"
      , code = ""
      , unofficialNames = [ "Terre-Neuve-et-Labrador", "Newfoundland", "Terre-Neuve" ]
      }
    , { name = "Nova Scotia"
      , code = ""
      , unofficialNames = [ "Nouvelle-Écosse" ]
      }
    , { name = "Northwest Territories"
      , code = ""
      , unofficialNames = [ "Territoires du Nord-Ouest" ]
      }
    , { name = "Nunavut"
      , code = ""
      , unofficialNames = [ "Nunavut" ]
      }
    , { name = "Ontario"
      , code = ""
      , unofficialNames = [ "Ontario" ]
      }
    , { name = "Prince Edward Island"
      , code = ""
      , unofficialNames = [ "Île-du-Prince-Édouard" ]
      }
    , { name = "Quebec"
      , code = ""
      , unofficialNames = [ "Québec" ]
      }
    , { name = "Saskatchewan"
      , code = ""
      , unofficialNames = [ "Saskatchewan" ]
      }
    , { name = "Yukon"
      , code = ""
      , unofficialNames = [ "Yukon Territory" ]
      }
    ]


{-| -}
congoDemocraticRepublicOfTheSubdivisions : List Subdivision
congoDemocraticRepublicOfTheSubdivisions =
    [ { name = "Bas-Congo"
      , code = ""
      , unofficialNames = [ "Bas-Zaire" ]
      }
    , { name = "Bandundu"
      , code = ""
      , unofficialNames = [ "Bandundu" ]
      }
    , { name = "Équateur"
      , code = ""
      , unofficialNames = [ "Équateur" ]
      }
    , { name = "Katanga"
      , code = ""
      , unofficialNames = [ "Shaba" ]
      }
    , { name = "Kasai-Oriental"
      , code = ""
      , unofficialNames = [ "Kasai-Oriental" ]
      }
    , { name = "Kinshasa"
      , code = ""
      , unofficialNames = [ "Kinshasa" ]
      }
    , { name = "Kasai-Occidental"
      , code = ""
      , unofficialNames = [ "Kasai-Occidental" ]
      }
    , { name = "Maniema"
      , code = ""
      , unofficialNames = [ "Maniema" ]
      }
    , { name = "Nord-Kivu"
      , code = ""
      , unofficialNames = [ "Nord-Kivu" ]
      }
    , { name = "Orientale"
      , code = ""
      , unofficialNames = [ "Haut-Zaire", "Orientale" ]
      }
    , { name = "Sud-Kivu"
      , code = ""
      , unofficialNames = [ "Sud-Kivu" ]
      }
    ]


{-| -}
centralAfricanRepublicSubdivisions : List Subdivision
centralAfricanRepublicSubdivisions =
    [ { name = "Ouham"
      , code = ""
      , unofficialNames = [ "Ouham" ]
      }
    , { name = "Bamingui-Bangoran"
      , code = ""
      , unofficialNames = [ "Bamingui-Bangoran" ]
      }
    , { name = "Bangui"
      , code = ""
      , unofficialNames = [ "Bangui" ]
      }
    , { name = "Basse-Kotto"
      , code = ""
      , unofficialNames = [ "Basse-Kotto" ]
      }
    , { name = "Haute-Kotto"
      , code = ""
      , unofficialNames = [ "Haute-Kotto" ]
      }
    , { name = "Haut-Mbomou"
      , code = ""
      , unofficialNames = [ "Haut-Mʿbomou" ]
      }
    , { name = "Mambéré-Kadéï"
      , code = ""
      , unofficialNames = [ "Haut-Sangha" ]
      }
    , { name = "Nana-Grébizi"
      , code = ""
      , unofficialNames = [ "Gribingui", "Nana-Grébisi" ]
      }
    , { name = "Kémo"
      , code = ""
      , unofficialNames = [ "Kémo Gribingui" ]
      }
    , { name = "Lobaye"
      , code = ""
      , unofficialNames = [ "Lobaye" ]
      }
    , { name = "Mbomou"
      , code = ""
      , unofficialNames = [ "Mʿbomou" ]
      }
    , { name = "Ombella-Mpoko"
      , code = ""
      , unofficialNames = [ "Ombella-Mʿpoko", "Ombelle Mpoko" ]
      }
    , { name = "Nana-Mambéré"
      , code = ""
      , unofficialNames = [ "Nana-Mambéré" ]
      }
    , { name = "Ouham-Pendé"
      , code = ""
      , unofficialNames = [ "Ouham-Pendé" ]
      }
    , { name = "Sangha-Mbaéré"
      , code = ""
      , unofficialNames = [ "Mbaeré", "Sangha" ]
      }
    , { name = "Ouaka"
      , code = ""
      , unofficialNames = [ "Ouaka" ]
      }
    , { name = "Vakaga"
      , code = ""
      , unofficialNames = [ "Vakaga" ]
      }
    ]


{-| -}
congoSubdivisions : List Subdivision
congoSubdivisions =
    [ { name = "Bouenza"
      , code = ""
      , unofficialNames = [ "Bouénza" ]
      }
    , { name = "Pool"
      , code = ""
      , unofficialNames = [ "Pool" ]
      }
    , { name = "Sangha"
      , code = ""
      , unofficialNames = [ "Sangha" ]
      }
    , { name = "Plateaux"
      , code = ""
      , unofficialNames = [ "Plateaux" ]
      }
    , { name = "Cuvette-Ouest"
      , code = ""
      , unofficialNames = [ "Cuvette Ouest" ]
      }
    , { name = "Lékoumou"
      , code = ""
      , unofficialNames = [ "Lékoumou" ]
      }
    , { name = "Kouilou"
      , code = ""
      , unofficialNames = [ "Kouilou" ]
      }
    , { name = "Likouala"
      , code = ""
      , unofficialNames = [ "Likouala" ]
      }
    , { name = "Cuvette"
      , code = ""
      , unofficialNames = [ "Cuvette" ]
      }
    , { name = "Niari"
      , code = ""
      , unofficialNames = [ "Niari" ]
      }
    , { name = "Brazzaville"
      , code = ""
      , unofficialNames = [ "Brazzaville" ]
      }
    ]


{-| -}
switzerlandSubdivisions : List Subdivision
switzerlandSubdivisions =
    [ { name = "Aargau (de)"
      , code = ""
      , unofficialNames = [ "Argovie" ]
      }
    , { name = "Appenzell Innerrhoden (de)"
      , code = ""
      , unofficialNames = [ "Appenzell Innerrhoden (de)" ]
      }
    , { name = "Appenzell Ausserrhoden (de)"
      , code = ""
      , unofficialNames = [ "Appenzell-Ausser Rhoden" ]
      }
    , { name = "Bern (de)"
      , code = ""
      , unofficialNames = [ "Berne" ]
      }
    , { name = "Basel-Landschaft (de)"
      , code = ""
      , unofficialNames = [ "Bâle-Campagne" ]
      }
    , { name = "Basel-Stadt (de)"
      , code = ""
      , unofficialNames = [ "Basel", "Basilea", "Basle", "Basel-Stadt", "Bâle-Ville" ]
      }
    , { name = "Fribourg (fr)"
      , code = ""
      , unofficialNames = [ "Freiburg" ]
      }
    , { name = "Genève (fr)"
      , code = ""
      , unofficialNames = [ "Ginevra", "Genève", "Genf", "Ginebra" ]
      }
    , { name = "Glarus (de)"
      , code = ""
      , unofficialNames = [ "Glaris" ]
      }
    , { name = "Graubünden (de)"
      , code = ""
      , unofficialNames = [ "Grigioni", "Grisons" ]
      }
    , { name = "Jura (fr)"
      , code = ""
      , unofficialNames = [ "Jura (fr)" ]
      }
    , { name = "Luzern (de)"
      , code = ""
      , unofficialNames = [ "Lucerna", "Lucerne" ]
      }
    , { name = "Neuchâtel (fr)"
      , code = ""
      , unofficialNames = [ "Neuenburg" ]
      }
    , { name = "Nidwalden (de)"
      , code = ""
      , unofficialNames = [ "Nidwald" ]
      }
    , { name = "Obwalden (de)"
      , code = ""
      , unofficialNames = [ "Obwald" ]
      }
    , { name = "Sankt Gallen (de)"
      , code = ""
      , unofficialNames = [ "Saint Galle", "Sankt Gallen", "Saint-Gall" ]
      }
    , { name = "Schaffhausen (de)"
      , code = ""
      , unofficialNames = [ "Schaffhouse" ]
      }
    , { name = "Solothurn (de)"
      , code = ""
      , unofficialNames = [ "Soleure" ]
      }
    , { name = "Schwyz (de)"
      , code = ""
      , unofficialNames = [ "Schwyz (de)" ]
      }
    , { name = "Thurgau (de)"
      , code = ""
      , unofficialNames = [ "Thurgovie" ]
      }
    , { name = "Ticino (it)"
      , code = ""
      , unofficialNames = [ "Tessin", "Tessin" ]
      }
    , { name = "Uri (de)"
      , code = ""
      , unofficialNames = [ "Uri (de)" ]
      }
    , { name = "Vaud (fr)"
      , code = ""
      , unofficialNames = [ "Waadt" ]
      }
    , { name = "Valais (fr)"
      , code = ""
      , unofficialNames = [ "Vallese", "Wallis" ]
      }
    , { name = "Zug (de)"
      , code = ""
      , unofficialNames = [ "Zoug" ]
      }
    , { name = "Zürich (de)"
      , code = ""
      , unofficialNames = [ "Zurigo", "Zürich", "Zurich" ]
      }
    ]


{-| -}
coteDIvoireSubdivisions : List Subdivision
coteDIvoireSubdivisions =
    [ { name = "Lagunes (Région des)"
      , code = ""
      , unofficialNames = [ "Lagunes (Région des)" ]
      }
    , { name = "Haut-Sassandra (Région du)"
      , code = ""
      , unofficialNames = [ "Haut-Sassandra (Région du)" ]
      }
    , { name = "Savanes (Région des)"
      , code = ""
      , unofficialNames = [ "Savanes (Région des)" ]
      }
    , { name = "Vallée du Bandama (Région de la)"
      , code = ""
      , unofficialNames = [ "Vallée du Bandama (Région de la)" ]
      }
    , { name = "Moyen-Comoé (Région du)"
      , code = ""
      , unofficialNames = [ "Moyen-Comoé (Région du)" ]
      }
    , { name = "18 Montagnes (Région des)"
      , code = ""
      , unofficialNames = [ "18 Montagnes (Région des)" ]
      }
    , { name = "Lacs (Région des)"
      , code = ""
      , unofficialNames = [ "Lacs (Région des)" ]
      }
    , { name = "Zanzan (Région du)"
      , code = ""
      , unofficialNames = [ "Zanzan (Région du)" ]
      }
    , { name = "Bas-Sassandra (Région du)"
      , code = ""
      , unofficialNames = [ "Bas-Sassandra (Région du)" ]
      }
    , { name = "Denguélé (Région du)"
      , code = ""
      , unofficialNames = [ "Denguélé (Région du)" ]
      }
    , { name = "Nzi-Comoé (Région)"
      , code = ""
      , unofficialNames = [ "Nzi-Comoé (Région)" ]
      }
    , { name = "Marahoué (Région de la)"
      , code = ""
      , unofficialNames = [ "Marahoué (Région de la)" ]
      }
    , { name = "Sud-Comoé (Région du)"
      , code = ""
      , unofficialNames = [ "Sud-Comoé (Région du)" ]
      }
    , { name = "Worodougou (Région du)"
      , code = ""
      , unofficialNames = [ "Worodougou (Région du)" ]
      }
    , { name = "Sud-Bandama (Région du)"
      , code = ""
      , unofficialNames = [ "Sud-Bandama (Région du)" ]
      }
    , { name = "Agnébi (Région de l')"
      , code = ""
      , unofficialNames = [ "Agnébi (Région de l')" ]
      }
    , { name = "Bafing (Région du)"
      , code = ""
      , unofficialNames = [ "Bafing (Région du)" ]
      }
    , { name = "Fromager (Région du)"
      , code = ""
      , unofficialNames = [ "Fromager (Région du)" ]
      }
    , { name = "Moyen-Cavally (Région du)"
      , code = ""
      , unofficialNames = [ "Moyen-Cavally (Région du)" ]
      }
    ]


{-| -}
cookIslandsSubdivisions : List Subdivision
cookIslandsSubdivisions =
    [ { name = "Aitutaki"
      , code = ""
      , unofficialNames = [ "Aitutaki" ]
      }
    , { name = "Atiu"
      , code = ""
      , unofficialNames = [ "Atiu" ]
      }
    , { name = "Mangaia"
      , code = ""
      , unofficialNames = [ "Mangaia" ]
      }
    , { name = "Manihiki"
      , code = ""
      , unofficialNames = [ "Manihiki" ]
      }
    , { name = "Ma'uke"
      , code = ""
      , unofficialNames = [ "Ma'uke" ]
      }
    , { name = "Mitiaro"
      , code = ""
      , unofficialNames = [ "Mitiaro" ]
      }
    , { name = "Palmerston"
      , code = ""
      , unofficialNames = [ "Palmerston" ]
      }
    , { name = "Penrhyn"
      , code = ""
      , unofficialNames = [ "Penrhyn" ]
      }
    , { name = "Pukapuka"
      , code = ""
      , unofficialNames = [ "Pukapuka" ]
      }
    , { name = "Rakahanga"
      , code = ""
      , unofficialNames = [ "Rakahanga" ]
      }
    , { name = "Rarotonga"
      , code = ""
      , unofficialNames = [ "Rarotonga" ]
      }
    ]


{-| -}
chileSubdivisions : List Subdivision
chileSubdivisions =
    [ { name = "Aisén del General Carlos Ibáñez del Campo"
      , code = ""
      , unofficialNames = [ "Aisén del General Carlos Ibáñez del Campo", "Aysén" ]
      }
    , { name = "Antofagasta"
      , code = ""
      , unofficialNames = [ "Antofagasta" ]
      }
    , { name = "Araucanía"
      , code = ""
      , unofficialNames = [ "La Araucanía" ]
      }
    , { name = "Arica y Parinacota"
      , code = ""
      , unofficialNames = [ "Arica y Parinacota" ]
      }
    , { name = "Atacama"
      , code = ""
      , unofficialNames = [ "Atacama" ]
      }
    , { name = "Bío-Bío"
      , code = ""
      , unofficialNames = [ "Bíobío" ]
      }
    , { name = "Coquimbo"
      , code = ""
      , unofficialNames = [ "Coquimbo" ]
      }
    , { name = "Libertador General Bernardo O'Higgins"
      , code = ""
      , unofficialNames = [ "General Bernardo O'Higgins", "Libertador", "Libertador OʿHiggins" ]
      }
    , { name = "Los Lagos"
      , code = ""
      , unofficialNames = [ "Los Lagos" ]
      }
    , { name = "Los Ríos"
      , code = ""
      , unofficialNames = [ "Los Ríos" ]
      }
    , { name = "Magallanes"
      , code = ""
      , unofficialNames = [ "Magellantes y la Antártica Chilena" ]
      }
    , { name = "Maule"
      , code = ""
      , unofficialNames = [ "Maule" ]
      }
    , { name = "Región de Ñuble"
      , code = ""
      , unofficialNames = [ "Ñuble" ]
      }
    , { name = "Región Metropolitana de Santiago"
      , code = ""
      , unofficialNames = [ "Metropolitana de Santiago" ]
      }
    , { name = "Tarapacá"
      , code = ""
      , unofficialNames = [ "Tarapacá" ]
      }
    , { name = "Valparaíso"
      , code = ""
      , unofficialNames = [ "Valparaíso" ]
      }
    ]


{-| -}
cameroonSubdivisions : List Subdivision
cameroonSubdivisions =
    [ { name = "Adamaoua"
      , code = ""
      , unofficialNames = [ "Adamawa" ]
      }
    , { name = "Centre"
      , code = ""
      , unofficialNames = [ "Centre" ]
      }
    , { name = "Far North"
      , code = ""
      , unofficialNames = [ "Far North" ]
      }
    , { name = "East"
      , code = ""
      , unofficialNames = [ "East" ]
      }
    , { name = "Littoral"
      , code = ""
      , unofficialNames = [ "Littoral" ]
      }
    , { name = "North"
      , code = ""
      , unofficialNames = [ "Bénoué" ]
      }
    , { name = "North-West"
      , code = ""
      , unofficialNames = [ "North-West" ]
      }
    , { name = "West"
      , code = ""
      , unofficialNames = [ "West" ]
      }
    , { name = "South"
      , code = ""
      , unofficialNames = [ "South" ]
      }
    , { name = "South-West"
      , code = ""
      , unofficialNames = [ "South-West" ]
      }
    ]


{-| -}
chinaSubdivisions : List Subdivision
chinaSubdivisions =
    [ { name = "Beijing"
      , code = ""
      , unofficialNames = [ "Beijing", "Pekín" ]
      }
    , { name = "Tianjin"
      , code = ""
      , unofficialNames = [ "Tianjin" ]
      }
    , { name = "Hebei"
      , code = ""
      , unofficialNames = [ "Hebei" ]
      }
    , { name = "Shanxi"
      , code = ""
      , unofficialNames = [ "Shanxi" ]
      }
    , { name = "Nei Mongol (mn)"
      , code = ""
      , unofficialNames = [ "Inner Mongolia", "Nei Monggol" ]
      }
    , { name = "Liaoning"
      , code = ""
      , unofficialNames = [ "Liaoning" ]
      }
    , { name = "Jilin"
      , code = ""
      , unofficialNames = [ "Jilin" ]
      }
    , { name = "Heilongjiang"
      , code = ""
      , unofficialNames = [ "Heilongjiang" ]
      }
    , { name = "Shanghai"
      , code = ""
      , unofficialNames = [ "Schanghai" ]
      }
    , { name = "Jiangsu"
      , code = ""
      , unofficialNames = [ "Jiangsu" ]
      }
    , { name = "Zhejiang"
      , code = ""
      , unofficialNames = [ "Zhejiang" ]
      }
    , { name = "Anhui"
      , code = ""
      , unofficialNames = [ "Anhui" ]
      }
    , { name = "Fujian"
      , code = ""
      , unofficialNames = [ "Fujian" ]
      }
    , { name = "Jiangxi"
      , code = ""
      , unofficialNames = [ "Jiangxi" ]
      }
    , { name = "Shandong"
      , code = ""
      , unofficialNames = [ "Shandong" ]
      }
    , { name = "Henan"
      , code = ""
      , unofficialNames = [ "Henan" ]
      }
    , { name = "Hubei"
      , code = ""
      , unofficialNames = [ "Hubei" ]
      }
    , { name = "Hunan"
      , code = ""
      , unofficialNames = [ "Hunan" ]
      }
    , { name = "Guangdong"
      , code = ""
      , unofficialNames = [ "Guangdong" ]
      }
    , { name = "Guangxi"
      , code = ""
      , unofficialNames = [ "Guangxi Zhuang" ]
      }
    , { name = "Hainan"
      , code = ""
      , unofficialNames = [ "Hainan" ]
      }
    , { name = "Chongqing"
      , code = ""
      , unofficialNames = [ "Chongqing" ]
      }
    , { name = "Sichuan"
      , code = ""
      , unofficialNames = [ "Sichuan" ]
      }
    , { name = "Guizhou"
      , code = ""
      , unofficialNames = [ "Guizhou" ]
      }
    , { name = "Yunnan"
      , code = ""
      , unofficialNames = [ "Yunnan" ]
      }
    , { name = "Xizang"
      , code = ""
      , unofficialNames = [ "Tibet" ]
      }
    , { name = "Shaanxi"
      , code = ""
      , unofficialNames = [ "Shaanxi" ]
      }
    , { name = "Gansu"
      , code = ""
      , unofficialNames = [ "Gansu" ]
      }
    , { name = "Qinghai"
      , code = ""
      , unofficialNames = [ "Qinghai" ]
      }
    , { name = "Ningxia"
      , code = ""
      , unofficialNames = [ "Ningxia Hui" ]
      }
    , { name = "Xinjiang"
      , code = ""
      , unofficialNames = [ "Uighur", "Uygur" ]
      }
    , { name = "Taiwan *"
      , code = ""
      , unofficialNames = [ "Taiwan *" ]
      }
    , { name = "Xianggang (zh) **"
      , code = ""
      , unofficialNames = [ "Xianggang", "Hongkong" ]
      }
    , { name = "Aomen (zh) ***"
      , code = ""
      , unofficialNames = [ "Aomen (zh) ***" ]
      }
    ]


{-| -}
colombiaSubdivisions : List Subdivision
colombiaSubdivisions =
    [ { name = "Amazonas"
      , code = ""
      , unofficialNames = [ "Amazonas" ]
      }
    , { name = "Antioquia"
      , code = ""
      , unofficialNames = [ "Antioquia" ]
      }
    , { name = "Arauca"
      , code = ""
      , unofficialNames = [ "Arauca" ]
      }
    , { name = "Atlántico"
      , code = ""
      , unofficialNames = [ "Atlántico" ]
      }
    , { name = "Bolívar"
      , code = ""
      , unofficialNames = [ "Bolívar" ]
      }
    , { name = "Boyacá"
      , code = ""
      , unofficialNames = [ "Boyacá" ]
      }
    , { name = "Caldas"
      , code = ""
      , unofficialNames = [ "Caldas" ]
      }
    , { name = "Caquetá"
      , code = ""
      , unofficialNames = [ "Caquetá" ]
      }
    , { name = "Casanare"
      , code = ""
      , unofficialNames = [ "Casanare" ]
      }
    , { name = "Cauca"
      , code = ""
      , unofficialNames = [ "Cauca" ]
      }
    , { name = "Cesar"
      , code = ""
      , unofficialNames = [ "Cesar" ]
      }
    , { name = "Chocó"
      , code = ""
      , unofficialNames = [ "Chocó" ]
      }
    , { name = "Córdoba"
      , code = ""
      , unofficialNames = [ "Córdoba" ]
      }
    , { name = "Cundinamarca"
      , code = ""
      , unofficialNames = [ "Cundinamarca" ]
      }
    , { name = "Distrito Capital de Bogotá"
      , code = ""
      , unofficialNames = [ "Santafé de Bogotá Distrito Capital" ]
      }
    , { name = "Guainía"
      , code = ""
      , unofficialNames = [ "Guainía" ]
      }
    , { name = "Guaviare"
      , code = ""
      , unofficialNames = [ "Guaviare" ]
      }
    , { name = "Huila"
      , code = ""
      , unofficialNames = [ "Huila" ]
      }
    , { name = "La Guajira"
      , code = ""
      , unofficialNames = [ "La Guajira" ]
      }
    , { name = "Magdalena"
      , code = ""
      , unofficialNames = [ "Magdalena" ]
      }
    , { name = "Meta"
      , code = ""
      , unofficialNames = [ "Meta" ]
      }
    , { name = "Nariño"
      , code = ""
      , unofficialNames = [ "Nariño" ]
      }
    , { name = "Norte de Santander"
      , code = ""
      , unofficialNames = [ "Norte de Santander" ]
      }
    , { name = "Putumayo"
      , code = ""
      , unofficialNames = [ "Putumayo" ]
      }
    , { name = "Quindío"
      , code = ""
      , unofficialNames = [ "Quindío" ]
      }
    , { name = "Risaralda"
      , code = ""
      , unofficialNames = [ "Risaralda" ]
      }
    , { name = "Santander"
      , code = ""
      , unofficialNames = [ "Santander" ]
      }
    , { name = "San Andrés, Providencia y Santa Catalina"
      , code = ""
      , unofficialNames = [ "San Andrés, Providencia y Santa Catalina" ]
      }
    , { name = "Sucre"
      , code = ""
      , unofficialNames = [ "Sucre" ]
      }
    , { name = "Tolima"
      , code = ""
      , unofficialNames = [ "Tolima" ]
      }
    , { name = "Valle del Cauca"
      , code = ""
      , unofficialNames = [ "Valle del Cauca" ]
      }
    , { name = "Vaupés"
      , code = ""
      , unofficialNames = [ "Vaupés" ]
      }
    , { name = "Vichada"
      , code = ""
      , unofficialNames = [ "Vichada" ]
      }
    ]


{-| -}
costaRicaSubdivisions : List Subdivision
costaRicaSubdivisions =
    [ { name = "Alajuela"
      , code = ""
      , unofficialNames = [ "Alajuela" ]
      }
    , { name = "Cartago"
      , code = ""
      , unofficialNames = [ "Cartago" ]
      }
    , { name = "Guanacaste"
      , code = ""
      , unofficialNames = [ "Guanacaste" ]
      }
    , { name = "Heredia"
      , code = ""
      , unofficialNames = [ "Heredia" ]
      }
    , { name = "Limón"
      , code = ""
      , unofficialNames = [ "Limón" ]
      }
    , { name = "Puntarenas"
      , code = ""
      , unofficialNames = [ "Puntarenas" ]
      }
    , { name = "San José"
      , code = ""
      , unofficialNames = [ "San José" ]
      }
    ]


{-| -}
cubaSubdivisions : List Subdivision
cubaSubdivisions =
    [ { name = "Pinar del Río"
      , code = ""
      , unofficialNames = [ "Pinar del Río" ]
      }
    , { name = "La Habana"
      , code = ""
      , unofficialNames = [ "La Habana" ]
      }
    , { name = "Matanzas"
      , code = ""
      , unofficialNames = [ "Matanzas" ]
      }
    , { name = "Villa Clara"
      , code = ""
      , unofficialNames = [ "Villa Clara" ]
      }
    , { name = "Cienfuegos"
      , code = ""
      , unofficialNames = [ "Cienfuegos" ]
      }
    , { name = "Sancti Spíritus"
      , code = ""
      , unofficialNames = [ "Sancti Spíritus" ]
      }
    , { name = "Ciego de Ávila"
      , code = ""
      , unofficialNames = [ "Ciego de Ávila" ]
      }
    , { name = "Camagüey"
      , code = ""
      , unofficialNames = [ "Camagüey" ]
      }
    , { name = "Las Tunas"
      , code = ""
      , unofficialNames = [ "Las Tunas" ]
      }
    , { name = "Holguín"
      , code = ""
      , unofficialNames = [ "Holguín" ]
      }
    , { name = "Granma"
      , code = ""
      , unofficialNames = [ "Granma" ]
      }
    , { name = "Santiago de Cuba"
      , code = ""
      , unofficialNames = [ "Santiago de Cuba" ]
      }
    , { name = "Guantánamo"
      , code = ""
      , unofficialNames = [ "Guantánamo" ]
      }
    , { name = "Artemisa"
      , code = ""
      , unofficialNames = [ "Artemisa" ]
      }
    , { name = "Mayabeque"
      , code = ""
      , unofficialNames = [ "Mayabeque" ]
      }
    , { name = "Isla de la Juventud"
      , code = ""
      , unofficialNames = [ "Isla de la Juventud" ]
      }
    ]


{-| -}
caboVerdeSubdivisions : List Subdivision
caboVerdeSubdivisions =
    [ { name = "Brava"
      , code = ""
      , unofficialNames = [ "Brava" ]
      }
    , { name = "Boa Vista"
      , code = ""
      , unofficialNames = [ "Boa Vista" ]
      }
    , { name = "Santa Catarina"
      , code = ""
      , unofficialNames = [ "Santa Catarina" ]
      }
    , { name = "Santa Cruz"
      , code = ""
      , unofficialNames = [ "Santa Cruz" ]
      }
    , { name = "Calheta de São Miguel"
      , code = ""
      , unofficialNames = [ "Calheta de São Miguel" ]
      }
    , { name = "Maio"
      , code = ""
      , unofficialNames = [ "Maio" ]
      }
    , { name = "Mosteiros"
      , code = ""
      , unofficialNames = [ "Mosteiros" ]
      }
    , { name = "Paúl"
      , code = ""
      , unofficialNames = [ "Paúl" ]
      }
    , { name = "Porto Novo"
      , code = ""
      , unofficialNames = [ "Porto Novo" ]
      }
    , { name = "Praia"
      , code = ""
      , unofficialNames = [ "Praia" ]
      }
    , { name = "Ribeira Grande"
      , code = ""
      , unofficialNames = [ "Santiago" ]
      }
    , { name = "São Domingos"
      , code = ""
      , unofficialNames = [ "São Domingos" ]
      }
    , { name = "São Filipe"
      , code = ""
      , unofficialNames = [ "São Filipe" ]
      }
    , { name = "Sal"
      , code = ""
      , unofficialNames = [ "Sal" ]
      }
    , { name = "São Nicolau"
      , code = ""
      , unofficialNames = [ "São Nicolau" ]
      }
    , { name = "São Vicente"
      , code = ""
      , unofficialNames = [ "São Vicente" ]
      }
    , { name = "Tarrafal"
      , code = ""
      , unofficialNames = [ "Tarrafal" ]
      }
    ]


{-| -}
curacaoSubdivisions : List Subdivision
curacaoSubdivisions =
    []


{-| -}
cyprusSubdivisions : List Subdivision
cyprusSubdivisions =
    [ { name = "Lefkosia"
      , code = ""
      , unofficialNames = [ "Lefkosia" ]
      }
    , { name = "Lemesos"
      , code = ""
      , unofficialNames = [ "Lemesos" ]
      }
    , { name = "Larnaka"
      , code = ""
      , unofficialNames = [ "Larnaka" ]
      }
    , { name = "Ammochostos"
      , code = ""
      , unofficialNames = [ "Ammochostos" ]
      }
    , { name = "Pafos"
      , code = ""
      , unofficialNames = [ "Pafos" ]
      }
    , { name = "Keryneia"
      , code = ""
      , unofficialNames = [ "Keryneia" ]
      }
    ]


{-| -}
czechRepublicSubdivisions : List Subdivision
czechRepublicSubdivisions =
    [ { name = "Jihočeský kraj"
      , code = ""
      , unofficialNames = [ "Budějovický", "Českobudějovický" ]
      }
    , { name = "Jihomoravský kraj "
      , code = ""
      , unofficialNames = [ "Brněnský" ]
      }
    , { name = "Karlovarský kraj"
      , code = ""
      , unofficialNames = [ "Karlovarský kraj" ]
      }
    , { name = "Královéhradecký kraj"
      , code = ""
      , unofficialNames = [ "Královéhradecký kraj" ]
      }
    , { name = "Liberecký kraj"
      , code = ""
      , unofficialNames = [ "Liberecký kraj" ]
      }
    , { name = "Moravskoslezský kraj"
      , code = ""
      , unofficialNames = [ "Ostravský" ]
      }
    , { name = "Olomoucký kraj"
      , code = ""
      , unofficialNames = [ "Olomoucký kraj" ]
      }
    , { name = "Pardubický kraj"
      , code = ""
      , unofficialNames = [ "Pardubický kraj" ]
      }
    , { name = "Plzeňský kraj"
      , code = ""
      , unofficialNames = [ "Plzeňský kraj" ]
      }
    , { name = "Praha, hlavní město"
      , code = ""
      , unofficialNames = [ "Hlavní město Praha", "Praha", "Prag", "Prague" ]
      }
    , { name = "Středočeský kraj"
      , code = ""
      , unofficialNames = [ "Central Bohemia", "Mittelböhmen", "Středočeský" ]
      }
    , { name = "Ústecký kraj"
      , code = ""
      , unofficialNames = [ "Ústecký kraj" ]
      }
    , { name = "Vysočina"
      , code = ""
      , unofficialNames = [ "Jihlavský" ]
      }
    , { name = "Zlínský kraj"
      , code = ""
      , unofficialNames = [ "Zlínský kraj" ]
      }
    ]


{-| -}
germanySubdivisions : List Subdivision
germanySubdivisions =
    [ { name = "Brandenburg"
      , code = ""
      , unofficialNames = [ "Brandenbourg", "Brandenburgo" ]
      }
    , { name = "Berlin"
      , code = ""
      , unofficialNames = [ "Berlín" ]
      }
    , { name = "Baden-Württemberg"
      , code = ""
      , unofficialNames = [ "Baden-Württemberg" ]
      }
    , { name = "Bayern"
      , code = ""
      , unofficialNames = [ "Bavière", "Bayern", "Bavaria" ]
      }
    , { name = "Bremen"
      , code = ""
      , unofficialNames = [ "Brème" ]
      }
    , { name = "Hessen"
      , code = ""
      , unofficialNames = [ "Hessen", "Hesse" ]
      }
    , { name = "Hamburg"
      , code = ""
      , unofficialNames = [ "Amburgo", "Hambourg", "Hamburgo" ]
      }
    , { name = "Mecklenburg-Vorpommern"
      , code = ""
      , unofficialNames = [ "Mecklenburg-Vorpommern" ]
      }
    , { name = "Niedersachsen"
      , code = ""
      , unofficialNames = [ "Niedersachsen" ]
      }
    , { name = "Nordrhein-Westfalen"
      , code = ""
      , unofficialNames = [ "Nordrhein-Westfalen", "Rhénanie-Westphalie" ]
      }
    , { name = "Rheinland-Pfalz"
      , code = ""
      , unofficialNames = [ "Rheinland-Pfalz", "Rhénanie-Palatinat", "Rhineland-Palatinate" ]
      }
    , { name = "Schleswig-Holstein"
      , code = ""
      , unofficialNames = [ "Schleswig-Holstein" ]
      }
    , { name = "Saarland"
      , code = ""
      , unofficialNames = [ "Saarland" ]
      }
    , { name = "Sachsen"
      , code = ""
      , unofficialNames = [ "Sachsen" ]
      }
    , { name = "Sachsen-Anhalt"
      , code = ""
      , unofficialNames = [ "Sachsen-Anhalt" ]
      }
    , { name = "Thüringen"
      , code = ""
      , unofficialNames = [ "Thüringen" ]
      }
    ]


{-| -}
djiboutiSubdivisions : List Subdivision
djiboutiSubdivisions =
    [ { name = "Arta"
      , code = ""
      , unofficialNames = [ "Arta" ]
      }
    , { name = "Ali Sabieh"
      , code = ""
      , unofficialNames = [ "Ali Sabieh", "Ali Sabih" ]
      }
    , { name = "Dikhil"
      , code = ""
      , unofficialNames = [ "Dikhil", "Dikkil" ]
      }
    , { name = "Djibouti"
      , code = ""
      , unofficialNames = [ "Djibouti" ]
      }
    , { name = "Obock"
      , code = ""
      , unofficialNames = [ "Obock", "Obok" ]
      }
    , { name = "Tadjourah"
      , code = ""
      , unofficialNames = [ "Tadjoura", "Tadjourah", "Tajura" ]
      }
    ]


{-| -}
denmarkSubdivisions : List Subdivision
denmarkSubdivisions =
    [ { name = "København"
      , code = ""
      , unofficialNames = [ "København" ]
      }
    , { name = "Frederiksborg"
      , code = ""
      , unofficialNames = [ "Frederiksborg" ]
      }
    , { name = "Roskilde"
      , code = ""
      , unofficialNames = [ "Roskilde" ]
      }
    , { name = "Vestsjælland"
      , code = ""
      , unofficialNames = [ "Vestsjælland" ]
      }
    , { name = "Storstrøm"
      , code = ""
      , unofficialNames = [ "Storstrøm" ]
      }
    , { name = "Bornholm"
      , code = ""
      , unofficialNames = [ "Bornholm" ]
      }
    , { name = "Fyn"
      , code = ""
      , unofficialNames = [ "Fyn" ]
      }
    , { name = "Sønderjylland"
      , code = ""
      , unofficialNames = [ "Sønderjylland" ]
      }
    , { name = "Ribe"
      , code = ""
      , unofficialNames = [ "Ribe" ]
      }
    , { name = "Vejle"
      , code = ""
      , unofficialNames = [ "Vejle" ]
      }
    , { name = "Ringkøbing"
      , code = ""
      , unofficialNames = [ "Ringkøbing" ]
      }
    , { name = "Århus"
      , code = ""
      , unofficialNames = [ "Århus" ]
      }
    , { name = "Viborg"
      , code = ""
      , unofficialNames = [ "Viborg" ]
      }
    , { name = "Nordjylland"
      , code = ""
      , unofficialNames = [ "Nordjylland" ]
      }
    , { name = "København City"
      , code = ""
      , unofficialNames = [ "København City" ]
      }
    , { name = "Frederiksberg City"
      , code = ""
      , unofficialNames = [ "Frederiksberg City" ]
      }
    , { name = "North Jutland"
      , code = ""
      , unofficialNames = [ "Nordjylland" ]
      }
    , { name = "Central Jutland"
      , code = ""
      , unofficialNames = [ "Midtjylland" ]
      }
    , { name = "South Denmark"
      , code = ""
      , unofficialNames = [ "Syddanmark" ]
      }
    , { name = "Capital"
      , code = ""
      , unofficialNames = [ "Region Hovedstaden" ]
      }
    , { name = "Zeeland"
      , code = ""
      , unofficialNames = [ "Sjælland" ]
      }
    ]


{-| -}
dominicaSubdivisions : List Subdivision
dominicaSubdivisions =
    [ { name = "Saint Andrew"
      , code = ""
      , unofficialNames = [ "Saint Andrew" ]
      }
    , { name = "Saint David"
      , code = ""
      , unofficialNames = [ "Saint David" ]
      }
    , { name = "Saint George"
      , code = ""
      , unofficialNames = [ "Saint George" ]
      }
    , { name = "Saint John"
      , code = ""
      , unofficialNames = [ "Saint John" ]
      }
    , { name = "Saint Joseph"
      , code = ""
      , unofficialNames = [ "Saint Joseph" ]
      }
    , { name = "Saint Luke"
      , code = ""
      , unofficialNames = [ "Saint Luke" ]
      }
    , { name = "Saint Mark"
      , code = ""
      , unofficialNames = [ "Saint Mark" ]
      }
    , { name = "Saint Patrick"
      , code = ""
      , unofficialNames = [ "Saint Patrick" ]
      }
    , { name = "Saint Paul"
      , code = ""
      , unofficialNames = [ "Saint Paul" ]
      }
    , { name = "Saint Peter"
      , code = ""
      , unofficialNames = [ "Saint Peter" ]
      }
    ]


{-| -}
dominicanRepublicSubdivisions : List Subdivision
dominicanRepublicSubdivisions =
    [ { name = "Distrito Nacional (Santo Domingo)"
      , code = ""
      , unofficialNames = [ "Distrito Nacional (Santo Domingo)" ]
      }
    , { name = "Azua"
      , code = ""
      , unofficialNames = [ "Azua" ]
      }
    , { name = "Bahoruco"
      , code = ""
      , unofficialNames = [ "Bahoruco", "Baoruco" ]
      }
    , { name = "Barahona"
      , code = ""
      , unofficialNames = [ "Barahona" ]
      }
    , { name = "Dajabón"
      , code = ""
      , unofficialNames = [ "Dajabón" ]
      }
    , { name = "Duarte"
      , code = ""
      , unofficialNames = [ "Duarte" ]
      }
    , { name = "La Estrelleta [Elías Piña]"
      , code = ""
      , unofficialNames = [ "La Estrelleta [Elías Piña]" ]
      }
    , { name = "El Seybo [El Seibo]"
      , code = ""
      , unofficialNames = [ "El Seybo [El Seibo]" ]
      }
    , { name = "Espaillat"
      , code = ""
      , unofficialNames = [ "Espaillat" ]
      }
    , { name = "Independencia"
      , code = ""
      , unofficialNames = [ "Independencia" ]
      }
    , { name = "La Altagracia"
      , code = ""
      , unofficialNames = [ "La Altagracia" ]
      }
    , { name = "La Romana"
      , code = ""
      , unofficialNames = [ "La Romana" ]
      }
    , { name = "La Vega"
      , code = ""
      , unofficialNames = [ "La Vega" ]
      }
    , { name = "María Trinidad Sánchez"
      , code = ""
      , unofficialNames = [ "María Trinidad Sánchez" ]
      }
    , { name = "Monte Cristi"
      , code = ""
      , unofficialNames = [ "Monte Cristi" ]
      }
    , { name = "Pedernales"
      , code = ""
      , unofficialNames = [ "Pedernales" ]
      }
    , { name = "Peravia"
      , code = ""
      , unofficialNames = [ "Peravia" ]
      }
    , { name = "Puerto Plata"
      , code = ""
      , unofficialNames = [ "Puerto Plata" ]
      }
    , { name = "Salcedo"
      , code = ""
      , unofficialNames = [ "Salcedo" ]
      }
    , { name = "Samaná"
      , code = ""
      , unofficialNames = [ "Samaná" ]
      }
    , { name = "San Cristóbal"
      , code = ""
      , unofficialNames = [ "San Cristóbal" ]
      }
    , { name = "San Juan"
      , code = ""
      , unofficialNames = [ "San Juan" ]
      }
    , { name = "San Pedro de Macorís"
      , code = ""
      , unofficialNames = [ "San Pedro de Macorís" ]
      }
    , { name = "Sánchez Ramírez"
      , code = ""
      , unofficialNames = [ "Sánchez Ramírez" ]
      }
    , { name = "Santiago"
      , code = ""
      , unofficialNames = [ "Santiago" ]
      }
    , { name = "Santiago Rodríguez"
      , code = ""
      , unofficialNames = [ "Santiago Rodríguez" ]
      }
    , { name = "Valverde"
      , code = ""
      , unofficialNames = [ "Valverde" ]
      }
    , { name = "Monseñor Nouel"
      , code = ""
      , unofficialNames = [ "Monseñor Nouel" ]
      }
    , { name = "Monte Plata"
      , code = ""
      , unofficialNames = [ "Monte Plata" ]
      }
    , { name = "Hato Mayor"
      , code = ""
      , unofficialNames = [ "Hato Mayor" ]
      }
    , { name = "San Jose de Ocoa"
      , code = ""
      , unofficialNames = [ "San Jose de Ocoa" ]
      }
    ]


{-| -}
algeriaSubdivisions : List Subdivision
algeriaSubdivisions =
    [ { name = "Adrar"
      , code = ""
      , unofficialNames = [ "Adrar" ]
      }
    , { name = "Chlef"
      , code = ""
      , unofficialNames = [ "Al Asnam", "Al Asnām", "Chelef", "Chelf", "Chlef", "Chlif", "Ech Cheliff", "El Asnam" ]
      }
    , { name = "Laghouat"
      , code = ""
      , unofficialNames = [ "Laghouat" ]
      }
    , { name = "Oum el Bouaghi"
      , code = ""
      , unofficialNames = [ "Canrobert", "Oum el Bouaghi" ]
      }
    , { name = "Batna"
      , code = ""
      , unofficialNames = [ "Batna" ]
      }
    , { name = "Béjaïa"
      , code = ""
      , unofficialNames = [ "Bejaïa", "Béjaïa", "Bougie" ]
      }
    , { name = "Biskra"
      , code = ""
      , unofficialNames = [ "Beskra", "Biskara", "Biskra" ]
      }
    , { name = "Béchar"
      , code = ""
      , unofficialNames = [ "Béchar" ]
      }
    , { name = "Blida"
      , code = ""
      , unofficialNames = [ "El Boulaida", "Blida" ]
      }
    , { name = "Bouira"
      , code = ""
      , unofficialNames = [ "Bouira" ]
      }
    , { name = "Tamanghasset"
      , code = ""
      , unofficialNames = [ "Fort-Laperrine", "Tamanghist", "Tamanrasset" ]
      }
    , { name = "Tébessa"
      , code = ""
      , unofficialNames = [ "Tbessa", "Tébessa" ]
      }
    , { name = "Tlemcen"
      , code = ""
      , unofficialNames = [ "Tilimsen", "Tlemcen" ]
      }
    , { name = "Tiaret"
      , code = ""
      , unofficialNames = [ "Tihert", "Tiaret" ]
      }
    , { name = "Tizi Ouzou"
      , code = ""
      , unofficialNames = [ "Tizi-Ouzou" ]
      }
    , { name = "Alger"
      , code = ""
      , unofficialNames = [ "Al-Jazair", "Al-Jazaʿir", "El Djazair", "al-Jazāʿir", "Algier", "Alger" ]
      }
    , { name = "Djelfa"
      , code = ""
      , unofficialNames = [ "El Djelfa", "Djelfa" ]
      }
    , { name = "Jijel"
      , code = ""
      , unofficialNames = [ "Djidjel", "Djidjelli", "Jijel", "Djidjeli" ]
      }
    , { name = "Sétif"
      , code = ""
      , unofficialNames = [ "Setif", "Stif", "Sétif" ]
      }
    , { name = "Saïda"
      , code = ""
      , unofficialNames = [ "Saida", "Saïda" ]
      }
    , { name = "Skikda"
      , code = ""
      , unofficialNames = [ "Skikda" ]
      }
    , { name = "Sidi Bel Abbès"
      , code = ""
      , unofficialNames = [ "Sidi bel Abbès" ]
      }
    , { name = "Annaba"
      , code = ""
      , unofficialNames = [ "Bona", "Bône", "Annaba" ]
      }
    , { name = "Guelma"
      , code = ""
      , unofficialNames = [ "Guelma" ]
      }
    , { name = "Constantine"
      , code = ""
      , unofficialNames = [ "Ksontina", "Qacentina", "Qoussantina", "Qusanţīnah", "Constantine" ]
      }
    , { name = "Médéa"
      , code = ""
      , unofficialNames = [ "Lemdiyya", "al-Midyah", "Médéa" ]
      }
    , { name = "Mostaganem"
      , code = ""
      , unofficialNames = [ "Mestghanem", "Mustaghanam", "Mustaghanim", "Mustaġānam", "Mostaganem" ]
      }
    , { name = "Msila"
      , code = ""
      , unofficialNames = [ "MʿSila", "Msila" ]
      }
    , { name = "Mascara"
      , code = ""
      , unofficialNames = [ "Mouaskar", "Mascara" ]
      }
    , { name = "Ouargla"
      , code = ""
      , unofficialNames = [ "Wargla", "Ouargla" ]
      }
    , { name = "Oran"
      , code = ""
      , unofficialNames = [ "Ouahran", "Oran" ]
      }
    , { name = "El Bayadh"
      , code = ""
      , unofficialNames = [ "El Bayadh" ]
      }
    , { name = "Illizi"
      , code = ""
      , unofficialNames = [ "Illizi" ]
      }
    , { name = "Bordj Bou Arréridj"
      , code = ""
      , unofficialNames = [ "Bordj Bou Arreridj" ]
      }
    , { name = "Boumerdès"
      , code = ""
      , unofficialNames = [ "Boumerdès" ]
      }
    , { name = "El Tarf"
      , code = ""
      , unofficialNames = [ "El Taref", "at-Tarf", "El Tarf" ]
      }
    , { name = "Tindouf"
      , code = ""
      , unofficialNames = [ "Tindouf" ]
      }
    , { name = "Tissemsilt"
      , code = ""
      , unofficialNames = [ "Tissemselt", "Tissemsilt" ]
      }
    , { name = "El Oued"
      , code = ""
      , unofficialNames = [ "El Ouâdi", "El Wad", "El Oued" ]
      }
    , { name = "Khenchela"
      , code = ""
      , unofficialNames = [ "Khenchla", "Khenchela" ]
      }
    , { name = "Souk Ahras"
      , code = ""
      , unofficialNames = [ "Souq Ahras", "Souk Ahras" ]
      }
    , { name = "Tipaza"
      , code = ""
      , unofficialNames = [ "Tipaza" ]
      }
    , { name = "Mila"
      , code = ""
      , unofficialNames = [ "Mila" ]
      }
    , { name = "Aïn Defla"
      , code = ""
      , unofficialNames = [ "Aïn Eddefla", "Aïn Defla" ]
      }
    , { name = "Naama"
      , code = ""
      , unofficialNames = [ "Naama" ]
      }
    , { name = "Aïn Témouchent"
      , code = ""
      , unofficialNames = [ "Aïn Temouchent" ]
      }
    , { name = "Ghardaïa"
      , code = ""
      , unofficialNames = [ "Ghardaïa" ]
      }
    , { name = "Relizane"
      , code = ""
      , unofficialNames = [ "Ghilizane", "Ighil Izane", "Rélizane", "Relizane" ]
      }
    ]


{-| -}
ecuadorSubdivisions : List Subdivision
ecuadorSubdivisions =
    [ { name = "Azuay"
      , code = ""
      , unofficialNames = [ "Azuay" ]
      }
    , { name = "Bolívar"
      , code = ""
      , unofficialNames = [ "Bolívar" ]
      }
    , { name = "Carchi"
      , code = ""
      , unofficialNames = [ "Carchi" ]
      }
    , { name = "Orellana"
      , code = ""
      , unofficialNames = [ "Orellana" ]
      }
    , { name = "Esmeraldas"
      , code = ""
      , unofficialNames = [ "Esmeraldas" ]
      }
    , { name = "Cañar"
      , code = ""
      , unofficialNames = [ "Cañar" ]
      }
    , { name = "Guayas"
      , code = ""
      , unofficialNames = [ "Guayas" ]
      }
    , { name = "Chimborazo"
      , code = ""
      , unofficialNames = [ "Chimborazo" ]
      }
    , { name = "Imbabura"
      , code = ""
      , unofficialNames = [ "Imbabura" ]
      }
    , { name = "Loja"
      , code = ""
      , unofficialNames = [ "Loja" ]
      }
    , { name = "Manabí"
      , code = ""
      , unofficialNames = [ "Manabí" ]
      }
    , { name = "Napo"
      , code = ""
      , unofficialNames = [ "Napo" ]
      }
    , { name = "El Oro"
      , code = ""
      , unofficialNames = [ "El Oro" ]
      }
    , { name = "Pichincha"
      , code = ""
      , unofficialNames = [ "Pichincha" ]
      }
    , { name = "Los Ríos"
      , code = ""
      , unofficialNames = [ "Los Ríos" ]
      }
    , { name = "Morona-Santiago"
      , code = ""
      , unofficialNames = [ "Morona-Santiago" ]
      }
    , { name = "Tungurahua"
      , code = ""
      , unofficialNames = [ "Tungurahua" ]
      }
    , { name = "Sucumbíos"
      , code = ""
      , unofficialNames = [ "Sucumbíos" ]
      }
    , { name = "Galápagos"
      , code = ""
      , unofficialNames = [ "Galápagos" ]
      }
    , { name = "Cotopaxi"
      , code = ""
      , unofficialNames = [ "Cotopaxi" ]
      }
    , { name = "Pastaza"
      , code = ""
      , unofficialNames = [ "Pastaza" ]
      }
    , { name = "Zamora-Chinchipe"
      , code = ""
      , unofficialNames = [ "Zamora-Chinchipe" ]
      }
    , { name = "Santo Domingo de los Tsachilas"
      , code = ""
      , unofficialNames = [ "Santo Domingo de los Tsachilas" ]
      }
    , { name = "Santa Elena"
      , code = ""
      , unofficialNames = [ "Santa Elena" ]
      }
    ]


{-| -}
estoniaSubdivisions : List Subdivision
estoniaSubdivisions =
    [ { name = "Harjumaa"
      , code = ""
      , unofficialNames = [ "Harjumaa" ]
      }
    , { name = "Hiiumaa"
      , code = ""
      , unofficialNames = [ "Dagden", "Dagö" ]
      }
    , { name = "Ida-Virumaa"
      , code = ""
      , unofficialNames = [ "Ida-Virumaa" ]
      }
    , { name = "Jõgevamaa"
      , code = ""
      , unofficialNames = [ "Jogevamaa" ]
      }
    , { name = "Järvamaa"
      , code = ""
      , unofficialNames = [ "Järvamaa" ]
      }
    , { name = "Läänemaa"
      , code = ""
      , unofficialNames = [ "Läänemaa" ]
      }
    , { name = "Lääne-Virumaa"
      , code = ""
      , unofficialNames = [ "Lääne-Virumaa" ]
      }
    , { name = "Põlvamaa"
      , code = ""
      , unofficialNames = [ "Polvamaa" ]
      }
    , { name = "Pärnumaa"
      , code = ""
      , unofficialNames = [ "Pärnumaa" ]
      }
    , { name = "Raplamaa"
      , code = ""
      , unofficialNames = [ "Raplamaa" ]
      }
    , { name = "Saaremaa"
      , code = ""
      , unofficialNames = [ "Saare", "Ösel" ]
      }
    , { name = "Tartumaa"
      , code = ""
      , unofficialNames = [ "Tartumaa" ]
      }
    , { name = "Valgamaa"
      , code = ""
      , unofficialNames = [ "Valgamaa" ]
      }
    , { name = "Viljandimaa"
      , code = ""
      , unofficialNames = [ "Viljandimaa" ]
      }
    , { name = "Võrumaa"
      , code = ""
      , unofficialNames = [ "Vorumaa" ]
      }
    ]


{-| -}
egyptSubdivisions : List Subdivision
egyptSubdivisions =
    [ { name = "Al Iskandariyah"
      , code = ""
      , unofficialNames = [ "El Iskandariya", "al-Iskandariyah", "al-Iskandarīyah", "Alexandria", "Alexandrie", "Alexandria" ]
      }
    , { name = "Aswan"
      , code = ""
      , unofficialNames = [ "Aswān", "Assuan", "Assouan" ]
      }
    , { name = "Asyut"
      , code = ""
      , unofficialNames = [ "Asiut", "Assyût", "Siut", "Asyūţ", "Assiut", "Assiout" ]
      }
    , { name = "Al Bahr al Ahmar"
      , code = ""
      , unofficialNames = [ "El Bahr el Ahmar" ]
      }
    , { name = "Al Buhayrah"
      , code = ""
      , unofficialNames = [ "El Buhayra", "al-Buh̨ayrah" ]
      }
    , { name = "Bani Suwayf"
      , code = ""
      , unofficialNames = [ "Bani Suwayf", "Banī Suwayf" ]
      }
    , { name = "Al Qahirah"
      , code = ""
      , unofficialNames = [ "El Qahira", "Le Caire-sur-Mer", "al-Qāhirah", "Kairo", "Caire", "Cairo" ]
      }
    , { name = "Ad Daqahliyah"
      , code = ""
      , unofficialNames = [ "Dakahlia", "El Daqahliya", "ad-Daqahliyah" ]
      }
    , { name = "Dumyat"
      , code = ""
      , unofficialNames = [ "Damiat", "Dumyat", "Dumyāţ", "Damiette" ]
      }
    , { name = "Al Fayyum"
      , code = ""
      , unofficialNames = [ "El Faiyūm", "al-Fayyum", "al-Fayyūm" ]
      }
    , { name = "Al Gharbiyah"
      , code = ""
      , unofficialNames = [ "El Gharbiya", "Gharbiya", "al-Garbiyah", "al-Ġarbīyah" ]
      }
    , { name = "Al Jizah"
      , code = ""
      , unofficialNames = [ "El Giza", "Gise", "Giza", "Gizah", "Jiza", "Jizah", "al-Jīzah", "Giseh", "Gîza" ]
      }
    , { name = "Al Ismā`īlīyah"
      , code = ""
      , unofficialNames = [ "El Ismailia", "Ismaʿiliya", "al-Ismailiyah", "al-Ismāīlīyah" ]
      }
    , { name = "Janub Sina'"
      , code = ""
      , unofficialNames = [ "Sina al-Janūbīyah", "Sinai al-Janubiyah", "South Sinai" ]
      }
    , { name = "Al Qalyubiyah"
      , code = ""
      , unofficialNames = [ "El Qalubiya", "al-Qalyubiyah" ]
      }
    , { name = "Kafr ash Shaykh"
      , code = ""
      , unofficialNames = [ "Kafr-ash-Shaykh", "Kafr-aš-Šayẖ" ]
      }
    , { name = "Qina"
      , code = ""
      , unofficialNames = [ "Qina", "Qinā" ]
      }
    , { name = "al-Uqsur"
      , code = ""
      , unofficialNames = [ "al-Uqsur", "al-Uqşur", "Luxor", "Louxor" ]
      }
    , { name = "Al Minya"
      , code = ""
      , unofficialNames = [ "El Minya", "Minia", "al-Minya", "al-Minyā" ]
      }
    , { name = "Al Minufiyah"
      , code = ""
      , unofficialNames = [ "El Minufiya", "Menufiya", "al-Minufiyah", "al-Minūfīyah" ]
      }
    , { name = "Matrūh"
      , code = ""
      , unofficialNames = [ "Matrah", "Matrūh" ]
      }
    , { name = "Būr Sa`īd"
      , code = ""
      , unofficialNames = [ "Bur Said", "Būr Saʿīd" ]
      }
    , { name = "Suhaj"
      , code = ""
      , unofficialNames = [ "Sawhaj", "Suhag", "Suhaj", "Sūhaj", "Sawhāj" ]
      }
    , { name = "Ash Sharqiyah"
      , code = ""
      , unofficialNames = [ "ash-Sharqiyah", "aš-Šarqīyah" ]
      }
    , { name = "Shamal Sina'"
      , code = ""
      , unofficialNames = [ "Shamal Sina", "Sina aš-Šamālīyah", "Sinai ash-Shamaliyah", "Šamāl Sīna" ]
      }
    , { name = "As Suways"
      , code = ""
      , unofficialNames = [ "El Suweiz", "as-Suways" ]
      }
    , { name = "Al Wadi al Jadid"
      , code = ""
      , unofficialNames = [ "El Wadi el Jadid", "El Wadi el Jedid" ]
      }
    ]


{-| -}
westernSaharaSubdivisions : List Subdivision
westernSaharaSubdivisions =
    [ { name = "Boujdour"
      , code = ""
      , unofficialNames = [ "Bojador", "Boujdour", "Bu Jaydur", "Bujdur", "Cabo Bojador" ]
      }
    , { name = "Es Semara"
      , code = ""
      , unofficialNames = [ "Es-Smara", "Essemara", "Semara", "Smara", "as-Samarah", "as-Smara" ]
      }
    , { name = "Laayoune"
      , code = ""
      , unofficialNames = [ "Aaiún", "Al Ayūn", "Al-Uyun", "Ayūn", "El Aaiún", "La Youne", "Laayoune", "Laʿyoun", "Lâayoun", "al-Ayun" ]
      }
    , { name = "Oued el Dahab"
      , code = ""
      , unofficialNames = [ "Oued edh Dheheb", "Wad adh-Dhahab" ]
      }
    ]


{-| -}
eritreaSubdivisions : List Subdivision
eritreaSubdivisions =
    [ { name = "Anseba"
      , code = ""
      , unofficialNames = [ "Anseba" ]
      }
    , { name = "Debubawi Keyih Bahri [Debub-Keih-Bahri]"
      , code = ""
      , unofficialNames = [ "Debubawi Keyih Bahri [Debub-Keih-Bahri]" ]
      }
    , { name = "Debub"
      , code = ""
      , unofficialNames = [ "Debub" ]
      }
    , { name = "Gash-Barka"
      , code = ""
      , unofficialNames = [ "Gash-Barka" ]
      }
    , { name = "Maakel [Maekel]"
      , code = ""
      , unofficialNames = [ "Maakel [Maekel]" ]
      }
    , { name = "Semenawi Keyih Bahri [Semien-Keih-Bahri]"
      , code = ""
      , unofficialNames = [ "Semenawi Keyih Bahri [Semien-Keih-Bahri]" ]
      }
    ]


{-| -}
spainSubdivisions : List Subdivision
spainSubdivisions =
    [ { name = "Alicante/Alacant"
      , code = ""
      , unofficialNames = [ "Alicante/Alacant", "Alacant/Alicante", "Alicante", "Alacant" ]
      }
    , { name = "Albacete"
      , code = ""
      , unofficialNames = [ "Albacete" ]
      }
    , { name = "Almería"
      , code = ""
      , unofficialNames = [ "Almería" ]
      }
    , { name = "Ávila"
      , code = ""
      , unofficialNames = [ "Ávila" ]
      }
    , { name = "Barcelona"
      , code = ""
      , unofficialNames = [ "Barcelona", "Barna" ]
      }
    , { name = "Badajoz"
      , code = ""
      , unofficialNames = [ "Badajoz" ]
      }
    , { name = "Bizkaia"
      , code = ""
      , unofficialNames = [ "Bizkaia", "Vizcaya" ]
      }
    , { name = "Burgos"
      , code = ""
      , unofficialNames = [ "Burgos" ]
      }
    , { name = "Coruña, A"
      , code = ""
      , unofficialNames = [ "Coruña, A", "A Coruña", "Corunna", "La Coruña", "Coruña" ]
      }
    , { name = "Cádiz"
      , code = ""
      , unofficialNames = [ "Cádiz" ]
      }
    , { name = "Cáceres"
      , code = ""
      , unofficialNames = [ "Cáceres" ]
      }
    , { name = "Ceuta"
      , code = ""
      , unofficialNames = [ "Ceuta", "Sebta" ]
      }
    , { name = "Córdoba"
      , code = ""
      , unofficialNames = [ "Córdoba" ]
      }
    , { name = "Ciudad Real"
      , code = ""
      , unofficialNames = [ "Ciudad Real" ]
      }
    , { name = "Castellón/Castelló"
      , code = ""
      , unofficialNames = [ "Castellón/Castelló", "Castelló/Castellón", "Castellón", "Castelló" ]
      }
    , { name = "Cuenca"
      , code = ""
      , unofficialNames = [ "Cuenca" ]
      }
    , { name = "Palmas, Las"
      , code = ""
      , unofficialNames = [ "Palmas, Las", "Las Palmas", "Las Palmas de Gran Canaria" ]
      }
    , { name = "Girona"
      , code = ""
      , unofficialNames = [ "Girona", "Gerona" ]
      }
    , { name = "Granada"
      , code = ""
      , unofficialNames = [ "Granada" ]
      }
    , { name = "Guadalajara"
      , code = ""
      , unofficialNames = [ "Guadalajara" ]
      }
    , { name = "Huelva"
      , code = ""
      , unofficialNames = [ "Huelva" ]
      }
    , { name = "Huesca"
      , code = ""
      , unofficialNames = [ "Huesca" ]
      }
    , { name = "Jaén"
      , code = ""
      , unofficialNames = [ "Jaén" ]
      }
    , { name = "Lleida"
      , code = ""
      , unofficialNames = [ "Lleida", "Lérida" ]
      }
    , { name = "León"
      , code = ""
      , unofficialNames = [ "León" ]
      }
    , { name = "Rioja, La"
      , code = ""
      , unofficialNames = [ "Rioja, La", "La Rioja", "Rioja", "Logroño" ]
      }
    , { name = "Lugo"
      , code = ""
      , unofficialNames = [ "Lugo" ]
      }
    , { name = "Madrid"
      , code = ""
      , unofficialNames = [ "Madrid" ]
      }
    , { name = "Málaga"
      , code = ""
      , unofficialNames = [ "Málaga" ]
      }
    , { name = "Melilla"
      , code = ""
      , unofficialNames = [ "Melilla" ]
      }
    , { name = "Murcia"
      , code = ""
      , unofficialNames = [ "Murcia" ]
      }
    , { name = "Navarra"
      , code = ""
      , unofficialNames = [ "Navarra", "Navarre", "Nafarroa" ]
      }
    , { name = "Asturias"
      , code = ""
      , unofficialNames = [ "Asturias", "Oviedo" ]
      }
    , { name = "Ourense"
      , code = ""
      , unofficialNames = [ "Ourense", "Orense" ]
      }
    , { name = "Palencia"
      , code = ""
      , unofficialNames = [ "Palencia" ]
      }
    , { name = "Balears, Illes"
      , code = ""
      , unofficialNames = [ "Balears, Illes", "Baleares", "Illes Balears", "Islas Baleares", "Balearic Islands" ]
      }
    , { name = "Pontevedra"
      , code = ""
      , unofficialNames = [ "Pontevedra" ]
      }
    , { name = "Cantabria"
      , code = ""
      , unofficialNames = [ "Cantabria", "Santander" ]
      }
    , { name = "Salamanca"
      , code = ""
      , unofficialNames = [ "Salamanca" ]
      }
    , { name = "Sevilla"
      , code = ""
      , unofficialNames = [ "Sevilla" ]
      }
    , { name = "Segovia"
      , code = ""
      , unofficialNames = [ "Segovia" ]
      }
    , { name = "Soria"
      , code = ""
      , unofficialNames = [ "Soria" ]
      }
    , { name = "Gipuzkoa"
      , code = ""
      , unofficialNames = [ "Gipuzkoa", "Guipúzcoa" ]
      }
    , { name = "Tarragona"
      , code = ""
      , unofficialNames = [ "Tarragona" ]
      }
    , { name = "Teruel"
      , code = ""
      , unofficialNames = [ "Teruel" ]
      }
    , { name = "Santa Cruz de Tenerife"
      , code = ""
      , unofficialNames = [ "Santa Cruz de Tenerife", "Tenerife" ]
      }
    , { name = "Toledo"
      , code = ""
      , unofficialNames = [ "Toledo" ]
      }
    , { name = "Valencia/València"
      , code = ""
      , unofficialNames = [ "Valencia/València", "València/Valencia", "Valencia", "València" ]
      }
    , { name = "Valladolid"
      , code = ""
      , unofficialNames = [ "Valladolid" ]
      }
    , { name = "Araba/Álava"
      , code = ""
      , unofficialNames = [ "Araba/Álava", "Araba", "Álava" ]
      }
    , { name = "Zaragoza"
      , code = ""
      , unofficialNames = [ "Zaragoza" ]
      }
    , { name = "Zamora"
      , code = ""
      , unofficialNames = [ "Zamora" ]
      }
    ]


{-| -}
ethiopiaSubdivisions : List Subdivision
ethiopiaSubdivisions =
    [ { name = "Adis Abeba"
      , code = ""
      , unofficialNames = [ "Adis Abeba" ]
      }
    , { name = "Afar"
      , code = ""
      , unofficialNames = [ "Affar" ]
      }
    , { name = "Amara"
      , code = ""
      , unofficialNames = [ "Amara" ]
      }
    , { name = "Binshangul Gumuz"
      , code = ""
      , unofficialNames = [ "Binshangul Gumuz" ]
      }
    , { name = "Dire Dawa"
      , code = ""
      , unofficialNames = [ "Dire Dawa" ]
      }
    , { name = "Gambela Hizboch"
      , code = ""
      , unofficialNames = [ "Gambela" ]
      }
    , { name = "Hareri Hizb"
      , code = ""
      , unofficialNames = [ "Hareri Hizb" ]
      }
    , { name = "Oromiya"
      , code = ""
      , unofficialNames = [ "Oromiya" ]
      }
    , { name = "YeDebub Biheroch Bihereseboch na Hizboch"
      , code = ""
      , unofficialNames = [ "YeDebub Biheroch Bihereseboch na Hizboch" ]
      }
    , { name = "Sumale"
      , code = ""
      , unofficialNames = [ "Sumale" ]
      }
    , { name = "Tigray"
      , code = ""
      , unofficialNames = [ "Tigray" ]
      }
    ]


{-| -}
finlandSubdivisions : List Subdivision
finlandSubdivisions =
    [ { name = "Ahvenanmaan lääni"
      , code = ""
      , unofficialNames = [ "Åland" ]
      }
    , { name = "Etelä-Suomen lääni"
      , code = ""
      , unofficialNames = [ "Etelä-Suomen lääni" ]
      }
    , { name = "Itä-Suomen lääni"
      , code = ""
      , unofficialNames = [ "Östra Nyland", "Itä-Uusimaa", "Uusima de lʿEst" ]
      }
    , { name = "Lapin lääni"
      , code = ""
      , unofficialNames = [ "Lappland", "Lappi", "Lappland", "Laponie" ]
      }
    , { name = "Länsi-Suomen lääni"
      , code = ""
      , unofficialNames = [ "Länsi-Suomen lääni" ]
      }
    , { name = "Oulun lääni"
      , code = ""
      , unofficialNames = [ "Oulun lääni" ]
      }
    ]


{-| -}
fijiSubdivisions : List Subdivision
fijiSubdivisions =
    [ { name = "Central"
      , code = ""
      , unofficialNames = [ "Central" ]
      }
    , { name = "Eastern"
      , code = ""
      , unofficialNames = [ "Eastern" ]
      }
    , { name = "Northern"
      , code = ""
      , unofficialNames = [ "Northern" ]
      }
    , { name = "Rotuma"
      , code = ""
      , unofficialNames = [ "Rotuma" ]
      }
    , { name = "Western"
      , code = ""
      , unofficialNames = [ "Western" ]
      }
    ]


{-| -}
micronesiaFederatedStatesOfSubdivisions : List Subdivision
micronesiaFederatedStatesOfSubdivisions =
    [ { name = "Kosrae"
      , code = ""
      , unofficialNames = [ "Kosrae" ]
      }
    , { name = "Pohnpei"
      , code = ""
      , unofficialNames = [ "Ascension", "Ponape" ]
      }
    , { name = "Chuuk"
      , code = ""
      , unofficialNames = [ "Chuk", "Hogoley Islands", "Truk" ]
      }
    , { name = "Yap"
      , code = ""
      , unofficialNames = [ "Yap" ]
      }
    ]


{-| -}
faroeIslandsSubdivisions : List Subdivision
faroeIslandsSubdivisions =
    [ { name = "Nordoyar"
      , code = ""
      , unofficialNames = [ "Nordoyar" ]
      }
    , { name = "Eysturoyar"
      , code = ""
      , unofficialNames = [ "Eysturoyar" ]
      }
    , { name = "Sandoyar"
      , code = ""
      , unofficialNames = [ "Sandoyar" ]
      }
    , { name = "Streymoyar"
      , code = ""
      , unofficialNames = [ "Streymoyar" ]
      }
    , { name = "Suduroyar"
      , code = ""
      , unofficialNames = [ "Suduroyar" ]
      }
    , { name = "Vaga"
      , code = ""
      , unofficialNames = [ "Vaga" ]
      }
    ]


{-| -}
franceSubdivisions : List Subdivision
franceSubdivisions =
    [ { name = "Ain"
      , code = ""
      , unofficialNames = [ "Ain" ]
      }
    , { name = "Aisne"
      , code = ""
      , unofficialNames = [ "Aisne" ]
      }
    , { name = "Allier"
      , code = ""
      , unofficialNames = [ "Allier" ]
      }
    , { name = "Alpes-de-Haute-Provence"
      , code = ""
      , unofficialNames = [ "Alpes-de-Haute-Provence" ]
      }
    , { name = "Hautes-Alpes"
      , code = ""
      , unofficialNames = [ "Hautes-Alpes" ]
      }
    , { name = "Alpes-Maritimes"
      , code = ""
      , unofficialNames = [ "Alpes-Maritimes" ]
      }
    , { name = "Ardèche"
      , code = ""
      , unofficialNames = [ "Ardèche" ]
      }
    , { name = "Ardennes"
      , code = ""
      , unofficialNames = [ "Ardennes" ]
      }
    , { name = "Ariège"
      , code = ""
      , unofficialNames = [ "Ariège" ]
      }
    , { name = "Aube"
      , code = ""
      , unofficialNames = [ "Aube" ]
      }
    , { name = "Aude"
      , code = ""
      , unofficialNames = [ "Aude" ]
      }
    , { name = "Aveyron"
      , code = ""
      , unofficialNames = [ "Aveyron" ]
      }
    , { name = "Bouches-du-Rhône"
      , code = ""
      , unofficialNames = [ "Bouches-du-Rhône" ]
      }
    , { name = "Calvados"
      , code = ""
      , unofficialNames = [ "Calvados" ]
      }
    , { name = "Cantal"
      , code = ""
      , unofficialNames = [ "Cantal" ]
      }
    , { name = "Charente"
      , code = ""
      , unofficialNames = [ "Charente" ]
      }
    , { name = "Charente-Maritime"
      , code = ""
      , unofficialNames = [ "Charente-Maritime" ]
      }
    , { name = "Cher"
      , code = ""
      , unofficialNames = [ "Cher" ]
      }
    , { name = "Corrèze"
      , code = ""
      , unofficialNames = [ "Corrèze" ]
      }
    , { name = "Côte-d'Or"
      , code = ""
      , unofficialNames = [ "Côte-d'Or" ]
      }
    , { name = "Côtes-d'Armor"
      , code = ""
      , unofficialNames = [ "Côtes-du-Nord" ]
      }
    , { name = "Creuse"
      , code = ""
      , unofficialNames = [ "Creuse" ]
      }
    , { name = "Dordogne"
      , code = ""
      , unofficialNames = [ "Dordogne" ]
      }
    , { name = "Doubs"
      , code = ""
      , unofficialNames = [ "Doubs" ]
      }
    , { name = "Drôme"
      , code = ""
      , unofficialNames = [ "Drôme" ]
      }
    , { name = "Eure"
      , code = ""
      , unofficialNames = [ "Eure" ]
      }
    , { name = "Eure-et-Loir"
      , code = ""
      , unofficialNames = [ "Eure-et-Loir" ]
      }
    , { name = "Finistère"
      , code = ""
      , unofficialNames = [ "Finistère" ]
      }
    , { name = "Corse-du-Sud"
      , code = ""
      , unofficialNames = [ "Corse-du-Sud" ]
      }
    , { name = "Haute-Corse"
      , code = ""
      , unofficialNames = [ "Haute-Corse" ]
      }
    , { name = "Gard"
      , code = ""
      , unofficialNames = [ "Gard" ]
      }
    , { name = "Haute-Garonne"
      , code = ""
      , unofficialNames = [ "Haute-Garonne" ]
      }
    , { name = "Gers"
      , code = ""
      , unofficialNames = [ "Gers" ]
      }
    , { name = "Gironde"
      , code = ""
      , unofficialNames = [ "Gironde" ]
      }
    , { name = "Hérault"
      , code = ""
      , unofficialNames = [ "Hérault" ]
      }
    , { name = "Ille-et-Vilaine"
      , code = ""
      , unofficialNames = [ "Ille-et-Vilaine" ]
      }
    , { name = "Indre"
      , code = ""
      , unofficialNames = [ "Indre" ]
      }
    , { name = "Indre-et-Loire"
      , code = ""
      , unofficialNames = [ "Indre-et-Loire" ]
      }
    , { name = "Isère"
      , code = ""
      , unofficialNames = [ "Isère" ]
      }
    , { name = "Jura"
      , code = ""
      , unofficialNames = [ "Jura" ]
      }
    , { name = "Landes"
      , code = ""
      , unofficialNames = [ "Landes" ]
      }
    , { name = "Loir-et-Cher"
      , code = ""
      , unofficialNames = [ "Loir-et-Cher" ]
      }
    , { name = "Loire"
      , code = ""
      , unofficialNames = [ "Loire" ]
      }
    , { name = "Haute-Loire"
      , code = ""
      , unofficialNames = [ "Haute-Loire" ]
      }
    , { name = "Loire-Atlantique"
      , code = ""
      , unofficialNames = [ "Loire-Atlantique" ]
      }
    , { name = "Loiret"
      , code = ""
      , unofficialNames = [ "Loiret" ]
      }
    , { name = "Lot"
      , code = ""
      , unofficialNames = [ "Lot" ]
      }
    , { name = "Lot-et-Garonne"
      , code = ""
      , unofficialNames = [ "Lot-et-Garonne" ]
      }
    , { name = "Lozère"
      , code = ""
      , unofficialNames = [ "Lozère" ]
      }
    , { name = "Maine-et-Loire"
      , code = ""
      , unofficialNames = [ "Maine-et-Loire" ]
      }
    , { name = "Manche"
      , code = ""
      , unofficialNames = [ "Manche" ]
      }
    , { name = "Marne"
      , code = ""
      , unofficialNames = [ "Marne" ]
      }
    , { name = "Haute-Marne"
      , code = ""
      , unofficialNames = [ "Haute-Marne" ]
      }
    , { name = "Mayenne"
      , code = ""
      , unofficialNames = [ "Mayenne" ]
      }
    , { name = "Meurthe-et-Moselle"
      , code = ""
      , unofficialNames = [ "Meurthe-et-Moselle" ]
      }
    , { name = "Meuse"
      , code = ""
      , unofficialNames = [ "Meuse" ]
      }
    , { name = "Morbihan"
      , code = ""
      , unofficialNames = [ "Morbihan" ]
      }
    , { name = "Moselle"
      , code = ""
      , unofficialNames = [ "Moselle" ]
      }
    , { name = "Nièvre"
      , code = ""
      , unofficialNames = [ "Nièvre" ]
      }
    , { name = "Nord"
      , code = ""
      , unofficialNames = [ "Nord" ]
      }
    , { name = "Oise"
      , code = ""
      , unofficialNames = [ "Oise" ]
      }
    , { name = "Orne"
      , code = ""
      , unofficialNames = [ "Orne" ]
      }
    , { name = "Pas-de-Calais"
      , code = ""
      , unofficialNames = [ "Pas-de-Calais" ]
      }
    , { name = "Puy-de-Dôme"
      , code = ""
      , unofficialNames = [ "Puy-de-Dôme" ]
      }
    , { name = "Pyrénées-Atlantiques"
      , code = ""
      , unofficialNames = [ "Pyrénées-Atlantiques" ]
      }
    , { name = "Hautes-Pyrénées"
      , code = ""
      , unofficialNames = [ "Hautes-Pyrénées" ]
      }
    , { name = "Pyrénées-Orientales"
      , code = ""
      , unofficialNames = [ "Pyrénées-Orientales" ]
      }
    , { name = "Bas-Rhin"
      , code = ""
      , unofficialNames = [ "Bas-Rhin" ]
      }
    , { name = "Haut-Rhin"
      , code = ""
      , unofficialNames = [ "Haut-Rhin" ]
      }
    , { name = "Rhône"
      , code = ""
      , unofficialNames = [ "Rhône" ]
      }
    , { name = "Haute-Saône"
      , code = ""
      , unofficialNames = [ "Haute-Saône" ]
      }
    , { name = "Saône-et-Loire"
      , code = ""
      , unofficialNames = [ "Saône-et-Loire" ]
      }
    , { name = "Sarthe"
      , code = ""
      , unofficialNames = [ "Sarthe" ]
      }
    , { name = "Savoie"
      , code = ""
      , unofficialNames = [ "Savoie" ]
      }
    , { name = "Haute-Savoie"
      , code = ""
      , unofficialNames = [ "Haute-Savoie" ]
      }
    , { name = "Paris"
      , code = ""
      , unofficialNames = [ "Paris" ]
      }
    , { name = "Seine-Maritime"
      , code = ""
      , unofficialNames = [ "Seine-Maritime" ]
      }
    , { name = "Seine-et-Marne"
      , code = ""
      , unofficialNames = [ "Seine-et-Marne" ]
      }
    , { name = "Yvelines"
      , code = ""
      , unofficialNames = [ "Yvelines" ]
      }
    , { name = "Deux-Sèvres"
      , code = ""
      , unofficialNames = [ "Deux-Sèvres" ]
      }
    , { name = "Somme"
      , code = ""
      , unofficialNames = [ "Somme" ]
      }
    , { name = "Tarn"
      , code = ""
      , unofficialNames = [ "Tarn" ]
      }
    , { name = "Tarn-et-Garonne"
      , code = ""
      , unofficialNames = [ "Tarn-et-Garonne" ]
      }
    , { name = "Var"
      , code = ""
      , unofficialNames = [ "Var" ]
      }
    , { name = "Vaucluse"
      , code = ""
      , unofficialNames = [ "Vaucluse" ]
      }
    , { name = "Vendée"
      , code = ""
      , unofficialNames = [ "Vendée" ]
      }
    , { name = "Vienne"
      , code = ""
      , unofficialNames = [ "Vienne" ]
      }
    , { name = "Haute-Vienne"
      , code = ""
      , unofficialNames = [ "Haute-Vienne" ]
      }
    , { name = "Vosges"
      , code = ""
      , unofficialNames = [ "Vosges" ]
      }
    , { name = "Yonne"
      , code = ""
      , unofficialNames = [ "Yonne" ]
      }
    , { name = "Territoire de Belfort"
      , code = ""
      , unofficialNames = [ "Territoire de Belfort" ]
      }
    , { name = "Essonne"
      , code = ""
      , unofficialNames = [ "Essonne" ]
      }
    , { name = "Hauts-de-Seine"
      , code = ""
      , unofficialNames = [ "Hauts-de-Seine" ]
      }
    , { name = "Seine-Saint-Denis"
      , code = ""
      , unofficialNames = [ "Seine-Saint-Denis" ]
      }
    , { name = "Val-de-Marne"
      , code = ""
      , unofficialNames = [ "Val-de-Marne" ]
      }
    , { name = "Val-d'Oise"
      , code = ""
      , unofficialNames = [ "Val-d'Oise" ]
      }
    , { name = "Nouvelle-Calédonie"
      , code = ""
      , unofficialNames = [ "Nouvelle-Calédonie" ]
      }
    , { name = "Polynésie française"
      , code = ""
      , unofficialNames = [ "Polynésie française" ]
      }
    , { name = "Saint-Pierre-et-Miquelon"
      , code = ""
      , unofficialNames = [ "Saint-Pierre-et-Miquelon" ]
      }
    , { name = "Terres Australes Françaises"
      , code = ""
      , unofficialNames = [ "Terres Australes Françaises" ]
      }
    , { name = "Wallis et Futuna"
      , code = ""
      , unofficialNames = [ "Wallis et Futuna" ]
      }
    , { name = "Mayotte"
      , code = ""
      , unofficialNames = [ "Mayotte" ]
      }
    , { name = "Auvergne-Rhône-Alpes"
      , code = ""
      , unofficialNames = [ "Auvergne-Rhône-Alpes", "Auvèrnhe-Ròse-Aups", "Ôvèrgne-Rôno-Arpes" ]
      }
    , { name = "Bourgogne-Franche-Comté"
      , code = ""
      , unofficialNames = [ "Bourgogne-Franche-Comté", "Borgogne-Franche-Comtât" ]
      }
    , { name = "Bretagne"
      , code = ""
      , unofficialNames = [ "Bretagne", "Breizh" ]
      }
    , { name = "Centre-Val de Loire"
      , code = ""
      , unofficialNames = [ "Centre-Val de Loire" ]
      }
    , { name = "Corse"
      , code = ""
      , unofficialNames = [ "Corse", "Corsica" ]
      }
    , { name = "Grand Est"
      , code = ""
      , unofficialNames = [ "Grand Est" ]
      }
    , { name = "Hauts-de-France"
      , code = ""
      , unofficialNames = [ "Hauts-de-France" ]
      }
    , { name = "Île-de-France"
      , code = ""
      , unofficialNames = [ "Île-de-France", "Région Parisienne" ]
      }
    , { name = "Normandie"
      , code = ""
      , unofficialNames = [ "Normandie", "Normaundie" ]
      }
    , { name = "Nouvelle-Aquitaine"
      , code = ""
      , unofficialNames = [ "Nouvelle-Aquitaine" ]
      }
    , { name = "Occitanie"
      , code = ""
      , unofficialNames = [ "Occitanie", "Occitània" ]
      }
    , { name = "Pays de la Loire"
      , code = ""
      , unofficialNames = [ "Pays de la Loire", "Broioù al Liger" ]
      }
    , { name = "Provence-Alpes-Côte d'Azur"
      , code = ""
      , unofficialNames = [ "Provence-Alpes-Côte d'Azur", "PACA" ]
      }
    ]


{-| -}
gabonSubdivisions : List Subdivision
gabonSubdivisions =
    [ { name = "Estuaire"
      , code = ""
      , unofficialNames = [ "Estuaire" ]
      }
    , { name = "Haut-Ogooué"
      , code = ""
      , unofficialNames = [ "Haut-Ogooué" ]
      }
    , { name = "Moyen-Ogooué"
      , code = ""
      , unofficialNames = [ "Moyen-Ogooué" ]
      }
    , { name = "Ngounié"
      , code = ""
      , unofficialNames = [ "Nʿgounié" ]
      }
    , { name = "Nyanga"
      , code = ""
      , unofficialNames = [ "Nyanga" ]
      }
    , { name = "Ogooué-Ivindo"
      , code = ""
      , unofficialNames = [ "Ogooué-Ivindo" ]
      }
    , { name = "Ogooué-Lolo"
      , code = ""
      , unofficialNames = [ "Ogooué-Lolo" ]
      }
    , { name = "Ogooué-Maritime"
      , code = ""
      , unofficialNames = [ "Ogooué-Maritime" ]
      }
    , { name = "Woleu-Ntem"
      , code = ""
      , unofficialNames = [ "Woleu-Nʿtem" ]
      }
    ]


{-| -}
unitedKingdomOfGreatBritainAndNorthernIrelandSubdivisions : List Subdivision
unitedKingdomOfGreatBritainAndNorthernIrelandSubdivisions =
    [ { name = "Aberdeenshire"
      , code = ""
      , unofficialNames = [ "Siorrachd Obar Dheathain" ]
      }
    , { name = "Aberdeen City"
      , code = ""
      , unofficialNames = [ "Aberdeen City" ]
      }
    , { name = "Argyll and Bute"
      , code = ""
      , unofficialNames = [ "Argyll and Bute" ]
      }
    , { name = "Isle of Anglesey [Sir Ynys Môn GB-YNM]"
      , code = ""
      , unofficialNames = [ "Ynys MÃ´n" ]
      }
    , { name = "Angus"
      , code = ""
      , unofficialNames = [ "Angus" ]
      }
    , { name = "Antrim"
      , code = ""
      , unofficialNames = [ "Antrim" ]
      }
    , { name = "Ards"
      , code = ""
      , unofficialNames = [ "Ards" ]
      }
    , { name = "Armagh"
      , code = ""
      , unofficialNames = [ "Armagh" ]
      }
    , { name = "Bath and North East Somerset"
      , code = ""
      , unofficialNames = [ "Bath and North East Somerset" ]
      }
    , { name = "Blackburn with Darwen"
      , code = ""
      , unofficialNames = [ "Blackburn with Darwen" ]
      }
    , { name = "Bedfordshire"
      , code = ""
      , unofficialNames = [ "Bedfordshire" ]
      }
    , { name = "Barking and Dagenham"
      , code = ""
      , unofficialNames = [ "Barking and Dagenham" ]
      }
    , { name = "Brent"
      , code = ""
      , unofficialNames = [ "Brent" ]
      }
    , { name = "Bexley"
      , code = ""
      , unofficialNames = [ "Bexley" ]
      }
    , { name = "Belfast"
      , code = ""
      , unofficialNames = [ "Belfast" ]
      }
    , { name = "Bridgend [Pen-y-bont ar Ogwr GB-POG]"
      , code = ""
      , unofficialNames = [ "Pen-y-bont ar Ogwr" ]
      }
    , { name = "Blaenau Gwent"
      , code = ""
      , unofficialNames = [ "Blaenau Gwent" ]
      }
    , { name = "Birmingham"
      , code = ""
      , unofficialNames = [ "Birmingham" ]
      }
    , { name = "Buckinghamshire"
      , code = ""
      , unofficialNames = [ "Buckinghamshire" ]
      }
    , { name = "Ballymena"
      , code = ""
      , unofficialNames = [ "Ballymena" ]
      }
    , { name = "Ballymoney"
      , code = ""
      , unofficialNames = [ "Ballymoney" ]
      }
    , { name = "Bournemouth"
      , code = ""
      , unofficialNames = [ "Bournemouth" ]
      }
    , { name = "Banbridge"
      , code = ""
      , unofficialNames = [ "Banbridge" ]
      }
    , { name = "Barnet"
      , code = ""
      , unofficialNames = [ "Barnet" ]
      }
    , { name = "Brighton and Hove"
      , code = ""
      , unofficialNames = [ "Brighton and Hove" ]
      }
    , { name = "Barnsley"
      , code = ""
      , unofficialNames = [ "Barnsley" ]
      }
    , { name = "Bolton"
      , code = ""
      , unofficialNames = [ "Bolton" ]
      }
    , { name = "Blackpool"
      , code = ""
      , unofficialNames = [ "Blackpool" ]
      }
    , { name = "Bracknell Forest"
      , code = ""
      , unofficialNames = [ "Bracknell Forest" ]
      }
    , { name = "Bradford"
      , code = ""
      , unofficialNames = [ "Bradford" ]
      }
    , { name = "Bromley"
      , code = ""
      , unofficialNames = [ "Bromley" ]
      }
    , { name = "Bristol, City of"
      , code = ""
      , unofficialNames = [ "City of Bristol" ]
      }
    , { name = "Bury"
      , code = ""
      , unofficialNames = [ "Bury" ]
      }
    , { name = "Cambridgeshire"
      , code = ""
      , unofficialNames = [ "Cambridgeshire" ]
      }
    , { name = "Caerphilly [Caerffili GB-CAF]"
      , code = ""
      , unofficialNames = [ "Caerffili" ]
      }
    , { name = "Ceredigion [Sir Ceredigion]"
      , code = ""
      , unofficialNames = [ "Ceredigion [Sir Ceredigion]" ]
      }
    , { name = "Craigavon"
      , code = ""
      , unofficialNames = [ "Craigavon" ]
      }
    , { name = "Cheshire"
      , code = ""
      , unofficialNames = [ "Cheshire" ]
      }
    , { name = "Carrickfergus"
      , code = ""
      , unofficialNames = [ "Carrickfergus" ]
      }
    , { name = "Cookstown"
      , code = ""
      , unofficialNames = [ "Cookstown" ]
      }
    , { name = "Calderdale"
      , code = ""
      , unofficialNames = [ "Calderdale" ]
      }
    , { name = "Clackmannanshire"
      , code = ""
      , unofficialNames = [ "Clackmannanshire" ]
      }
    , { name = "Coleraine"
      , code = ""
      , unofficialNames = [ "Coleraine" ]
      }
    , { name = "Cumbria"
      , code = ""
      , unofficialNames = [ "Cumbria" ]
      }
    , { name = "Camden"
      , code = ""
      , unofficialNames = [ "Camden" ]
      }
    , { name = "Carmarthenshire [Sir Gaerfyrddin GB-GFY]"
      , code = ""
      , unofficialNames = [ "Sir Gaerfyrddin" ]
      }
    , { name = "Cornwall"
      , code = ""
      , unofficialNames = [ "Cornwall and Isles of Scilly" ]
      }
    , { name = "Coventry"
      , code = ""
      , unofficialNames = [ "Coventry" ]
      }
    , { name = "Cardiff [Caerdydd GB-CRD]"
      , code = ""
      , unofficialNames = [ "Caerdydd" ]
      }
    , { name = "Croydon"
      , code = ""
      , unofficialNames = [ "Croydon" ]
      }
    , { name = "Castlereagh"
      , code = ""
      , unofficialNames = [ "Castlereagh" ]
      }
    , { name = "Conwy"
      , code = ""
      , unofficialNames = [ "Aberconwy and Colwyn" ]
      }
    , { name = "Darlington"
      , code = ""
      , unofficialNames = [ "Darlington" ]
      }
    , { name = "Derbyshire"
      , code = ""
      , unofficialNames = [ "Derbyshire" ]
      }
    , { name = "Denbighshire [Sir Ddinbych GB-DDB]"
      , code = ""
      , unofficialNames = [ "Sir Ddinbych" ]
      }
    , { name = "Derby"
      , code = ""
      , unofficialNames = [ "Derby" ]
      }
    , { name = "Devon"
      , code = ""
      , unofficialNames = [ "Devon" ]
      }
    , { name = "Dungannon"
      , code = ""
      , unofficialNames = [ "Dungannon" ]
      }
    , { name = "Dumfries and Galloway"
      , code = ""
      , unofficialNames = [ "Dumfries and Galloway" ]
      }
    , { name = "Doncaster"
      , code = ""
      , unofficialNames = [ "Doncaster" ]
      }
    , { name = "Dundee City"
      , code = ""
      , unofficialNames = [ "Dundee City" ]
      }
    , { name = "Dorset"
      , code = ""
      , unofficialNames = [ "Dorset" ]
      }
    , { name = "Down"
      , code = ""
      , unofficialNames = [ "Down" ]
      }
    , { name = "Derry"
      , code = ""
      , unofficialNames = [ "Derry" ]
      }
    , { name = "Dudley"
      , code = ""
      , unofficialNames = [ "Dudley" ]
      }
    , { name = "Durham"
      , code = ""
      , unofficialNames = [ "Durham" ]
      }
    , { name = "Ealing"
      , code = ""
      , unofficialNames = [ "Ealing" ]
      }
    , { name = "East Ayrshire"
      , code = ""
      , unofficialNames = [ "East Ayrshire" ]
      }
    , { name = "Edinburgh, City of"
      , code = ""
      , unofficialNames = [ "City of Edinburgh" ]
      }
    , { name = "East Dunbartonshire"
      , code = ""
      , unofficialNames = [ "East Dunbartonshire" ]
      }
    , { name = "East Lothian"
      , code = ""
      , unofficialNames = [ "East Lothian" ]
      }
    , { name = "Eilean Siar"
      , code = ""
      , unofficialNames = [ "Western Isles" ]
      }
    , { name = "Enfield"
      , code = ""
      , unofficialNames = [ "Enfield" ]
      }
    , { name = "East Renfrewshire"
      , code = ""
      , unofficialNames = [ "East Renfrewshire" ]
      }
    , { name = "East Riding of Yorkshire"
      , code = ""
      , unofficialNames = [ "East Riding of Yorkshire", "East Yorkshire", "East Riding" ]
      }
    , { name = "Essex"
      , code = ""
      , unofficialNames = [ "Essex" ]
      }
    , { name = "East Sussex"
      , code = ""
      , unofficialNames = [ "East Sussex" ]
      }
    , { name = "Falkirk"
      , code = ""
      , unofficialNames = [ "Falkirk" ]
      }
    , { name = "Fermanagh"
      , code = ""
      , unofficialNames = [ "Fermanagh" ]
      }
    , { name = "Fife"
      , code = ""
      , unofficialNames = [ "Fife" ]
      }
    , { name = "Flintshire [Sir y Fflint GB-FFL]"
      , code = ""
      , unofficialNames = [ "Sir y Fflint" ]
      }
    , { name = "Gateshead"
      , code = ""
      , unofficialNames = [ "Gateshead" ]
      }
    , { name = "Glasgow City"
      , code = ""
      , unofficialNames = [ "Glasgow City" ]
      }
    , { name = "Gloucestershire"
      , code = ""
      , unofficialNames = [ "Gloucestershire" ]
      }
    , { name = "Greenwich"
      , code = ""
      , unofficialNames = [ "Greenwich" ]
      }
    , { name = "Gwynedd"
      , code = ""
      , unofficialNames = [ "Gwynedd" ]
      }
    , { name = "Halton"
      , code = ""
      , unofficialNames = [ "Halton" ]
      }
    , { name = "Hampshire"
      , code = ""
      , unofficialNames = [ "Hampshire" ]
      }
    , { name = "Havering"
      , code = ""
      , unofficialNames = [ "Havering" ]
      }
    , { name = "Hackney"
      , code = ""
      , unofficialNames = [ "Hackney" ]
      }
    , { name = "Herefordshire, County of"
      , code = ""
      , unofficialNames = [ "County of Herefordshire" ]
      }
    , { name = "Hillingdon"
      , code = ""
      , unofficialNames = [ "Hillingdon" ]
      }
    , { name = "Highland"
      , code = ""
      , unofficialNames = [ "Highland" ]
      }
    , { name = "Hammersmith and Fulham"
      , code = ""
      , unofficialNames = [ "Hammersmith and Fulham" ]
      }
    , { name = "Hounslow"
      , code = ""
      , unofficialNames = [ "Hounslow" ]
      }
    , { name = "Hartlepool"
      , code = ""
      , unofficialNames = [ "Hartlepool" ]
      }
    , { name = "Hertfordshire"
      , code = ""
      , unofficialNames = [ "Hertfordshire" ]
      }
    , { name = "Harrow"
      , code = ""
      , unofficialNames = [ "Harrow" ]
      }
    , { name = "Haringey"
      , code = ""
      , unofficialNames = [ "Haringey" ]
      }
    , { name = "Isles of Scilly"
      , code = ""
      , unofficialNames = [ "Isles of Scilly" ]
      }
    , { name = "Isle of Wight"
      , code = ""
      , unofficialNames = [ "Isle of Wight" ]
      }
    , { name = "Islington"
      , code = ""
      , unofficialNames = [ "Islington" ]
      }
    , { name = "Inverclyde"
      , code = ""
      , unofficialNames = [ "Inverclyde" ]
      }
    , { name = "Kensington and Chelsea"
      , code = ""
      , unofficialNames = [ "Kensington and Chelsea" ]
      }
    , { name = "Kent"
      , code = ""
      , unofficialNames = [ "Kent" ]
      }
    , { name = "Kingston upon Hull, City of"
      , code = ""
      , unofficialNames = [ "City of Kingston upon Hull" ]
      }
    , { name = "Kirklees"
      , code = ""
      , unofficialNames = [ "Kirklees" ]
      }
    , { name = "Kingston upon Thames"
      , code = ""
      , unofficialNames = [ "Kingston upon Thames" ]
      }
    , { name = "Knowsley"
      , code = ""
      , unofficialNames = [ "Knowsley" ]
      }
    , { name = "Lancashire"
      , code = ""
      , unofficialNames = [ "Lancashire" ]
      }
    , { name = "Lambeth"
      , code = ""
      , unofficialNames = [ "Lambeth" ]
      }
    , { name = "Leicester"
      , code = ""
      , unofficialNames = [ "Leicester" ]
      }
    , { name = "Leeds"
      , code = ""
      , unofficialNames = [ "Leeds" ]
      }
    , { name = "Leicestershire"
      , code = ""
      , unofficialNames = [ "Leicestershire" ]
      }
    , { name = "Lewisham"
      , code = ""
      , unofficialNames = [ "Lewisham" ]
      }
    , { name = "Lincolnshire"
      , code = ""
      , unofficialNames = [ "Lincolnshire" ]
      }
    , { name = "Liverpool"
      , code = ""
      , unofficialNames = [ "Liverpool" ]
      }
    , { name = "Limavady"
      , code = ""
      , unofficialNames = [ "Limavady" ]
      }
    , { name = "London, City of"
      , code = ""
      , unofficialNames = [ "London, City of" ]
      }
    , { name = "Larne"
      , code = ""
      , unofficialNames = [ "Larne" ]
      }
    , { name = "Lisburn"
      , code = ""
      , unofficialNames = [ "Lisburn" ]
      }
    , { name = "Luton"
      , code = ""
      , unofficialNames = [ "Luton" ]
      }
    , { name = "Manchester"
      , code = ""
      , unofficialNames = [ "Manchester" ]
      }
    , { name = "Middlesbrough"
      , code = ""
      , unofficialNames = [ "Middlesbrough" ]
      }
    , { name = "Medway"
      , code = ""
      , unofficialNames = [ "Medway" ]
      }
    , { name = "Magherafelt"
      , code = ""
      , unofficialNames = [ "Magherafelt" ]
      }
    , { name = "Milton Keynes"
      , code = ""
      , unofficialNames = [ "Milton Keynes" ]
      }
    , { name = "Midlothian"
      , code = ""
      , unofficialNames = [ "Midlothian" ]
      }
    , { name = "Monmouthshire [Sir Fynwy GB-FYN]"
      , code = ""
      , unofficialNames = [ "Sir Fynwy" ]
      }
    , { name = "Merton"
      , code = ""
      , unofficialNames = [ "Merton" ]
      }
    , { name = "Moray"
      , code = ""
      , unofficialNames = [ "Moray" ]
      }
    , { name = "Merthyr Tydfil [Merthyr Tudful GB-MTU]"
      , code = ""
      , unofficialNames = [ "Merthyr Tudful" ]
      }
    , { name = "Moyle"
      , code = ""
      , unofficialNames = [ "Moyle" ]
      }
    , { name = "North Ayrshire"
      , code = ""
      , unofficialNames = [ "North Ayrshire" ]
      }
    , { name = "Northumberland"
      , code = ""
      , unofficialNames = [ "Northumberland" ]
      }
    , { name = "North Down"
      , code = ""
      , unofficialNames = [ "North Down" ]
      }
    , { name = "North East Lincolnshire"
      , code = ""
      , unofficialNames = [ "North East Lincolnshire" ]
      }
    , { name = "Newcastle upon Tyne"
      , code = ""
      , unofficialNames = [ "Newcastle upon Tyne" ]
      }
    , { name = "Norfolk"
      , code = ""
      , unofficialNames = [ "Norfolk" ]
      }
    , { name = "Nottingham"
      , code = ""
      , unofficialNames = [ "Nottingham" ]
      }
    , { name = "North Lanarkshire"
      , code = ""
      , unofficialNames = [ "North Lanarkshire" ]
      }
    , { name = "North Lincolnshire"
      , code = ""
      , unofficialNames = [ "North Lincolnshire" ]
      }
    , { name = "North Somerset"
      , code = ""
      , unofficialNames = [ "North Somerset" ]
      }
    , { name = "Newtownabbey"
      , code = ""
      , unofficialNames = [ "Newtownabbey" ]
      }
    , { name = "Northamptonshire"
      , code = ""
      , unofficialNames = [ "Northamptonshire" ]
      }
    , { name = "Neath Port Talbot [Castell-nedd Port Talbot GB-CTL]"
      , code = ""
      , unofficialNames = [ "Castell-nedd Porth Talbot" ]
      }
    , { name = "Nottinghamshire"
      , code = ""
      , unofficialNames = [ "Nottinghamshire" ]
      }
    , { name = "North Tyneside"
      , code = ""
      , unofficialNames = [ "North Tyneside" ]
      }
    , { name = "Newham"
      , code = ""
      , unofficialNames = [ "Newham" ]
      }
    , { name = "Newport [Casnewydd GB-CNW]"
      , code = ""
      , unofficialNames = [ "Casnewydd" ]
      }
    , { name = "North Yorkshire"
      , code = ""
      , unofficialNames = [ "North Yorkshire" ]
      }
    , { name = "Newry and Mourne"
      , code = ""
      , unofficialNames = [ "Newry and Mourne" ]
      }
    , { name = "Oldham"
      , code = ""
      , unofficialNames = [ "Oldham" ]
      }
    , { name = "Omagh"
      , code = ""
      , unofficialNames = [ "Omagh" ]
      }
    , { name = "Orkney Islands"
      , code = ""
      , unofficialNames = [ "Orkney Islands" ]
      }
    , { name = "Oxfordshire"
      , code = ""
      , unofficialNames = [ "Oxfordshire" ]
      }
    , { name = "Pembrokeshire [Sir Benfro GB-BNF]"
      , code = ""
      , unofficialNames = [ "Sir Benfro" ]
      }
    , { name = "Perth and Kinross"
      , code = ""
      , unofficialNames = [ "Perth and Kinross" ]
      }
    , { name = "Plymouth"
      , code = ""
      , unofficialNames = [ "Plymouth" ]
      }
    , { name = "Poole"
      , code = ""
      , unofficialNames = [ "Poole" ]
      }
    , { name = "Portsmouth"
      , code = ""
      , unofficialNames = [ "Portsmouth" ]
      }
    , { name = "Powys"
      , code = ""
      , unofficialNames = [ "Powys" ]
      }
    , { name = "Peterborough"
      , code = ""
      , unofficialNames = [ "Peterborough" ]
      }
    , { name = "Redcar and Cleveland"
      , code = ""
      , unofficialNames = [ "Redcar and Cleveland" ]
      }
    , { name = "Rochdale"
      , code = ""
      , unofficialNames = [ "Rochdale" ]
      }
    , { name = "Rhondda, Cynon, Taff [Rhondda, Cynon,Taf]"
      , code = ""
      , unofficialNames = [ "Rhondda Cynon TÃ¢f" ]
      }
    , { name = "Redbridge"
      , code = ""
      , unofficialNames = [ "Redbridge" ]
      }
    , { name = "Reading"
      , code = ""
      , unofficialNames = [ "Reading" ]
      }
    , { name = "Renfrewshire"
      , code = ""
      , unofficialNames = [ "Renfrewshire" ]
      }
    , { name = "Richmond upon Thames"
      , code = ""
      , unofficialNames = [ "Richmond upon Thames" ]
      }
    , { name = "Rotherham"
      , code = ""
      , unofficialNames = [ "Rotherham" ]
      }
    , { name = "Rutland"
      , code = ""
      , unofficialNames = [ "Rutland" ]
      }
    , { name = "Sandwell"
      , code = ""
      , unofficialNames = [ "Sandwell" ]
      }
    , { name = "South Ayrshire"
      , code = ""
      , unofficialNames = [ "South Ayrshire" ]
      }
    , { name = "Scottish Borders, The"
      , code = ""
      , unofficialNames = [ "The Scottish Border" ]
      }
    , { name = "Suffolk"
      , code = ""
      , unofficialNames = [ "Suffolk" ]
      }
    , { name = "Sefton"
      , code = ""
      , unofficialNames = [ "Sefton" ]
      }
    , { name = "South Gloucestershire"
      , code = ""
      , unofficialNames = [ "South Gloucestershire" ]
      }
    , { name = "Sheffield"
      , code = ""
      , unofficialNames = [ "Sheffield" ]
      }
    , { name = "St. Helens"
      , code = ""
      , unofficialNames = [ "St. Helens" ]
      }
    , { name = "Shropshire"
      , code = ""
      , unofficialNames = [ "Shropshire" ]
      }
    , { name = "Stockport"
      , code = ""
      , unofficialNames = [ "Stockport" ]
      }
    , { name = "Salford"
      , code = ""
      , unofficialNames = [ "Salford" ]
      }
    , { name = "Slough"
      , code = ""
      , unofficialNames = [ "Slough" ]
      }
    , { name = "South Lanarkshire"
      , code = ""
      , unofficialNames = [ "South Lanarkshire" ]
      }
    , { name = "Sunderland"
      , code = ""
      , unofficialNames = [ "Sunderland" ]
      }
    , { name = "Solihull"
      , code = ""
      , unofficialNames = [ "Solihull" ]
      }
    , { name = "Somerset"
      , code = ""
      , unofficialNames = [ "Somerset" ]
      }
    , { name = "Southend-on-Sea"
      , code = ""
      , unofficialNames = [ "Southend-on-Sea" ]
      }
    , { name = "Surrey"
      , code = ""
      , unofficialNames = [ "Surrey" ]
      }
    , { name = "Strabane"
      , code = ""
      , unofficialNames = [ "Strabane" ]
      }
    , { name = "Stoke-on-Trent"
      , code = ""
      , unofficialNames = [ "Stoke-on-Trent" ]
      }
    , { name = "Stirling"
      , code = ""
      , unofficialNames = [ "Stirling" ]
      }
    , { name = "Southampton"
      , code = ""
      , unofficialNames = [ "Southampton" ]
      }
    , { name = "Sutton"
      , code = ""
      , unofficialNames = [ "Sutton" ]
      }
    , { name = "Staffordshire"
      , code = ""
      , unofficialNames = [ "Staffordshire" ]
      }
    , { name = "Stockton-on-Tees"
      , code = ""
      , unofficialNames = [ "Stockton-on-Tees" ]
      }
    , { name = "South Tyneside"
      , code = ""
      , unofficialNames = [ "South Tyneside" ]
      }
    , { name = "Swansea [Abertawe GB-ATA]"
      , code = ""
      , unofficialNames = [ "Abertawe" ]
      }
    , { name = "Swindon"
      , code = ""
      , unofficialNames = [ "Swindon" ]
      }
    , { name = "Southwark"
      , code = ""
      , unofficialNames = [ "Southwark" ]
      }
    , { name = "Tameside"
      , code = ""
      , unofficialNames = [ "Tameside" ]
      }
    , { name = "Telford and Wrekin"
      , code = ""
      , unofficialNames = [ "Telford and Wrekin" ]
      }
    , { name = "Thurrock"
      , code = ""
      , unofficialNames = [ "Thurrock" ]
      }
    , { name = "Torbay"
      , code = ""
      , unofficialNames = [ "Torbay" ]
      }
    , { name = "Torfaen [Tor-faen]"
      , code = ""
      , unofficialNames = [ "Tor-faen" ]
      }
    , { name = "Trafford"
      , code = ""
      , unofficialNames = [ "Trafford" ]
      }
    , { name = "Tower Hamlets"
      , code = ""
      , unofficialNames = [ "Tower Hamlets" ]
      }
    , { name = "Vale of Glamorgan, The [Bro Morgannwg GB-BMG]"
      , code = ""
      , unofficialNames = [ "The Vale of Glamorgan" ]
      }
    , { name = "Warwickshire"
      , code = ""
      , unofficialNames = [ "Warwickshire" ]
      }
    , { name = "West Berkshire"
      , code = ""
      , unofficialNames = [ "West Berkshire" ]
      }
    , { name = "West Dunbartonshire"
      , code = ""
      , unofficialNames = [ "West Dunbartonshire" ]
      }
    , { name = "Waltham Forest"
      , code = ""
      , unofficialNames = [ "Waltham Forest" ]
      }
    , { name = "Wigan"
      , code = ""
      , unofficialNames = [ "Wigan" ]
      }
    , { name = "Wiltshire"
      , code = ""
      , unofficialNames = [ "Wiltshire" ]
      }
    , { name = "Wakefield"
      , code = ""
      , unofficialNames = [ "Wakefield" ]
      }
    , { name = "Walsall"
      , code = ""
      , unofficialNames = [ "Walsall" ]
      }
    , { name = "West Lothian"
      , code = ""
      , unofficialNames = [ "West Lothian" ]
      }
    , { name = "Wolverhampton"
      , code = ""
      , unofficialNames = [ "Wolverhampton" ]
      }
    , { name = "Wandsworth"
      , code = ""
      , unofficialNames = [ "Wandsworth" ]
      }
    , { name = "Windsor and Maidenhead"
      , code = ""
      , unofficialNames = [ "Windsor and Maidenhead" ]
      }
    , { name = "Wokingham"
      , code = ""
      , unofficialNames = [ "Wokingham" ]
      }
    , { name = "Worcestershire"
      , code = ""
      , unofficialNames = [ "Worcestershire" ]
      }
    , { name = "Wirral"
      , code = ""
      , unofficialNames = [ "Wirral" ]
      }
    , { name = "Warrington"
      , code = ""
      , unofficialNames = [ "Warrington" ]
      }
    , { name = "Wrexham [Wrecsam GB-WRC]"
      , code = ""
      , unofficialNames = [ "Wrecsam" ]
      }
    , { name = "Westminster"
      , code = ""
      , unofficialNames = [ "Westminster" ]
      }
    , { name = "West Sussex"
      , code = ""
      , unofficialNames = [ "West Sussex" ]
      }
    , { name = "York"
      , code = ""
      , unofficialNames = [ "York" ]
      }
    , { name = "Shetland Islands"
      , code = ""
      , unofficialNames = [ "Shetland Islands" ]
      }
    ]


{-| -}
grenadaSubdivisions : List Subdivision
grenadaSubdivisions =
    [ { name = "Saint Andrew"
      , code = ""
      , unofficialNames = [ "Saint Andrew" ]
      }
    , { name = "Saint David"
      , code = ""
      , unofficialNames = [ "Saint David" ]
      }
    , { name = "Saint George"
      , code = ""
      , unofficialNames = [ "Saint George" ]
      }
    , { name = "Saint John"
      , code = ""
      , unofficialNames = [ "Saint John" ]
      }
    , { name = "Saint Mark"
      , code = ""
      , unofficialNames = [ "Saint Mark" ]
      }
    , { name = "Saint Patrick"
      , code = ""
      , unofficialNames = [ "Saint Patrick" ]
      }
    , { name = "Southern Grenadine Islands"
      , code = ""
      , unofficialNames = [ "Southern Grenadine Islands" ]
      }
    ]


{-| -}
georgiaSubdivisions : List Subdivision
georgiaSubdivisions =
    [ { name = "Abkhazia"
      , code = ""
      , unofficialNames = [ "Abhasia" ]
      }
    , { name = "Ajaria"
      , code = ""
      , unofficialNames = [ "Achara", "Adzharia", "Adžaria" ]
      }
    , { name = "Guria"
      , code = ""
      , unofficialNames = [ "Guria" ]
      }
    , { name = "Imereti"
      , code = ""
      , unofficialNames = [ "Imereti" ]
      }
    , { name = "Kakheti"
      , code = ""
      , unofficialNames = [ "Kaheti" ]
      }
    , { name = "Kvemo Kartli"
      , code = ""
      , unofficialNames = [ "Kvemo Kartli" ]
      }
    , { name = "Mtskheta-Mtianeti"
      , code = ""
      , unofficialNames = [ "Mcheta-Mtianeti" ]
      }
    , { name = "Racha-Lechkhumi [and] Kvemo Svaneti"
      , code = ""
      , unofficialNames = [ "Racha", "Racha-Lechkumi and Kverno Svaneti" ]
      }
    , { name = "Samtskhe-Javakheti"
      , code = ""
      , unofficialNames = [ "Samche-Žavaheti" ]
      }
    , { name = "Shida Kartli"
      , code = ""
      , unofficialNames = [ "Šida Kartli" ]
      }
    , { name = "Samegrelo-Zemo Svaneti"
      , code = ""
      , unofficialNames = [ "Samegrelo-Zemo Svaneti" ]
      }
    , { name = "Tbilisi"
      , code = ""
      , unofficialNames = [ "Tiflis" ]
      }
    ]


{-| -}
frenchGuianaSubdivisions : List Subdivision
frenchGuianaSubdivisions =
    []


{-| -}
guernseySubdivisions : List Subdivision
guernseySubdivisions =
    [ { name = "Saint Pierre du Bois"
      , code = ""
      , unofficialNames = [ "Saint Pierre du Bois" ]
      }
    , { name = "Torteval"
      , code = ""
      , unofficialNames = [ "Torteval" ]
      }
    , { name = "Saint Saviour"
      , code = ""
      , unofficialNames = [ "Saint Saviour" ]
      }
    , { name = "Forest"
      , code = ""
      , unofficialNames = [ "Forest" ]
      }
    , { name = "Saint Martin"
      , code = ""
      , unofficialNames = [ "Saint Martin" ]
      }
    , { name = "Saint Andrew"
      , code = ""
      , unofficialNames = [ "Saint Andrew" ]
      }
    , { name = "Saint Peter Port"
      , code = ""
      , unofficialNames = [ "Saint Peter Port" ]
      }
    , { name = "Castel"
      , code = ""
      , unofficialNames = [ "Castel" ]
      }
    , { name = "Vale"
      , code = ""
      , unofficialNames = [ "Vale" ]
      }
    , { name = "Saint Sampson"
      , code = ""
      , unofficialNames = [ "Saint Sampson" ]
      }
    , { name = "Alderney"
      , code = ""
      , unofficialNames = [ "Alderney" ]
      }
    ]


{-| -}
ghanaSubdivisions : List Subdivision
ghanaSubdivisions =
    [ { name = "Greater Accra"
      , code = ""
      , unofficialNames = [ "Greater Accra" ]
      }
    , { name = "Ashanti"
      , code = ""
      , unofficialNames = [ "Asante" ]
      }
    , { name = "Brong-Ahafo"
      , code = ""
      , unofficialNames = [ "Brong-Ahafo" ]
      }
    , { name = "Central"
      , code = ""
      , unofficialNames = [ "Central" ]
      }
    , { name = "Eastern"
      , code = ""
      , unofficialNames = [ "Eastern" ]
      }
    , { name = "Northern"
      , code = ""
      , unofficialNames = [ "Northern" ]
      }
    , { name = "Volta"
      , code = ""
      , unofficialNames = [ "Volta" ]
      }
    , { name = "Upper East"
      , code = ""
      , unofficialNames = [ "Upper East" ]
      }
    , { name = "Upper West"
      , code = ""
      , unofficialNames = [ "Upper West" ]
      }
    , { name = "Western"
      , code = ""
      , unofficialNames = [ "Western" ]
      }
    ]


{-| -}
greenlandSubdivisions : List Subdivision
greenlandSubdivisions =
    []


{-| -}
gambiaSubdivisions : List Subdivision
gambiaSubdivisions =
    [ { name = "Banjul"
      , code = ""
      , unofficialNames = [ "Banjul" ]
      }
    , { name = "Lower River"
      , code = ""
      , unofficialNames = [ "Lower River" ]
      }
    , { name = "MacCarthy Island"
      , code = ""
      , unofficialNames = [ "MacCarthy Island" ]
      }
    , { name = "North Bank"
      , code = ""
      , unofficialNames = [ "North Bank" ]
      }
    , { name = "Upper River"
      , code = ""
      , unofficialNames = [ "Upper River" ]
      }
    , { name = "Western"
      , code = ""
      , unofficialNames = [ "Western" ]
      }
    ]


{-| -}
guineaSubdivisions : List Subdivision
guineaSubdivisions =
    [ { name = "Beyla"
      , code = ""
      , unofficialNames = [ "Beyla" ]
      }
    , { name = "Boffa"
      , code = ""
      , unofficialNames = [ "Boffa" ]
      }
    , { name = "Boké"
      , code = ""
      , unofficialNames = [ "Boké" ]
      }
    , { name = "Conakry"
      , code = ""
      , unofficialNames = [ "Conakry" ]
      }
    , { name = "Coyah"
      , code = ""
      , unofficialNames = [ "Coyah" ]
      }
    , { name = "Dabola"
      , code = ""
      , unofficialNames = [ "Dabola" ]
      }
    , { name = "Dinguiraye"
      , code = ""
      , unofficialNames = [ "Dinguiraye" ]
      }
    , { name = "Dalaba"
      , code = ""
      , unofficialNames = [ "Dalaba" ]
      }
    , { name = "Dubréka"
      , code = ""
      , unofficialNames = [ "Dubréka" ]
      }
    , { name = "Faranah"
      , code = ""
      , unofficialNames = [ "Faranah" ]
      }
    , { name = "Forécariah"
      , code = ""
      , unofficialNames = [ "Forécaria" ]
      }
    , { name = "Fria"
      , code = ""
      , unofficialNames = [ "Fria" ]
      }
    , { name = "Gaoual"
      , code = ""
      , unofficialNames = [ "Gaoual" ]
      }
    , { name = "Guékédou"
      , code = ""
      , unofficialNames = [ "Guékédou" ]
      }
    , { name = "Kankan"
      , code = ""
      , unofficialNames = [ "Kankan" ]
      }
    , { name = "Koubia"
      , code = ""
      , unofficialNames = [ "Koubia" ]
      }
    , { name = "Kindia"
      , code = ""
      , unofficialNames = [ "Kindia" ]
      }
    , { name = "Kérouané"
      , code = ""
      , unofficialNames = [ "Kérouané" ]
      }
    , { name = "Koundara"
      , code = ""
      , unofficialNames = [ "Koundara" ]
      }
    , { name = "Kouroussa"
      , code = ""
      , unofficialNames = [ "Kouroussa" ]
      }
    , { name = "Kissidougou"
      , code = ""
      , unofficialNames = [ "Kissidougou" ]
      }
    , { name = "Labé"
      , code = ""
      , unofficialNames = [ "Labé" ]
      }
    , { name = "Lélouma"
      , code = ""
      , unofficialNames = [ "Lélouma" ]
      }
    , { name = "Lola"
      , code = ""
      , unofficialNames = [ "Lola" ]
      }
    , { name = "Macenta"
      , code = ""
      , unofficialNames = [ "Macenta" ]
      }
    , { name = "Mandiana"
      , code = ""
      , unofficialNames = [ "Mandiana" ]
      }
    , { name = "Mali"
      , code = ""
      , unofficialNames = [ "Mali" ]
      }
    , { name = "Mamou"
      , code = ""
      , unofficialNames = [ "Mamou" ]
      }
    , { name = "Nzérékoré"
      , code = ""
      , unofficialNames = [ "Nzérékoré" ]
      }
    , { name = "Pita"
      , code = ""
      , unofficialNames = [ "Pita" ]
      }
    , { name = "Siguiri"
      , code = ""
      , unofficialNames = [ "Siguiri" ]
      }
    , { name = "Télimélé"
      , code = ""
      , unofficialNames = [ "Télimélé" ]
      }
    , { name = "Tougué"
      , code = ""
      , unofficialNames = [ "Tougué" ]
      }
    , { name = "Yomou"
      , code = ""
      , unofficialNames = [ "Yomou" ]
      }
    ]


{-| -}
guadeloupeSubdivisions : List Subdivision
guadeloupeSubdivisions =
    []


{-| -}
equatorialGuineaSubdivisions : List Subdivision
equatorialGuineaSubdivisions =
    [ { name = "Annobón"
      , code = ""
      , unofficialNames = [ "Annobón" ]
      }
    , { name = "Bioko Norte"
      , code = ""
      , unofficialNames = [ "Bioko Norte" ]
      }
    , { name = "Bioko Sur"
      , code = ""
      , unofficialNames = [ "Bioko Sur" ]
      }
    , { name = "Región Continental"
      , code = ""
      , unofficialNames = [ "Región Continental" ]
      }
    , { name = "Centro Sur"
      , code = ""
      , unofficialNames = [ "Centro Sur" ]
      }
    , { name = "Región Insular"
      , code = ""
      , unofficialNames = [ "Región Insular" ]
      }
    , { name = "Kie-Ntem"
      , code = ""
      , unofficialNames = [ "Kie-Ntem" ]
      }
    , { name = "Litoral"
      , code = ""
      , unofficialNames = [ "Litoral" ]
      }
    , { name = "Wele-Nzás"
      , code = ""
      , unofficialNames = [ "Wele-Nzás" ]
      }
    ]


{-| -}
greeceSubdivisions : List Subdivision
greeceSubdivisions =
    [ { name = "Aitolia-Akarnania"
      , code = ""
      , unofficialNames = [ "Aetolia and Acarnania", "Áitoloakarnanía" ]
      }
    , { name = "Voiotia"
      , code = ""
      , unofficialNames = [ "Boeotia" ]
      }
    , { name = "Evvoia"
      , code = ""
      , unofficialNames = [ "Euboea", "Evvoia" ]
      }
    , { name = "Evrytania"
      , code = ""
      , unofficialNames = [ "Evrytania" ]
      }
    , { name = "Fthiotis"
      , code = ""
      , unofficialNames = [ "Phtiotis" ]
      }
    , { name = "Fokis"
      , code = ""
      , unofficialNames = [ "Phocis", "Phokis" ]
      }
    , { name = "Argolis"
      , code = ""
      , unofficialNames = [ "Argolis" ]
      }
    , { name = "Arkadia"
      , code = ""
      , unofficialNames = [ "Arcadia" ]
      }
    , { name = "Achaïa"
      , code = ""
      , unofficialNames = [ "Achaia", "Akhaia" ]
      }
    , { name = "Ileia"
      , code = ""
      , unofficialNames = [ "Elia" ]
      }
    , { name = "Korinthia"
      , code = ""
      , unofficialNames = [ "Corinth", "Korinth", "Kórinthos" ]
      }
    , { name = "Lakonia"
      , code = ""
      , unofficialNames = [ "Laconia" ]
      }
    , { name = "Messinia"
      , code = ""
      , unofficialNames = [ "Messenia" ]
      }
    , { name = "Zakynthos"
      , code = ""
      , unofficialNames = [ "Zakynthos", "Zante", "Zanti" ]
      }
    , { name = "Kerkyra"
      , code = ""
      , unofficialNames = [ "Corfu", "Kerkyra", "Korfu" ]
      }
    , { name = "Kefallinia"
      , code = ""
      , unofficialNames = [ "Cephalonia", "Kefallinia" ]
      }
    , { name = "Lefkas"
      , code = ""
      , unofficialNames = [ "Leucas", "Levkáda", "Santa Maura" ]
      }
    , { name = "Arta"
      , code = ""
      , unofficialNames = [ "Arta" ]
      }
    , { name = "Thesprotia"
      , code = ""
      , unofficialNames = [ "Thesprotia" ]
      }
    , { name = "Ioannina"
      , code = ""
      , unofficialNames = [ "Yannina" ]
      }
    , { name = "Preveza"
      , code = ""
      , unofficialNames = [ "Preveza" ]
      }
    , { name = "Karditsa"
      , code = ""
      , unofficialNames = [ "Karditsa" ]
      }
    , { name = "Larisa"
      , code = ""
      , unofficialNames = [ "Larissa" ]
      }
    , { name = "Magnisia"
      , code = ""
      , unofficialNames = [ "Magnesia", "Magnessia" ]
      }
    , { name = "Trikala"
      , code = ""
      , unofficialNames = [ "Trikala", "Trikkala" ]
      }
    , { name = "Grevena"
      , code = ""
      , unofficialNames = [ "Grevena" ]
      }
    , { name = "Drama"
      , code = ""
      , unofficialNames = [ "Drama" ]
      }
    , { name = "Imathia"
      , code = ""
      , unofficialNames = [ "Imathia" ]
      }
    , { name = "Thessaloniki"
      , code = ""
      , unofficialNames = [ "Salonika", "Salonike", "Saloniki", "Thessalonike" ]
      }
    , { name = "Kavalla"
      , code = ""
      , unofficialNames = [ "Cavalla", "Kaválla" ]
      }
    , { name = "Kastoria"
      , code = ""
      , unofficialNames = [ "Kastoria" ]
      }
    , { name = "Kilkis"
      , code = ""
      , unofficialNames = [ "Kilkis" ]
      }
    , { name = "Kozani"
      , code = ""
      , unofficialNames = [ "Kozani" ]
      }
    , { name = "Pella"
      , code = ""
      , unofficialNames = [ "Pella" ]
      }
    , { name = "Pieria"
      , code = ""
      , unofficialNames = [ "Pieria" ]
      }
    , { name = "Serrai"
      , code = ""
      , unofficialNames = [ "Serres" ]
      }
    , { name = "Florina"
      , code = ""
      , unofficialNames = [ "Florina" ]
      }
    , { name = "Chalkidiki"
      , code = ""
      , unofficialNames = [ "Chalcidice", "Khalkikdiki" ]
      }
    , { name = "Agio Oros"
      , code = ""
      , unofficialNames = [ "Aghion Oros", "Agion Oros", "Akte", "Aktí", "Athos", "Mount Athos" ]
      }
    , { name = "Evros"
      , code = ""
      , unofficialNames = [ "Evros" ]
      }
    , { name = "Xanthi"
      , code = ""
      , unofficialNames = [ "Xanthi" ]
      }
    , { name = "Rodopi"
      , code = ""
      , unofficialNames = [ "Rhodope" ]
      }
    , { name = "Dodekanisos"
      , code = ""
      , unofficialNames = [ "Dodecanese", "Dodekanes" ]
      }
    , { name = "Kyklades"
      , code = ""
      , unofficialNames = [ "Cyclades", "Kykladen" ]
      }
    , { name = "Lesvos"
      , code = ""
      , unofficialNames = [ "Lesbos" ]
      }
    , { name = "Samos"
      , code = ""
      , unofficialNames = [ "Samos" ]
      }
    , { name = "Chios"
      , code = ""
      , unofficialNames = [ "Chios", "Khios" ]
      }
    , { name = "Irakleion"
      , code = ""
      , unofficialNames = [ "Candia", "Herakleion", "Heraklion", "Iraclion", "Iraklio" ]
      }
    , { name = "Lasithion"
      , code = ""
      , unofficialNames = [ "Lassithi" ]
      }
    , { name = "Rethymnon"
      , code = ""
      , unofficialNames = [ "Rethymnon" ]
      }
    , { name = "Chania"
      , code = ""
      , unofficialNames = [ "Canea", "Chania", "Khaniá", "La Canée" ]
      }
    , { name = "Attiki"
      , code = ""
      , unofficialNames = [ "Attica", "Attika" ]
      }
    ]


{-| -}
guatemalaSubdivisions : List Subdivision
guatemalaSubdivisions =
    [ { name = "Alta Verapaz"
      , code = ""
      , unofficialNames = [ "Alta Verapaz" ]
      }
    , { name = "Baja Verapaz"
      , code = ""
      , unofficialNames = [ "Baja Verapaz" ]
      }
    , { name = "Chimaltenango"
      , code = ""
      , unofficialNames = [ "Chimaltenango" ]
      }
    , { name = "Chiquimula"
      , code = ""
      , unofficialNames = [ "Chiquimula" ]
      }
    , { name = "Escuintla"
      , code = ""
      , unofficialNames = [ "Escuintla" ]
      }
    , { name = "Guatemala"
      , code = ""
      , unofficialNames = [ "Guatemala" ]
      }
    , { name = "Huehuetenango"
      , code = ""
      , unofficialNames = [ "Huehuetenango" ]
      }
    , { name = "Izabal"
      , code = ""
      , unofficialNames = [ "Izabal" ]
      }
    , { name = "Jalapa"
      , code = ""
      , unofficialNames = [ "Jalapa" ]
      }
    , { name = "Jutiapa"
      , code = ""
      , unofficialNames = [ "Jutiapa" ]
      }
    , { name = "Petén"
      , code = ""
      , unofficialNames = [ "Petén" ]
      }
    , { name = "El Progreso"
      , code = ""
      , unofficialNames = [ "El Progreso" ]
      }
    , { name = "Quiché"
      , code = ""
      , unofficialNames = [ "Quiché" ]
      }
    , { name = "Quetzaltenango"
      , code = ""
      , unofficialNames = [ "Quetzaltenango" ]
      }
    , { name = "Retalhuleu"
      , code = ""
      , unofficialNames = [ "Retalhuleu" ]
      }
    , { name = "Sacatepéquez"
      , code = ""
      , unofficialNames = [ "Sacatepéquez" ]
      }
    , { name = "San Marcos"
      , code = ""
      , unofficialNames = [ "San Marcos" ]
      }
    , { name = "Sololá"
      , code = ""
      , unofficialNames = [ "Sololá" ]
      }
    , { name = "Santa Rosa"
      , code = ""
      , unofficialNames = [ "Santa Rosa" ]
      }
    , { name = "Suchitepéquez"
      , code = ""
      , unofficialNames = [ "Suchitepéquez" ]
      }
    , { name = "Totonicapán"
      , code = ""
      , unofficialNames = [ "Totonicapán" ]
      }
    , { name = "Zacapa"
      , code = ""
      , unofficialNames = [ "Zacapa" ]
      }
    ]


{-| -}
guamSubdivisions : List Subdivision
guamSubdivisions =
    [ { name = "Agana Heights"
      , code = ""
      , unofficialNames = [ "Agana Heights" ]
      }
    , { name = "Hagatna"
      , code = ""
      , unofficialNames = [ "Hagatna" ]
      }
    , { name = "Asan-Maina"
      , code = ""
      , unofficialNames = [ "Asan-Maina" ]
      }
    , { name = "Agat"
      , code = ""
      , unofficialNames = [ "Agat" ]
      }
    , { name = "Barrigada"
      , code = ""
      , unofficialNames = [ "Barrigada" ]
      }
    , { name = "Chalan Pago-Ordot"
      , code = ""
      , unofficialNames = [ "Chalan Pago-Ordot" ]
      }
    , { name = "Dededo"
      , code = ""
      , unofficialNames = [ "Dededo" ]
      }
    , { name = "Inarajan"
      , code = ""
      , unofficialNames = [ "Inarajan" ]
      }
    , { name = "Mangilao"
      , code = ""
      , unofficialNames = [ "Mangilao" ]
      }
    , { name = "Merizo"
      , code = ""
      , unofficialNames = [ "Merizo" ]
      }
    , { name = "Mongmong-Toto-Maite"
      , code = ""
      , unofficialNames = [ "Mongmong-Toto-Maite" ]
      }
    , { name = "Piti"
      , code = ""
      , unofficialNames = [ "Piti" ]
      }
    , { name = "Sinajana"
      , code = ""
      , unofficialNames = [ "Sinajana" ]
      }
    , { name = "Santa Rita"
      , code = ""
      , unofficialNames = [ "Santa Rita" ]
      }
    , { name = "Talofofo"
      , code = ""
      , unofficialNames = [ "Talofofo" ]
      }
    , { name = "Tamuning"
      , code = ""
      , unofficialNames = [ "Tamuning" ]
      }
    , { name = "Umatac"
      , code = ""
      , unofficialNames = [ "Umatac" ]
      }
    , { name = "Yigo"
      , code = ""
      , unofficialNames = [ "Yigo" ]
      }
    , { name = "Yona"
      , code = ""
      , unofficialNames = [ "Yona" ]
      }
    ]


{-| -}
guineaBissauSubdivisions : List Subdivision
guineaBissauSubdivisions =
    [ { name = "Bafatá"
      , code = ""
      , unofficialNames = [ "Bafatá" ]
      }
    , { name = "Bolama"
      , code = ""
      , unofficialNames = [ "Bolama" ]
      }
    , { name = "Biombo"
      , code = ""
      , unofficialNames = [ "Biombo" ]
      }
    , { name = "Bissau"
      , code = ""
      , unofficialNames = [ "Bissau" ]
      }
    , { name = "Cacheu"
      , code = ""
      , unofficialNames = [ "Cacheo" ]
      }
    , { name = "Gabú"
      , code = ""
      , unofficialNames = [ "Gabú" ]
      }
    , { name = "Oio"
      , code = ""
      , unofficialNames = [ "Oio" ]
      }
    , { name = "Quinara"
      , code = ""
      , unofficialNames = [ "Quinara" ]
      }
    , { name = "Tombali"
      , code = ""
      , unofficialNames = [ "Tombali" ]
      }
    ]


{-| -}
guyanaSubdivisions : List Subdivision
guyanaSubdivisions =
    [ { name = "Barima-Waini"
      , code = ""
      , unofficialNames = [ "Barima-Waini" ]
      }
    , { name = "Cuyuni-Mazaruni"
      , code = ""
      , unofficialNames = [ "Cuyuni-Mazaruni" ]
      }
    , { name = "Demerara-Mahaica"
      , code = ""
      , unofficialNames = [ "Demerara-Mahaica" ]
      }
    , { name = "East Berbice-Corentyne"
      , code = ""
      , unofficialNames = [ "East Berbice-Corentyne" ]
      }
    , { name = "Essequibo Islands-West Demerara"
      , code = ""
      , unofficialNames = [ "Essequibo Islands-West Demerara" ]
      }
    , { name = "Mahaica-Berbice"
      , code = ""
      , unofficialNames = [ "Mahaica-Berbice" ]
      }
    , { name = "Pomeroon-Supenaam"
      , code = ""
      , unofficialNames = [ "Pomeroon-Supenaam" ]
      }
    , { name = "Potaro-Siparuni"
      , code = ""
      , unofficialNames = [ "Potaro-Siparuni" ]
      }
    , { name = "Upper Demerara-Berbice"
      , code = ""
      , unofficialNames = [ "Upper Demerara-Berbice" ]
      }
    , { name = "Upper Takutu-Upper Essequibo"
      , code = ""
      , unofficialNames = [ "Upper Takutu-Upper Essequibo" ]
      }
    ]


{-| -}
hongKongSubdivisions : List Subdivision
hongKongSubdivisions =
    [ { name = "Central and Western District"
      , code = ""
      , unofficialNames = [ "Central and Western District" ]
      }
    , { name = "Eastern"
      , code = ""
      , unofficialNames = [ "Eastern" ]
      }
    , { name = "Southern"
      , code = ""
      , unofficialNames = [ "Southern" ]
      }
    , { name = "Wan Chai"
      , code = ""
      , unofficialNames = [ "Wan Chai" ]
      }
    , { name = "Sham Shui Po"
      , code = ""
      , unofficialNames = [ "Sham Shui Po" ]
      }
    , { name = "Kowloon City"
      , code = ""
      , unofficialNames = [ "Kowloon City" ]
      }
    , { name = "Kwun Tong"
      , code = ""
      , unofficialNames = [ "Kwun Tong" ]
      }
    , { name = "Wong Tai Sin"
      , code = ""
      , unofficialNames = [ "Wong Tai Sin" ]
      }
    , { name = "Yau Tsim Mong"
      , code = ""
      , unofficialNames = [ "Yau Tsim Mong" ]
      }
    , { name = "Islands District"
      , code = ""
      , unofficialNames = [ "Islands District" ]
      }
    , { name = "Kwai Tsing"
      , code = ""
      , unofficialNames = [ "Kwai Tsing" ]
      }
    , { name = "North"
      , code = ""
      , unofficialNames = [ "North" ]
      }
    , { name = "Sai Kung District"
      , code = ""
      , unofficialNames = [ "Sai Kung District" ]
      }
    , { name = "Sha Tin"
      , code = ""
      , unofficialNames = [ "Sha Tin" ]
      }
    , { name = "Tuen Mun"
      , code = ""
      , unofficialNames = [ "Tuen Mun" ]
      }
    , { name = "Tai Po District"
      , code = ""
      , unofficialNames = [ "Tai Po District" ]
      }
    , { name = "Tsuen Wan District"
      , code = ""
      , unofficialNames = [ "Tsuen Wan District" ]
      }
    , { name = "Yuen Long District"
      , code = ""
      , unofficialNames = [ "Yuen Long District" ]
      }
    ]


{-| -}
hondurasSubdivisions : List Subdivision
hondurasSubdivisions =
    [ { name = "Atlántida"
      , code = ""
      , unofficialNames = [ "Atlántida" ]
      }
    , { name = "Choluteca"
      , code = ""
      , unofficialNames = [ "Choluteca" ]
      }
    , { name = "Colón"
      , code = ""
      , unofficialNames = [ "Colón" ]
      }
    , { name = "Comayagua"
      , code = ""
      , unofficialNames = [ "Comayagua" ]
      }
    , { name = "Copán"
      , code = ""
      , unofficialNames = [ "Copán" ]
      }
    , { name = "Cortés"
      , code = ""
      , unofficialNames = [ "Cortés" ]
      }
    , { name = "El Paraíso"
      , code = ""
      , unofficialNames = [ "El Paraíso" ]
      }
    , { name = "Francisco Morazán"
      , code = ""
      , unofficialNames = [ "Francisco Morazán" ]
      }
    , { name = "Gracias a Dios"
      , code = ""
      , unofficialNames = [ "Gracias a Dios" ]
      }
    , { name = "Islas de la Bahía"
      , code = ""
      , unofficialNames = [ "Islas de la Bahía" ]
      }
    , { name = "Intibucá"
      , code = ""
      , unofficialNames = [ "Intibucá" ]
      }
    , { name = "Lempira"
      , code = ""
      , unofficialNames = [ "Lempira" ]
      }
    , { name = "La Paz"
      , code = ""
      , unofficialNames = [ "La Paz" ]
      }
    , { name = "Ocotepeque"
      , code = ""
      , unofficialNames = [ "Ocotepeque" ]
      }
    , { name = "Olancho"
      , code = ""
      , unofficialNames = [ "Olancho" ]
      }
    , { name = "Santa Bárbara"
      , code = ""
      , unofficialNames = [ "Santa Bárbara" ]
      }
    , { name = "Valle"
      , code = ""
      , unofficialNames = [ "Valle" ]
      }
    , { name = "Yoro"
      , code = ""
      , unofficialNames = [ "Yoro" ]
      }
    ]


{-| -}
croatiaSubdivisions : List Subdivision
croatiaSubdivisions =
    [ { name = "Zagrebačka županija"
      , code = ""
      , unofficialNames = [ "Zagreb County" ]
      }
    , { name = "Krapinsko-zagorska županija"
      , code = ""
      , unofficialNames = [ "Krapina-Zagorje" ]
      }
    , { name = "Sisačko-moslavačka županija"
      , code = ""
      , unofficialNames = [ "Sisak-Moslavina" ]
      }
    , { name = "Karlovačka županija"
      , code = ""
      , unofficialNames = [ "Karlovac" ]
      }
    , { name = "Varaždinska županija"
      , code = ""
      , unofficialNames = [ "Varaždin" ]
      }
    , { name = "Koprivničko-križevačka županija"
      , code = ""
      , unofficialNames = [ "Koprivnica-Križevci" ]
      }
    , { name = "Bjelovarsko-bilogorska županija"
      , code = ""
      , unofficialNames = [ "Bjelovar-Bilogora" ]
      }
    , { name = "Primorsko-goranska županija"
      , code = ""
      , unofficialNames = [ "Primorje-Gorski Kotar" ]
      }
    , { name = "Ličko-senjska županija"
      , code = ""
      , unofficialNames = [ "Lika-Senj" ]
      }
    , { name = "Virovitičko-podravska županija"
      , code = ""
      , unofficialNames = [ "Virovitica-Podravina" ]
      }
    , { name = "Požeško-slavonska županija"
      , code = ""
      , unofficialNames = [ "Požega-Slavonia" ]
      }
    , { name = "Brodsko-posavska županija"
      , code = ""
      , unofficialNames = [ "Brod-Posavina" ]
      }
    , { name = "Zadarska županija"
      , code = ""
      , unofficialNames = [ "Zadar" ]
      }
    , { name = "Osječko-baranjska županija"
      , code = ""
      , unofficialNames = [ "Osijek-Baranja" ]
      }
    , { name = "Šibensko-kninska županija"
      , code = ""
      , unofficialNames = [ "Šibenik-Knin" ]
      }
    , { name = "Vukovarsko-srijemska županija"
      , code = ""
      , unofficialNames = [ "Vukovar-Sirmium" ]
      }
    , { name = "Splitsko-dalmatinska županija"
      , code = ""
      , unofficialNames = [ "Split-Dalmatia" ]
      }
    , { name = "Istarska županija"
      , code = ""
      , unofficialNames = [ "Istria" ]
      }
    , { name = "Dubrovačko-neretvanska županija"
      , code = ""
      , unofficialNames = [ "Dubrovnik-Neretva" ]
      }
    , { name = "Međimurska županija"
      , code = ""
      , unofficialNames = [ "Međimurje" ]
      }
    , { name = "Grad Zagreb"
      , code = ""
      , unofficialNames = [ "City of Zagreb" ]
      }
    ]


{-| -}
haitiSubdivisions : List Subdivision
haitiSubdivisions =
    [ { name = "Artibonite"
      , code = ""
      , unofficialNames = [ "LʿArtibonite" ]
      }
    , { name = "Centre"
      , code = ""
      , unofficialNames = [ "Centre" ]
      }
    , { name = "Grande-Anse"
      , code = ""
      , unofficialNames = [ "Grande Anse" ]
      }
    , { name = "Nord"
      , code = ""
      , unofficialNames = [ "Nord" ]
      }
    , { name = "Nord-Est"
      , code = ""
      , unofficialNames = [ "Nord-Est" ]
      }
    , { name = "Nord-Ouest"
      , code = ""
      , unofficialNames = [ "Nord-Ouest" ]
      }
    , { name = "Ouest"
      , code = ""
      , unofficialNames = [ "Ouest" ]
      }
    , { name = "Sud"
      , code = ""
      , unofficialNames = [ "Sud" ]
      }
    , { name = "Sud-Est"
      , code = ""
      , unofficialNames = [ "Sud-Est" ]
      }
    ]


{-| -}
hungarySubdivisions : List Subdivision
hungarySubdivisions =
    [ { name = "Baranya"
      , code = ""
      , unofficialNames = [ "Baranya" ]
      }
    , { name = "Békéscsaba"
      , code = ""
      , unofficialNames = [ "Békéscsaba" ]
      }
    , { name = "Békés"
      , code = ""
      , unofficialNames = [ "Békés" ]
      }
    , { name = "Bács-Kiskun"
      , code = ""
      , unofficialNames = [ "Bács-Kiskun" ]
      }
    , { name = "Budapest"
      , code = ""
      , unofficialNames = [ "Budapest" ]
      }
    , { name = "Borsod-Abaúj-Zemplén"
      , code = ""
      , unofficialNames = [ "Borsod-Abaúj-Zemplén" ]
      }
    , { name = "Csongrád"
      , code = ""
      , unofficialNames = [ "Csongrád" ]
      }
    , { name = "Debrecen"
      , code = ""
      , unofficialNames = [ "Debrecen" ]
      }
    , { name = "Dunaújváros"
      , code = ""
      , unofficialNames = [ "Dunaújváros" ]
      }
    , { name = "Eger"
      , code = ""
      , unofficialNames = [ "Eger" ]
      }
    , { name = "Érd"
      , code = ""
      , unofficialNames = [ "Érd" ]
      }
    , { name = "Fejér"
      , code = ""
      , unofficialNames = [ "Fejér" ]
      }
    , { name = "Győr-Moson-Sopron"
      , code = ""
      , unofficialNames = [ "Győr-Moson-Sopron" ]
      }
    , { name = "Győr"
      , code = ""
      , unofficialNames = [ "Győr" ]
      }
    , { name = "Hajdú-Bihar"
      , code = ""
      , unofficialNames = [ "Hajdú-Bihar" ]
      }
    , { name = "Heves"
      , code = ""
      , unofficialNames = [ "Heves" ]
      }
    , { name = "Hódmezővásárhely"
      , code = ""
      , unofficialNames = [ "Hódmezővásárhely" ]
      }
    , { name = "Jász-Nagykun-Szolnok"
      , code = ""
      , unofficialNames = [ "Jász-Nagykun-Szolnok" ]
      }
    , { name = "Komárom-Esztergom"
      , code = ""
      , unofficialNames = [ "Komárom-Esztergom" ]
      }
    , { name = "Kecskemét"
      , code = ""
      , unofficialNames = [ "Kecskemét" ]
      }
    , { name = "Kaposvár"
      , code = ""
      , unofficialNames = [ "Kaposvár" ]
      }
    , { name = "Miskolc"
      , code = ""
      , unofficialNames = [ "Miskolc" ]
      }
    , { name = "Nagykanizsa"
      , code = ""
      , unofficialNames = [ "Nagykanizsa" ]
      }
    , { name = "Nógrád"
      , code = ""
      , unofficialNames = [ "Nógrád" ]
      }
    , { name = "Nyíregyháza"
      , code = ""
      , unofficialNames = [ "Nyíregyháza" ]
      }
    , { name = "Pest"
      , code = ""
      , unofficialNames = [ "Pest" ]
      }
    , { name = "Pécs"
      , code = ""
      , unofficialNames = [ "Pécs" ]
      }
    , { name = "Szeged"
      , code = ""
      , unofficialNames = [ "Szeged" ]
      }
    , { name = "Székesfehérvár"
      , code = ""
      , unofficialNames = [ "Székesfehérvár" ]
      }
    , { name = "Szombathely"
      , code = ""
      , unofficialNames = [ "Szombathely" ]
      }
    , { name = "Szolnok"
      , code = ""
      , unofficialNames = [ "Szolnok" ]
      }
    , { name = "Sopron"
      , code = ""
      , unofficialNames = [ "Sopron" ]
      }
    , { name = "Somogy"
      , code = ""
      , unofficialNames = [ "Somogy" ]
      }
    , { name = "Szekszárd"
      , code = ""
      , unofficialNames = [ "Szekszárd" ]
      }
    , { name = "Salgótarján"
      , code = ""
      , unofficialNames = [ "Salgótarján" ]
      }
    , { name = "Szabolcs-Szatmár-Bereg"
      , code = ""
      , unofficialNames = [ "Szabolcs-Szatmár-Bereg" ]
      }
    , { name = "Tatabánya"
      , code = ""
      , unofficialNames = [ "Tatabánya" ]
      }
    , { name = "Tolna"
      , code = ""
      , unofficialNames = [ "Tolna" ]
      }
    , { name = "Vas"
      , code = ""
      , unofficialNames = [ "Vas" ]
      }
    , { name = "Veszprém"
      , code = ""
      , unofficialNames = [ "Veszprém" ]
      }
    , { name = "Veszprém"
      , code = ""
      , unofficialNames = [ "Veszprém" ]
      }
    , { name = "Zala"
      , code = ""
      , unofficialNames = [ "Zala" ]
      }
    , { name = "Zalaegerszeg"
      , code = ""
      , unofficialNames = [ "Zalaegerszeg" ]
      }
    ]


{-| -}
indonesiaSubdivisions : List Subdivision
indonesiaSubdivisions =
    []


{-| -}
irelandSubdivisions : List Subdivision
irelandSubdivisions =
    [ { name = "Connacht"
      , code = ""
      , unofficialNames = [ "Connaught" ]
      }
    , { name = "Clare"
      , code = ""
      , unofficialNames = [ "An Clár" ]
      }
    , { name = "Cavan"
      , code = ""
      , unofficialNames = [ "An Cabhán" ]
      }
    , { name = "Carlow"
      , code = ""
      , unofficialNames = [ "Ceatharlach" ]
      }
    , { name = "Dublin"
      , code = ""
      , unofficialNames = [ "Átha Cliath" ]
      }
    , { name = "Donegal"
      , code = ""
      , unofficialNames = [ "Dún na nGall" ]
      }
    , { name = "Galway"
      , code = ""
      , unofficialNames = [ "Gaillimh" ]
      }
    , { name = "Kildare"
      , code = ""
      , unofficialNames = [ "Cill Dara" ]
      }
    , { name = "Kilkenny"
      , code = ""
      , unofficialNames = [ "Cill Chainnigh" ]
      }
    , { name = "Kerry"
      , code = ""
      , unofficialNames = [ "Ciarraighe", "Ciarraí" ]
      }
    , { name = "Longford"
      , code = ""
      , unofficialNames = [ "Longphort", "Longphuirt" ]
      }
    , { name = "Louth"
      , code = ""
      , unofficialNames = [ "Lughbhadh", "Lú" ]
      }
    , { name = "Limerick"
      , code = ""
      , unofficialNames = [ "Luimneach" ]
      }
    , { name = "Leitrim"
      , code = ""
      , unofficialNames = [ "Liathdroim" ]
      }
    , { name = "Laois"
      , code = ""
      , unofficialNames = [ "Laoighis", "Queenʿs" ]
      }
    , { name = "Meath"
      , code = ""
      , unofficialNames = [ "An Mhí", "An Mhídhe" ]
      }
    , { name = "Monaghan"
      , code = ""
      , unofficialNames = [ "Muineachán" ]
      }
    , { name = "Mayo"
      , code = ""
      , unofficialNames = [ "Maigh Eo" ]
      }
    , { name = "Offaly"
      , code = ""
      , unofficialNames = [ "Kingʿs", "Kingʿs County", "Ua Uíbh Fhailí", "Uí Fáilghe" ]
      }
    , { name = "Roscommon"
      , code = ""
      , unofficialNames = [ "Ros Comáin" ]
      }
    , { name = "Sligo"
      , code = ""
      , unofficialNames = [ "Sligeach" ]
      }
    , { name = "Tipperary"
      , code = ""
      , unofficialNames = [ "Tiobraid Árann" ]
      }
    , { name = "Waterford"
      , code = ""
      , unofficialNames = [ "Port Láirge" ]
      }
    , { name = "Westmeath"
      , code = ""
      , unofficialNames = [ "An Iarmhidhe" ]
      }
    , { name = "Wicklow"
      , code = ""
      , unofficialNames = [ "Cill Maintain", "Cill Mhanntáin" ]
      }
    , { name = "Wexford"
      , code = ""
      , unofficialNames = [ "Loch Garman" ]
      }
    , { name = "Cork"
      , code = ""
      , unofficialNames = [ "Corcaigh", "County Cork" ]
      }
    ]


{-| -}
israelSubdivisions : List Subdivision
israelSubdivisions =
    [ { name = "HaDarom"
      , code = ""
      , unofficialNames = [ "Southern" ]
      }
    , { name = "Haifa"
      , code = ""
      , unofficialNames = [ "Hefa", "H̱efa", "Haifa", "Haifa", "Haifa" ]
      }
    , { name = "Yerushalayim"
      , code = ""
      , unofficialNames = [ "al-Quds", "Yerushalayim", "Jerusalem", "Jérusalem", "Jerusalén" ]
      }
    , { name = "HaMerkaz"
      , code = ""
      , unofficialNames = [ "Central" ]
      }
    , { name = "Tel-Aviv"
      , code = ""
      , unofficialNames = [ "Tel-Aviv" ]
      }
    , { name = "HaZafon"
      , code = ""
      , unofficialNames = [ "Northern" ]
      }
    ]


{-| -}
isleOfManSubdivisions : List Subdivision
isleOfManSubdivisions =
    [ { name = "Andreas"
      , code = ""
      , unofficialNames = [ "Andreas" ]
      }
    , { name = "Arbory"
      , code = ""
      , unofficialNames = [ "Arbory" ]
      }
    , { name = "Ballaugh"
      , code = ""
      , unofficialNames = [ "Ballaugh" ]
      }
    , { name = "Braddan"
      , code = ""
      , unofficialNames = [ "Braddan" ]
      }
    , { name = "Bride"
      , code = ""
      , unofficialNames = [ "Bride" ]
      }
    , { name = "Castletown"
      , code = ""
      , unofficialNames = [ "Castletown" ]
      }
    , { name = "Douglas"
      , code = ""
      , unofficialNames = [ "Douglas" ]
      }
    , { name = "German"
      , code = ""
      , unofficialNames = [ "German" ]
      }
    , { name = "Jurby"
      , code = ""
      , unofficialNames = [ "Jurby" ]
      }
    , { name = "Laxey"
      , code = ""
      , unofficialNames = [ "Laxey" ]
      }
    , { name = "Lezayre"
      , code = ""
      , unofficialNames = [ "Lezayre" ]
      }
    , { name = "Lonan"
      , code = ""
      , unofficialNames = [ "Lonan" ]
      }
    , { name = "Malew"
      , code = ""
      , unofficialNames = [ "Malew" ]
      }
    , { name = "Marown"
      , code = ""
      , unofficialNames = [ "Marown" ]
      }
    , { name = "Maughold"
      , code = ""
      , unofficialNames = [ "Maughold" ]
      }
    , { name = "Michael"
      , code = ""
      , unofficialNames = [ "Michael" ]
      }
    , { name = "Onchan"
      , code = ""
      , unofficialNames = [ "Onchan" ]
      }
    , { name = "Patrick"
      , code = ""
      , unofficialNames = [ "Patrick" ]
      }
    , { name = "Peel"
      , code = ""
      , unofficialNames = [ "Peel" ]
      }
    , { name = "Port Erin"
      , code = ""
      , unofficialNames = [ "Port Erin" ]
      }
    , { name = "Port St Mary"
      , code = ""
      , unofficialNames = [ "Port St Mary" ]
      }
    , { name = "Ramsey"
      , code = ""
      , unofficialNames = [ "Ramsey" ]
      }
    , { name = "Rushen"
      , code = ""
      , unofficialNames = [ "Rushen" ]
      }
    , { name = "Santon"
      , code = ""
      , unofficialNames = [ "Santon" ]
      }
    ]


{-| -}
indiaSubdivisions : List Subdivision
indiaSubdivisions =
    [ { name = "Andaman and Nicobar Islands"
      , code = ""
      , unofficialNames = [ "Andaman and Nicobar Islands" ]
      }
    , { name = "Andhra Pradesh"
      , code = ""
      , unofficialNames = [ "Andhra Pradesh" ]
      }
    , { name = "Arunachal Pradesh"
      , code = ""
      , unofficialNames = [ "Arunachal Pradesh" ]
      }
    , { name = "Assam"
      , code = ""
      , unofficialNames = [ "Assam" ]
      }
    , { name = "Bihar"
      , code = ""
      , unofficialNames = [ "Bihar" ]
      }
    , { name = "Chandigarh"
      , code = ""
      , unofficialNames = [ "Chandigarh" ]
      }
    , { name = "Chhattisgarh"
      , code = ""
      , unofficialNames = [ "Chhattisgarh" ]
      }
    , { name = "Daman and Diu"
      , code = ""
      , unofficialNames = [ "Daman and Diu" ]
      }
    , { name = "Delhi"
      , code = ""
      , unofficialNames = [ "Delhi" ]
      }
    , { name = "Dadra and Nagar Haveli"
      , code = ""
      , unofficialNames = [ "Dadra and Nagar Haveli" ]
      }
    , { name = "Goa"
      , code = ""
      , unofficialNames = [ "Goa" ]
      }
    , { name = "Gujarat"
      , code = ""
      , unofficialNames = [ "Gujarat" ]
      }
    , { name = "Himachal Pradesh"
      , code = ""
      , unofficialNames = [ "Himachal Pradesh" ]
      }
    , { name = "Haryana"
      , code = ""
      , unofficialNames = [ "Haryana" ]
      }
    , { name = "Jharkhand"
      , code = ""
      , unofficialNames = [ "Vananchal" ]
      }
    , { name = "Jammu and Kashmir"
      , code = ""
      , unofficialNames = [ "Jammu and Kashmir" ]
      }
    , { name = "Karnataka"
      , code = ""
      , unofficialNames = [ "Kanara" ]
      }
    , { name = "Kerala"
      , code = ""
      , unofficialNames = [ "Kerala" ]
      }
    , { name = "Lakshadweep"
      , code = ""
      , unofficialNames = [ "Laccadive", "Lakkadiven" ]
      }
    , { name = "Maharashtra"
      , code = ""
      , unofficialNames = [ "Maharashtra" ]
      }
    , { name = "Meghalaya"
      , code = ""
      , unofficialNames = [ "Meghalaya" ]
      }
    , { name = "Manipur"
      , code = ""
      , unofficialNames = [ "Manipur" ]
      }
    , { name = "Madhya Pradesh"
      , code = ""
      , unofficialNames = [ "Madhya Pradesh" ]
      }
    , { name = "Mizoram"
      , code = ""
      , unofficialNames = [ "Mizoram" ]
      }
    , { name = "Nagaland"
      , code = ""
      , unofficialNames = [ "Nagaland" ]
      }
    , { name = "Orissa"
      , code = ""
      , unofficialNames = [ "Orissa" ]
      }
    , { name = "Punjab"
      , code = ""
      , unofficialNames = [ "Punjab" ]
      }
    , { name = "Pondicherry"
      , code = ""
      , unofficialNames = [ "Pondicherry" ]
      }
    , { name = "Rajasthan"
      , code = ""
      , unofficialNames = [ "Rajasthan" ]
      }
    , { name = "Sikkim"
      , code = ""
      , unofficialNames = [ "Denjong" ]
      }
    , { name = "Tamil Nadu"
      , code = ""
      , unofficialNames = [ "Tamil Nadu" ]
      }
    , { name = "Tripura"
      , code = ""
      , unofficialNames = [ "Tripura" ]
      }
    , { name = "Telangana"
      , code = ""
      , unofficialNames = [ "Telangana" ]
      }
    , { name = "Uttaranchal"
      , code = ""
      , unofficialNames = [ "Uttaranchal" ]
      }
    , { name = "Uttar Pradesh"
      , code = ""
      , unofficialNames = [ "Uttar Pradesh" ]
      }
    , { name = "West Bengal"
      , code = ""
      , unofficialNames = [ "West Bengal" ]
      }
    ]


{-| -}
iraqSubdivisions : List Subdivision
iraqSubdivisions =
    [ { name = "Al Anbar"
      , code = ""
      , unofficialNames = [ "al-Anbar" ]
      }
    , { name = "Arbil"
      , code = ""
      , unofficialNames = [ "Arbil", "Erbil", "Irbil" ]
      }
    , { name = "Al Basrah"
      , code = ""
      , unofficialNames = [ "Basra", "Bassora", "al-Basrah" ]
      }
    , { name = "Babil"
      , code = ""
      , unofficialNames = [ "Babil", "Babylon" ]
      }
    , { name = "Baghdad"
      , code = ""
      , unofficialNames = [ "Baġdād", "Bagdad", "Bagdad" ]
      }
    , { name = "Dahuk"
      , code = ""
      , unofficialNames = [ "Dahuk" ]
      }
    , { name = "Diyalá"
      , code = ""
      , unofficialNames = [ "Diyala" ]
      }
    , { name = "Dhi Qar"
      , code = ""
      , unofficialNames = [ "Dhi Qar", "Thi Qar" ]
      }
    , { name = "Karbala'"
      , code = ""
      , unofficialNames = [ "Karbala", "Kerbala", "Kerbela" ]
      }
    , { name = "Maysan"
      , code = ""
      , unofficialNames = [ "Maysan" ]
      }
    , { name = "Al Muthanná"
      , code = ""
      , unofficialNames = [ "al-Muthanna" ]
      }
    , { name = "An Najaf"
      , code = ""
      , unofficialNames = [ "Najaf", "Nedjef", "Nejef" ]
      }
    , { name = "Ninawá"
      , code = ""
      , unofficialNames = [ "Nineveh", "Niniveh" ]
      }
    , { name = "Al Qadisiyah"
      , code = ""
      , unofficialNames = [ "al-Qadisiyah" ]
      }
    , { name = "Salah ad Din"
      , code = ""
      , unofficialNames = [ "Salah-ad-Din" ]
      }
    , { name = "As Sulaymaniyah"
      , code = ""
      , unofficialNames = [ "Sulaymaniya", "Sulaymānīyah", "as-Sulaymaniyah" ]
      }
    , { name = "At Ta'mim"
      , code = ""
      , unofficialNames = [ "at-Tamim" ]
      }
    , { name = "Wasit"
      , code = ""
      , unofficialNames = [ "Wasit" ]
      }
    ]


{-| -}
iranIslamicRepublicOfSubdivisions : List Subdivision
iranIslamicRepublicOfSubdivisions =
    [ { name = "Az¯arbayjan-e Sharqi"
      , code = ""
      , unofficialNames = [ "Azarbayjān-e Khavari", "East Azerbaijan" ]
      }
    , { name = "Az¯arbayjan-e Gharbi"
      , code = ""
      , unofficialNames = [ "Azarbayjān-e Bakhtari", "West Azerbaijan" ]
      }
    , { name = "Ardabil"
      , code = ""
      , unofficialNames = [ "Ardabil", "Ardebil" ]
      }
    , { name = "Esfahan"
      , code = ""
      , unofficialNames = [ "Isfahan" ]
      }
    , { name = "Ilam"
      , code = ""
      , unofficialNames = [ "Ilam" ]
      }
    , { name = "Bushehr"
      , code = ""
      , unofficialNames = [ "Bushehr" ]
      }
    , { name = "Tehran"
      , code = ""
      , unofficialNames = [ "Teheran" ]
      }
    , { name = "Chahar Mah¸all va Bakhtiari"
      , code = ""
      , unofficialNames = [ "Chaharmahal Bakhtiari" ]
      }
    , { name = "Khorasan"
      , code = ""
      , unofficialNames = [ "Khorasan" ]
      }
    , { name = "Khuzestan"
      , code = ""
      , unofficialNames = [ "Arabistan" ]
      }
    , { name = "Zanjan"
      , code = ""
      , unofficialNames = [ "Zanjan" ]
      }
    , { name = "Semnan"
      , code = ""
      , unofficialNames = [ "Semnan" ]
      }
    , { name = "Sistan va Baluchestan"
      , code = ""
      , unofficialNames = [ "Sistan-e Baluchistan" ]
      }
    , { name = "Fars"
      , code = ""
      , unofficialNames = [ "Fars" ]
      }
    , { name = "Kerman"
      , code = ""
      , unofficialNames = [ "Kerman" ]
      }
    , { name = "Kordestan"
      , code = ""
      , unofficialNames = [ "Kurdestan", "Kurdistan" ]
      }
    , { name = "Kermanshah"
      , code = ""
      , unofficialNames = [ "Bakhtaran" ]
      }
    , { name = "Kohkiluyeh va Buyer Ahmad"
      , code = ""
      , unofficialNames = [ "Boyer Ahmad-e Kohkiluyeh", "Kohkilouyeh" ]
      }
    , { name = "Gilan"
      , code = ""
      , unofficialNames = [ "Gilan" ]
      }
    , { name = "Lorestan"
      , code = ""
      , unofficialNames = [ "Lorestan" ]
      }
    , { name = "Mazandaran"
      , code = ""
      , unofficialNames = [ "Mazandaran" ]
      }
    , { name = "Markazi"
      , code = ""
      , unofficialNames = [ "Markazi" ]
      }
    , { name = "Hormozgan"
      , code = ""
      , unofficialNames = [ "Hormozgan" ]
      }
    , { name = "Hamadan"
      , code = ""
      , unofficialNames = [ "Hamedan" ]
      }
    , { name = "Yazd"
      , code = ""
      , unofficialNames = [ "Yazd" ]
      }
    , { name = "Qom"
      , code = ""
      , unofficialNames = [ "Qom" ]
      }
    , { name = "Golestan"
      , code = ""
      , unofficialNames = [ "Golestan" ]
      }
    , { name = "Qazvin"
      , code = ""
      , unofficialNames = [ "Qazvin" ]
      }
    , { name = "Khorasan-e Janubi"
      , code = ""
      , unofficialNames = [ "Khorasan-e Janubi" ]
      }
    , { name = "Khorasan-e Razavi"
      , code = ""
      , unofficialNames = [ "Khorasan-e Razavi" ]
      }
    , { name = "Khorasan-e Shemali"
      , code = ""
      , unofficialNames = [ "Khorasan-e Shemali" ]
      }
    ]


{-| -}
icelandSubdivisions : List Subdivision
icelandSubdivisions =
    [ { name = "Reykjavík"
      , code = ""
      , unofficialNames = [ "Reykjavík" ]
      }
    , { name = "Höfuðborgarsvæði utan Reykjavíkur"
      , code = ""
      , unofficialNames = [ "Höfuðborgarsvæði utan Reykjavíkur" ]
      }
    , { name = "Suðurnes"
      , code = ""
      , unofficialNames = [ "Suðurnes" ]
      }
    , { name = "Vesturland"
      , code = ""
      , unofficialNames = [ "Vesturland" ]
      }
    , { name = "Vestfirðir"
      , code = ""
      , unofficialNames = [ "Vestfirðir" ]
      }
    , { name = "Norðurland vestra"
      , code = ""
      , unofficialNames = [ "Norðurland vestra" ]
      }
    , { name = "Norðurland eystra"
      , code = ""
      , unofficialNames = [ "Norðurland eystra" ]
      }
    , { name = "Austurland"
      , code = ""
      , unofficialNames = [ "Austurland" ]
      }
    , { name = "Suðurland"
      , code = ""
      , unofficialNames = [ "Suðurland" ]
      }
    ]


{-| -}
italySubdivisions : List Subdivision
italySubdivisions =
    [ { name = "Agrigento"
      , code = ""
      , unofficialNames = [ "Agrigento" ]
      }
    , { name = "Alessandria"
      , code = ""
      , unofficialNames = [ "Alessandria" ]
      }
    , { name = "Ancona"
      , code = ""
      , unofficialNames = [ "Ancona" ]
      }
    , { name = "Aosta"
      , code = ""
      , unofficialNames = [ "Aosta" ]
      }
    , { name = "Ascoli Piceno"
      , code = ""
      , unofficialNames = [ "Ascoli Piceno" ]
      }
    , { name = "L'Aquila"
      , code = ""
      , unofficialNames = [ "L'Aquila" ]
      }
    , { name = "Arezzo"
      , code = ""
      , unofficialNames = [ "Arezzo" ]
      }
    , { name = "Asti"
      , code = ""
      , unofficialNames = [ "Asti" ]
      }
    , { name = "Avellino"
      , code = ""
      , unofficialNames = [ "Avellino" ]
      }
    , { name = "Bari"
      , code = ""
      , unofficialNames = [ "Bari" ]
      }
    , { name = "Bergamo"
      , code = ""
      , unofficialNames = [ "Bergamo" ]
      }
    , { name = "Biella"
      , code = ""
      , unofficialNames = [ "Biella" ]
      }
    , { name = "Belluno"
      , code = ""
      , unofficialNames = [ "Belluno" ]
      }
    , { name = "Benevento"
      , code = ""
      , unofficialNames = [ "Benevento" ]
      }
    , { name = "Bologna"
      , code = ""
      , unofficialNames = [ "Bologna" ]
      }
    , { name = "Brindisi"
      , code = ""
      , unofficialNames = [ "Brindisi" ]
      }
    , { name = "Brescia"
      , code = ""
      , unofficialNames = [ "Brescia" ]
      }
    , { name = "Barletta-Andria-Trani"
      , code = ""
      , unofficialNames = [ "Barletta-Andria-Trani" ]
      }
    , { name = "Bolzano"
      , code = ""
      , unofficialNames = [ "Bolzano" ]
      }
    , { name = "Cagliari"
      , code = ""
      , unofficialNames = [ "Cagliari" ]
      }
    , { name = "Campobasso"
      , code = ""
      , unofficialNames = [ "Campobasso" ]
      }
    , { name = "Caserta"
      , code = ""
      , unofficialNames = [ "Caserta" ]
      }
    , { name = "Chieti"
      , code = ""
      , unofficialNames = [ "Chieti" ]
      }
    , { name = "Carbonia-Iglesias"
      , code = ""
      , unofficialNames = [ "Carbonia-Iglesias" ]
      }
    , { name = "Caltanissetta"
      , code = ""
      , unofficialNames = [ "Caltanissetta" ]
      }
    , { name = "Cuneo"
      , code = ""
      , unofficialNames = [ "Cuneo" ]
      }
    , { name = "Como"
      , code = ""
      , unofficialNames = [ "Como" ]
      }
    , { name = "Cremona"
      , code = ""
      , unofficialNames = [ "Cremona" ]
      }
    , { name = "Cosenza"
      , code = ""
      , unofficialNames = [ "Cosenza" ]
      }
    , { name = "Catania"
      , code = ""
      , unofficialNames = [ "Catania" ]
      }
    , { name = "Catanzaro"
      , code = ""
      , unofficialNames = [ "Catanzaro" ]
      }
    , { name = "Enna"
      , code = ""
      , unofficialNames = [ "Enna" ]
      }
    , { name = "Ferrara"
      , code = ""
      , unofficialNames = [ "Ferrara" ]
      }
    , { name = "Foggia"
      , code = ""
      , unofficialNames = [ "Foggia" ]
      }
    , { name = "Firenze"
      , code = ""
      , unofficialNames = [ "Firenze" ]
      }
    , { name = "Forlì-Cesena"
      , code = ""
      , unofficialNames = [ "Forlì-Cesena" ]
      }
    , { name = "Fermo"
      , code = ""
      , unofficialNames = [ "Fermo" ]
      }
    , { name = "Frosinone"
      , code = ""
      , unofficialNames = [ "Frosinone" ]
      }
    , { name = "Genova"
      , code = ""
      , unofficialNames = [ "Genova" ]
      }
    , { name = "Gorizia"
      , code = ""
      , unofficialNames = [ "Gorizia" ]
      }
    , { name = "Grosseto"
      , code = ""
      , unofficialNames = [ "Grosseto" ]
      }
    , { name = "Imperia"
      , code = ""
      , unofficialNames = [ "Imperia" ]
      }
    , { name = "Isernia"
      , code = ""
      , unofficialNames = [ "Isernia" ]
      }
    , { name = "Crotone"
      , code = ""
      , unofficialNames = [ "Crotone" ]
      }
    , { name = "Lecco"
      , code = ""
      , unofficialNames = [ "Lecco" ]
      }
    , { name = "Lecce"
      , code = ""
      , unofficialNames = [ "Lecce" ]
      }
    , { name = "Livorno"
      , code = ""
      , unofficialNames = [ "Livorno" ]
      }
    , { name = "Lodi"
      , code = ""
      , unofficialNames = [ "Lodi" ]
      }
    , { name = "Latina"
      , code = ""
      , unofficialNames = [ "Latina" ]
      }
    , { name = "Lucca"
      , code = ""
      , unofficialNames = [ "Lucca" ]
      }
    , { name = "Monza e Brianza"
      , code = ""
      , unofficialNames = [ "Monza e Brianza" ]
      }
    , { name = "Macerata"
      , code = ""
      , unofficialNames = [ "Macerata" ]
      }
    , { name = "Messina"
      , code = ""
      , unofficialNames = [ "Messina" ]
      }
    , { name = "Milano"
      , code = ""
      , unofficialNames = [ "Milano" ]
      }
    , { name = "Mantova"
      , code = ""
      , unofficialNames = [ "Mantova" ]
      }
    , { name = "Modena"
      , code = ""
      , unofficialNames = [ "Modena" ]
      }
    , { name = "Massa-Carrara"
      , code = ""
      , unofficialNames = [ "Massa-Carrara" ]
      }
    , { name = "Matera"
      , code = ""
      , unofficialNames = [ "Matera" ]
      }
    , { name = "Napoli"
      , code = ""
      , unofficialNames = [ "Napoli" ]
      }
    , { name = "Novara"
      , code = ""
      , unofficialNames = [ "Novara" ]
      }
    , { name = "Nuoro"
      , code = ""
      , unofficialNames = [ "Nuoro" ]
      }
    , { name = "Ogliastra"
      , code = ""
      , unofficialNames = [ "Ogliastra" ]
      }
    , { name = "Oristano"
      , code = ""
      , unofficialNames = [ "Oristano" ]
      }
    , { name = "Olbia-Tempio"
      , code = ""
      , unofficialNames = [ "Olbia-Tempio" ]
      }
    , { name = "Palermo"
      , code = ""
      , unofficialNames = [ "Palermo" ]
      }
    , { name = "Piacenza"
      , code = ""
      , unofficialNames = [ "Piacenza" ]
      }
    , { name = "Padova"
      , code = ""
      , unofficialNames = [ "Padova" ]
      }
    , { name = "Pescara"
      , code = ""
      , unofficialNames = [ "Pescara" ]
      }
    , { name = "Perugia"
      , code = ""
      , unofficialNames = [ "Perugia" ]
      }
    , { name = "Pisa"
      , code = ""
      , unofficialNames = [ "Pisa" ]
      }
    , { name = "Pordenone"
      , code = ""
      , unofficialNames = [ "Pordenone" ]
      }
    , { name = "Prato"
      , code = ""
      , unofficialNames = [ "Prato" ]
      }
    , { name = "Parma"
      , code = ""
      , unofficialNames = [ "Parma" ]
      }
    , { name = "Pesaro e Urbino"
      , code = ""
      , unofficialNames = [ "Pesaro e Urbino" ]
      }
    , { name = "Pistoia"
      , code = ""
      , unofficialNames = [ "Pistoia" ]
      }
    , { name = "Pavia"
      , code = ""
      , unofficialNames = [ "Pavia" ]
      }
    , { name = "Potenza"
      , code = ""
      , unofficialNames = [ "Potenza" ]
      }
    , { name = "Ravenna"
      , code = ""
      , unofficialNames = [ "Ravenna" ]
      }
    , { name = "Reggio Calabria"
      , code = ""
      , unofficialNames = [ "Reggio Calabria" ]
      }
    , { name = "Reggio Emilia"
      , code = ""
      , unofficialNames = [ "Reggio Emilia" ]
      }
    , { name = "Ragusa"
      , code = ""
      , unofficialNames = [ "Ragusa" ]
      }
    , { name = "Rieti"
      , code = ""
      , unofficialNames = [ "Rieti" ]
      }
    , { name = "Roma"
      , code = ""
      , unofficialNames = [ "Roma" ]
      }
    , { name = "Rimini"
      , code = ""
      , unofficialNames = [ "Rimini" ]
      }
    , { name = "Rovigo"
      , code = ""
      , unofficialNames = [ "Rovigo" ]
      }
    , { name = "Salerno"
      , code = ""
      , unofficialNames = [ "Salerno" ]
      }
    , { name = "Siena"
      , code = ""
      , unofficialNames = [ "Siena" ]
      }
    , { name = "Sondrio"
      , code = ""
      , unofficialNames = [ "Sondrio" ]
      }
    , { name = "La Spezia"
      , code = ""
      , unofficialNames = [ "La Spezia" ]
      }
    , { name = "Siracusa"
      , code = ""
      , unofficialNames = [ "Siracusa" ]
      }
    , { name = "Sassari"
      , code = ""
      , unofficialNames = [ "Sassari" ]
      }
    , { name = "Savona"
      , code = ""
      , unofficialNames = [ "Savona" ]
      }
    , { name = "Taranto"
      , code = ""
      , unofficialNames = [ "Taranto" ]
      }
    , { name = "Teramo"
      , code = ""
      , unofficialNames = [ "Teramo" ]
      }
    , { name = "Trento"
      , code = ""
      , unofficialNames = [ "Trento" ]
      }
    , { name = "Torino"
      , code = ""
      , unofficialNames = [ "Torino" ]
      }
    , { name = "Trapani"
      , code = ""
      , unofficialNames = [ "Trapani" ]
      }
    , { name = "Terni"
      , code = ""
      , unofficialNames = [ "Terni" ]
      }
    , { name = "Trieste"
      , code = ""
      , unofficialNames = [ "Trieste" ]
      }
    , { name = "Treviso"
      , code = ""
      , unofficialNames = [ "Treviso" ]
      }
    , { name = "Udine"
      , code = ""
      , unofficialNames = [ "Udine" ]
      }
    , { name = "Varese"
      , code = ""
      , unofficialNames = [ "Varese" ]
      }
    , { name = "Verbano-Cusio-Ossola"
      , code = ""
      , unofficialNames = [ "Verbano-Cusio-Ossola" ]
      }
    , { name = "Vercelli"
      , code = ""
      , unofficialNames = [ "Vercelli" ]
      }
    , { name = "Venezia"
      , code = ""
      , unofficialNames = [ "Venezia" ]
      }
    , { name = "Vicenza"
      , code = ""
      , unofficialNames = [ "Vicenza" ]
      }
    , { name = "Verona"
      , code = ""
      , unofficialNames = [ "Verona" ]
      }
    , { name = "Medio Campidano"
      , code = ""
      , unofficialNames = [ "Medio Campidano" ]
      }
    , { name = "Viterbo"
      , code = ""
      , unofficialNames = [ "Viterbo" ]
      }
    , { name = "Vibo Valentia"
      , code = ""
      , unofficialNames = [ "Vibo Valentia" ]
      }
    ]


{-| -}
jerseySubdivisions : List Subdivision
jerseySubdivisions =
    [ { name = "Saint Clement"
      , code = ""
      , unofficialNames = [ "Saint Clement" ]
      }
    , { name = "Saint Saviour"
      , code = ""
      , unofficialNames = [ "Saint Saviour" ]
      }
    , { name = "Saint Brelade"
      , code = ""
      , unofficialNames = [ "Saint Brelade" ]
      }
    , { name = "Grouville"
      , code = ""
      , unofficialNames = [ "Grouville" ]
      }
    , { name = "Saint Mary"
      , code = ""
      , unofficialNames = [ "Saint Mary" ]
      }
    , { name = "Saint Lawrence"
      , code = ""
      , unofficialNames = [ "Saint Lawrence" ]
      }
    , { name = "Saint Peter"
      , code = ""
      , unofficialNames = [ "Saint Peter" ]
      }
    , { name = "Saint Ouen"
      , code = ""
      , unofficialNames = [ "Saint Ouen" ]
      }
    , { name = "Saint John"
      , code = ""
      , unofficialNames = [ "Saint John" ]
      }
    , { name = "Trinity"
      , code = ""
      , unofficialNames = [ "Trinity" ]
      }
    , { name = "Saint Martin"
      , code = ""
      , unofficialNames = [ "Saint Martin" ]
      }
    , { name = "Saint Helier"
      , code = ""
      , unofficialNames = [ "Saint Helier" ]
      }
    ]


{-| -}
jamaicaSubdivisions : List Subdivision
jamaicaSubdivisions =
    [ { name = "Kingston"
      , code = ""
      , unofficialNames = [ "Kingston" ]
      }
    , { name = "Saint Andrew"
      , code = ""
      , unofficialNames = [ "Saint Andrew" ]
      }
    , { name = "Saint Thomas"
      , code = ""
      , unofficialNames = [ "Saint Thomas" ]
      }
    , { name = "Portland"
      , code = ""
      , unofficialNames = [ "Portland" ]
      }
    , { name = "Saint Mary"
      , code = ""
      , unofficialNames = [ "Saint Mary" ]
      }
    , { name = "Saint Ann"
      , code = ""
      , unofficialNames = [ "Saint Ann" ]
      }
    , { name = "Trelawny"
      , code = ""
      , unofficialNames = [ "Trelawny" ]
      }
    , { name = "Saint James"
      , code = ""
      , unofficialNames = [ "Saint James" ]
      }
    , { name = "Hanover"
      , code = ""
      , unofficialNames = [ "Hanover" ]
      }
    , { name = "Westmoreland"
      , code = ""
      , unofficialNames = [ "Westmoreland" ]
      }
    , { name = "Saint Elizabeth"
      , code = ""
      , unofficialNames = [ "Saint Elizabeth" ]
      }
    , { name = "Manchester"
      , code = ""
      , unofficialNames = [ "Manchester" ]
      }
    , { name = "Clarendon"
      , code = ""
      , unofficialNames = [ "Clarendon" ]
      }
    , { name = "Saint Catherine"
      , code = ""
      , unofficialNames = [ "Saint Catherine" ]
      }
    ]


{-| -}
jordanSubdivisions : List Subdivision
jordanSubdivisions =
    [ { name = "Ajlun"
      , code = ""
      , unofficialNames = [ "Ajloan", "Ajlun" ]
      }
    , { name = "Amman"
      , code = ""
      , unofficialNames = [ "Amman" ]
      }
    , { name = "Aqaba"
      , code = ""
      , unofficialNames = [ "Akaba", "Aqaba", "Aqqaba", "al-Aqaba" ]
      }
    , { name = "At Tafilah"
      , code = ""
      , unofficialNames = [ "Tafiela", "Tafileh", "at-Tafilah" ]
      }
    , { name = "Az Zarqa'"
      , code = ""
      , unofficialNames = [ "Zarka", "Zarqa", "Zerka" ]
      }
    , { name = "Al Balqa'"
      , code = ""
      , unofficialNames = [ "Al Balqa'" ]
      }
    , { name = "Irbid"
      , code = ""
      , unofficialNames = [ "Irbit" ]
      }
    , { name = "Jarash"
      , code = ""
      , unofficialNames = [ "Jarash", "Jerash" ]
      }
    , { name = "Al Karak"
      , code = ""
      , unofficialNames = [ "Karak", "Kerak" ]
      }
    , { name = "Al Mafraq"
      , code = ""
      , unofficialNames = [ "Mafraq" ]
      }
    , { name = "Madaba"
      , code = ""
      , unofficialNames = [ "Madaba", "Maʿdaba", "Maʿdabâ" ]
      }
    , { name = "Ma`an"
      , code = ""
      , unofficialNames = [ "Maan", "Maʿan" ]
      }
    ]


{-| -}
japanSubdivisions : List Subdivision
japanSubdivisions =
    [ { name = "Hokkaido"
      , code = ""
      , unofficialNames = [ "Hokkaidô", "Hokkaido" ]
      }
    , { name = "Aomori"
      , code = ""
      , unofficialNames = [ "Aomori" ]
      }
    , { name = "Iwate"
      , code = ""
      , unofficialNames = [ "Iwate" ]
      }
    , { name = "Miyagi"
      , code = ""
      , unofficialNames = [ "Miyagi" ]
      }
    , { name = "Akita"
      , code = ""
      , unofficialNames = [ "Akita" ]
      }
    , { name = "Yamagata"
      , code = ""
      , unofficialNames = [ "Yamagata" ]
      }
    , { name = "Fukushima"
      , code = ""
      , unofficialNames = [ "Hukusima", "Fukushima" ]
      }
    , { name = "Ibaraki"
      , code = ""
      , unofficialNames = [ "Ibaraki" ]
      }
    , { name = "Tochigi"
      , code = ""
      , unofficialNames = [ "Totigi", "Tochigi" ]
      }
    , { name = "Gunma"
      , code = ""
      , unofficialNames = [ "Gunma" ]
      }
    , { name = "Saitama"
      , code = ""
      , unofficialNames = [ "Saitama" ]
      }
    , { name = "Chiba"
      , code = ""
      , unofficialNames = [ "Tiba", "Chiba" ]
      }
    , { name = "Tokyo"
      , code = ""
      , unofficialNames = [ "Tokyo", "Tokio" ]
      }
    , { name = "Kanagawa"
      , code = ""
      , unofficialNames = [ "Kanagawa" ]
      }
    , { name = "Niigata"
      , code = ""
      , unofficialNames = [ "Niigata" ]
      }
    , { name = "Toyama"
      , code = ""
      , unofficialNames = [ "Toyama" ]
      }
    , { name = "Ishikawa"
      , code = ""
      , unofficialNames = [ "Isikawa", "Ishikawa" ]
      }
    , { name = "Fukui"
      , code = ""
      , unofficialNames = [ "Hukui", "Fukui" ]
      }
    , { name = "Yamanashi"
      , code = ""
      , unofficialNames = [ "Yamanasi", "Yamanashi" ]
      }
    , { name = "Nagano"
      , code = ""
      , unofficialNames = [ "Nagano" ]
      }
    , { name = "Gifu"
      , code = ""
      , unofficialNames = [ "Gihu", "Gifu" ]
      }
    , { name = "Shizuoka"
      , code = ""
      , unofficialNames = [ "Sizuoka", "Shizuoka" ]
      }
    , { name = "Aichi"
      , code = ""
      , unofficialNames = [ "Aiti", "Aichi" ]
      }
    , { name = "Mie"
      , code = ""
      , unofficialNames = [ "Mie" ]
      }
    , { name = "Shiga"
      , code = ""
      , unofficialNames = [ "Siga", "Shiga" ]
      }
    , { name = "Kyoto"
      , code = ""
      , unofficialNames = [ "Kyoto" ]
      }
    , { name = "Osaka"
      , code = ""
      , unofficialNames = [ "Osaka" ]
      }
    , { name = "Hyogo"
      , code = ""
      , unofficialNames = [ "Hyogo" ]
      }
    , { name = "Nara"
      , code = ""
      , unofficialNames = [ "Nara" ]
      }
    , { name = "Wakayama"
      , code = ""
      , unofficialNames = [ "Wakayama" ]
      }
    , { name = "Tottori"
      , code = ""
      , unofficialNames = [ "Tottori" ]
      }
    , { name = "Shimane"
      , code = ""
      , unofficialNames = [ "Simane", "Shimane" ]
      }
    , { name = "Okayama"
      , code = ""
      , unofficialNames = [ "Okayama" ]
      }
    , { name = "Hiroshima"
      , code = ""
      , unofficialNames = [ "Hirosima", "Hiroshima" ]
      }
    , { name = "Yamaguchi"
      , code = ""
      , unofficialNames = [ "Yamaguti", "Yamaguchi" ]
      }
    , { name = "Tokushima"
      , code = ""
      , unofficialNames = [ "Tokusima", "Tokushima" ]
      }
    , { name = "Kagawa"
      , code = ""
      , unofficialNames = [ "Kagawa" ]
      }
    , { name = "Ehime"
      , code = ""
      , unofficialNames = [ "Ehime" ]
      }
    , { name = "Kochi"
      , code = ""
      , unofficialNames = [ "Kochi" ]
      }
    , { name = "Fukuoka"
      , code = ""
      , unofficialNames = [ "Hukuoka", "Fukuoka" ]
      }
    , { name = "Saga"
      , code = ""
      , unofficialNames = [ "Saga" ]
      }
    , { name = "Nagasaki"
      , code = ""
      , unofficialNames = [ "Nagasaki" ]
      }
    , { name = "Kumamoto"
      , code = ""
      , unofficialNames = [ "Kumamoto" ]
      }
    , { name = "Oita"
      , code = ""
      , unofficialNames = [ "Oita" ]
      }
    , { name = "Miyazaki"
      , code = ""
      , unofficialNames = [ "Miyazaki" ]
      }
    , { name = "Kagoshima"
      , code = ""
      , unofficialNames = [ "Kagosima", "Kagoshima" ]
      }
    , { name = "Okinawa"
      , code = ""
      , unofficialNames = [ "Okinawa" ]
      }
    ]


{-| -}
kenyaSubdivisions : List Subdivision
kenyaSubdivisions =
    [ { name = "Nairobi Municipality"
      , code = ""
      , unofficialNames = [ "Nairobi Municipality" ]
      }
    , { name = "Central"
      , code = ""
      , unofficialNames = [ "Central" ]
      }
    , { name = "Coast"
      , code = ""
      , unofficialNames = [ "Coast" ]
      }
    , { name = "Eastern"
      , code = ""
      , unofficialNames = [ "Eastern" ]
      }
    , { name = "North-Eastern"
      , code = ""
      , unofficialNames = [ "North-Eastern" ]
      }
    , { name = "Nyanza"
      , code = ""
      , unofficialNames = [ "Nyanza" ]
      }
    , { name = "Rift Valley"
      , code = ""
      , unofficialNames = [ "Rift Valley" ]
      }
    , { name = "Western"
      , code = ""
      , unofficialNames = [ "Western" ]
      }
    ]


{-| -}
kyrgyzstanSubdivisions : List Subdivision
kyrgyzstanSubdivisions =
    [ { name = "Batken"
      , code = ""
      , unofficialNames = [ "Batken" ]
      }
    , { name = "Chü"
      , code = ""
      , unofficialNames = [ "Chu", "Chui", "Chuy", "Çüy" ]
      }
    , { name = "Bishkek"
      , code = ""
      , unofficialNames = [ "Bishkek", "Kenesh Bishkek" ]
      }
    , { name = "Jalal-Abad"
      , code = ""
      , unofficialNames = [ "Jalal-Abad" ]
      }
    , { name = "Naryn"
      , code = ""
      , unofficialNames = [ "Naryn" ]
      }
    , { name = "Osh"
      , code = ""
      , unofficialNames = [ "Osh" ]
      }
    , { name = "Talas"
      , code = ""
      , unofficialNames = [ "Talas" ]
      }
    , { name = "Ysyk-Köl"
      , code = ""
      , unofficialNames = [ "Balikchi", "Balykchy", "Balıkçı", "Issyk-Kul" ]
      }
    ]


{-| -}
cambodiaSubdivisions : List Subdivision
cambodiaSubdivisions =
    [ { name = "Banteay Mean Chey [Bântéay Méanchey]"
      , code = ""
      , unofficialNames = [ "Banteay Mean Chey [Bântéay Méanchey]", "banteay meanchey", "b.chey", "bm", "b.m" ]
      }
    , { name = "Kracheh [Krâchéh]"
      , code = ""
      , unofficialNames = [ "Kratié", "Kratie", "kr.ch", "kr", "k.r" ]
      }
    , { name = "Mondol Kiri [Môndól Kiri]"
      , code = ""
      , unofficialNames = [ "Mondolkiri", "Mondulkiri", "m.ri", "mk", "m.k" ]
      }
    , { name = "Phnom Penh [Phnum Pénh]"
      , code = ""
      , unofficialNames = [ "Phnom Penh", "pp", "p.p" ]
      }
    , { name = "Preah Vihear [Preah Vihéar]"
      , code = ""
      , unofficialNames = [ "Preah Vihear [Preah Vihéar]", "pr.h", "ph", "p.h" ]
      }
    , { name = "Prey Veaeng [Prey Vêng]"
      , code = ""
      , unofficialNames = [ "Prey Vêng", "Prey Veng", "pr.v", "pv", "p.v" ]
      }
    , { name = "Pousaat [Pouthisat]"
      , code = ""
      , unofficialNames = [ "Poŭthĭsăt", "Pursat", "p.s", "ps" ]
      }
    , { name = "Rotanak Kiri [Rôtânôkiri]"
      , code = ""
      , unofficialNames = [ "Ratanakiri", "Rotanokiri", "Rôtanah Kiri", "r.r", "rr", "rk", "r.k" ]
      }
    , { name = "Siem Reab [Siemréab]"
      , code = ""
      , unofficialNames = [ "Siem Reap", "Siemréab", "s.r", "sr" ]
      }
    , { name = "Krong Preah Sihanouk [Krong Preah Sihanouk]"
      , code = ""
      , unofficialNames = [ "Preah Seihânu", "Sihanoukville", "Kompong Som", "Kampong Som", "Kompong Saom", "Kampong Saom", "k.som", "k.saom", "s.v" ]
      }
    , { name = "Stueng Traeng"
      , code = ""
      , unofficialNames = [ "Stoeng Trêng", "Stung Treng", "s.t", "st" ]
      }
    , { name = "Baat Dambang [Batdâmbâng]"
      , code = ""
      , unofficialNames = [ "Batdâmbâng", "Battambang", "bb", "b.b" ]
      }
    , { name = "Svaay Rieng [Svay Rieng]"
      , code = ""
      , unofficialNames = [ "Svaay Rieng [Svay Rieng]", "svay rieng", "sv.r", "svr" ]
      }
    , { name = "Taakaev [Takêv]"
      , code = ""
      , unofficialNames = [ "Takeo", "Takêv", "tk", "t.k" ]
      }
    , { name = "Otdar Mean Chey [Otdâr Méanchey] "
      , code = ""
      , unofficialNames = [ "Otdar Mean Chey [Otdâr Méanchey] ", "Oddar Meanchey", "o.chey", "om", "o.m" ]
      }
    , { name = "Krong Kep [Krong Kêb]"
      , code = ""
      , unofficialNames = [ "Krong Kep [Krong Kêb]", "Kep" ]
      }
    , { name = "Krong Pailin [Krong Pailin]"
      , code = ""
      , unofficialNames = [ "Krong Pailin [Krong Pailin]", "Pailin", "pl", "p.l" ]
      }
    , { name = "Kampong Chaam [Kâmpóng Cham]"
      , code = ""
      , unofficialNames = [ "Kompong Cham", "Kompong Chaam", "Kampong Cham", "k.cham", "kc", "k.c" ]
      }
    , { name = "Kampong Chhnang [Kâmpóng Chhnang]"
      , code = ""
      , unofficialNames = [ "Kompong Chhnang", "k.chhnang", "kn", "k.n" ]
      }
    , { name = "Kampong Spueu [Kâmpóng Spœ]"
      , code = ""
      , unofficialNames = [ "Kompong Speu", "Kompong Spoe", "Kampong Speu", "Kampong Spoe", "k.speu", "ks", "k.s" ]
      }
    , { name = "Kampong Thum [Kâmpóng Thum]"
      , code = ""
      , unofficialNames = [ "Kompong Thom", "Kompong Thum", "Kampong Thom", "Kampong Thum", "k.thom", "kt", "k.t" ]
      }
    , { name = "Kampot [Kâmpôt]"
      , code = ""
      , unofficialNames = [ "Kampot [Kâmpôt]", "k.pot", "kp", "k.p" ]
      }
    , { name = "Kandaal [Kândal]"
      , code = ""
      , unofficialNames = [ "Kandaal [Kândal]", "Kandal", "Kondal", "kd", "k.d" ]
      }
    , { name = "Kaoh Kong [Kaôh Kong]"
      , code = ""
      , unofficialNames = [ "Koh Kong", "kk", "k.k" ]
      }
    ]


{-| -}
kiribatiSubdivisions : List Subdivision
kiribatiSubdivisions =
    [ { name = "Gilbert Islands"
      , code = ""
      , unofficialNames = [ "Gilbert Islands" ]
      }
    , { name = "Line Islands"
      , code = ""
      , unofficialNames = [ "Line Islands" ]
      }
    , { name = "Phoenix Islands"
      , code = ""
      , unofficialNames = [ "Abariringa", "Canton", "Gardner", "Hull", "Kanton", "Kemins", "Manra", "Mary Island", "Nikumaroro", "Orona", "Phoenix", "Rawaki", "Sydney" ]
      }
    ]


{-| -}
comorosSubdivisions : List Subdivision
comorosSubdivisions =
    [ { name = "Anjouan"
      , code = ""
      , unofficialNames = [ "Anjouan", "Ndzuwani", "Nzwani" ]
      }
    , { name = "Grande Comore"
      , code = ""
      , unofficialNames = [ "Grande Comore", "Njazídja" ]
      }
    , { name = "Mohéli"
      , code = ""
      , unofficialNames = [ "Mohilla", "Mohéli", "Moili" ]
      }
    ]


{-| -}
saintKittsAndNevisSubdivisions : List Subdivision
saintKittsAndNevisSubdivisions =
    [ { name = "Christ Church Nichola Town"
      , code = ""
      , unofficialNames = [ "Christ Church Nichola Town" ]
      }
    , { name = "Saint Anne Sandy Point"
      , code = ""
      , unofficialNames = [ "Saint Anne Sandy Point" ]
      }
    , { name = "Saint George Basseterre"
      , code = ""
      , unofficialNames = [ "Saint George Basseterre" ]
      }
    , { name = "Saint George Gingerland"
      , code = ""
      , unofficialNames = [ "Saint George Gingerland" ]
      }
    , { name = "Saint James Windward"
      , code = ""
      , unofficialNames = [ "Saint James Windward" ]
      }
    , { name = "Saint John Capisterre"
      , code = ""
      , unofficialNames = [ "Saint John Capisterre" ]
      }
    , { name = "Saint John Figtree"
      , code = ""
      , unofficialNames = [ "Saint John Figtree" ]
      }
    , { name = "Saint Mary Cayon"
      , code = ""
      , unofficialNames = [ "Saint Mary Cayon" ]
      }
    , { name = "Saint Paul Capisterre"
      , code = ""
      , unofficialNames = [ "Saint Paul Capisterre" ]
      }
    , { name = "Saint Paul Charlestown"
      , code = ""
      , unofficialNames = [ "Saint Paul Charlestown" ]
      }
    , { name = "Saint Peter Basseterre"
      , code = ""
      , unofficialNames = [ "Saint Peter Basseterre" ]
      }
    , { name = "Saint Thomas Lowland"
      , code = ""
      , unofficialNames = [ "Saint Thomas Lowland" ]
      }
    , { name = "Saint Thomas Middle Island"
      , code = ""
      , unofficialNames = [ "Saint Thomas Middle Island" ]
      }
    , { name = "Trinity Palmetto Point"
      , code = ""
      , unofficialNames = [ "Trinity Palmetto Point" ]
      }
    ]


{-| -}
koreaDemocraticPeopleSRepublicOfSubdivisions : List Subdivision
koreaDemocraticPeopleSRepublicOfSubdivisions =
    [ { name = "Chagang-do"
      , code = ""
      , unofficialNames = [ "Chagang", "Jagang" ]
      }
    , { name = "Hamgyongbuk-do"
      , code = ""
      , unofficialNames = [ "Hamgyongbukto", "North Hamgyong" ]
      }
    , { name = "Hamgyongnam-do"
      , code = ""
      , unofficialNames = [ "Hamgyongnamdo", "South Hamgyong" ]
      }
    , { name = "Hwanghaebuk-do"
      , code = ""
      , unofficialNames = [ "North Hwanghae" ]
      }
    , { name = "Hwanghaenam-do"
      , code = ""
      , unofficialNames = [ "South Hwanghae" ]
      }
    , { name = "Kaesong-si"
      , code = ""
      , unofficialNames = [ "Kaesong-si" ]
      }
    , { name = "Kangwon-do"
      , code = ""
      , unofficialNames = [ "Gangweon", "Kangweon", "Kangwon" ]
      }
    , { name = "Najin Sonbong-si"
      , code = ""
      , unofficialNames = [ "Najin Sonbong-si" ]
      }
    , { name = "Nampo-si"
      , code = ""
      , unofficialNames = [ "Nampo-si" ]
      }
    , { name = "Pyonganbuk-do"
      , code = ""
      , unofficialNames = [ "North Phyongan", "North Pyongan", "Pyonganbukto" ]
      }
    , { name = "Pyongannam-do"
      , code = ""
      , unofficialNames = [ "Pyongannamdo", "South Phyongan", "South Pyongan" ]
      }
    , { name = "Pyongyang-si"
      , code = ""
      , unofficialNames = [ "Pyongyang" ]
      }
    , { name = "Rason"
      , code = ""
      , unofficialNames = [ "Rason" ]
      }
    , { name = "Yanggang-do"
      , code = ""
      , unofficialNames = [ "Ryanggang" ]
      }
    ]


{-| -}
koreaRepublicOfSubdivisions : List Subdivision
koreaRepublicOfSubdivisions =
    [ { name = "Seoul Teugbyeolsi [Seoul-T'ukpyolshi]"
      , code = ""
      , unofficialNames = [ "Seoul", "Soul" ]
      }
    , { name = "Busan Gwang'yeogsi [Pusan-Kwangyokshi]"
      , code = ""
      , unofficialNames = [ "Busan" ]
      }
    , { name = "Daegu Gwang'yeogsi [Taegu-Kwangyokshi]"
      , code = ""
      , unofficialNames = [ "Daegu" ]
      }
    , { name = "Incheon Gwang'yeogsi [Inch'n-Kwangyokshi]"
      , code = ""
      , unofficialNames = [ "Incheon", "Inchon" ]
      }
    , { name = "Gwangju Gwang'yeogsi [Kwangju-Kwangyokshi]"
      , code = ""
      , unofficialNames = [ "Gwangju" ]
      }
    , { name = "Daejeon Gwang'yeogsi [Taejon-Kwangyokshi]"
      , code = ""
      , unofficialNames = [ "Daejeon", "Taejeon", "Taejon" ]
      }
    , { name = "Ulsan Gwang'yeogsi [Ulsan-Kwangyokshi]"
      , code = ""
      , unofficialNames = [ "Ulsan Gwang'yeogsi [Ulsan-Kwangyokshi]" ]
      }
    , { name = "Gyeonggido [Kyonggi-do]"
      , code = ""
      , unofficialNames = [ "Gyeonggido [Kyonggi-do]" ]
      }
    , { name = "Gang'weondo [Kang-won-do]"
      , code = ""
      , unofficialNames = [ "Kangwon" ]
      }
    , { name = "Chungcheongbugdo [Ch'ungch'ongbuk-do]"
      , code = ""
      , unofficialNames = [ "North Chungchong" ]
      }
    , { name = "Chungcheongnamdo [Ch'ungch'ongnam-do]"
      , code = ""
      , unofficialNames = [ "South Chungchong" ]
      }
    , { name = "Jeonrabugdo[Chollabuk-do]"
      , code = ""
      , unofficialNames = [ "Chollapuk", "North Cholla" ]
      }
    , { name = "Jeonranamdo [Chollanam-do]"
      , code = ""
      , unofficialNames = [ "South Cholla" ]
      }
    , { name = "Gyeongsangbugdo [Kyongsangbuk-do]"
      , code = ""
      , unofficialNames = [ "North Kyongsang" ]
      }
    , { name = "Gyeongsangnamdo [Kyongsangnam-do]"
      , code = ""
      , unofficialNames = [ "Gyeongsangnamdo/ Kyongsang-namdo/ South Kyongsang" ]
      }
    , { name = "Jejudo [Cheju-do]"
      , code = ""
      , unofficialNames = [ "Jeju", "Quelpart" ]
      }
    ]


{-| -}
kuwaitSubdivisions : List Subdivision
kuwaitSubdivisions =
    [ { name = "Al Ahmadi"
      , code = ""
      , unofficialNames = [ "Ahmadi" ]
      }
    , { name = "Al Farwaniyah"
      , code = ""
      , unofficialNames = [ "Farwaniyah" ]
      }
    , { name = "Hawalli"
      , code = ""
      , unofficialNames = [ "Hawalli" ]
      }
    , { name = "Al Jahrah"
      , code = ""
      , unofficialNames = [ "Al Jahra", "Jahra", "Jahrah", "al-Jahra", "al-Jahraʿ" ]
      }
    , { name = "Al Kuwayt"
      , code = ""
      , unofficialNames = [ "Capital", "Koweit", "Kuwait", "Kuwayt", "al-Kuwayt" ]
      }
    , { name = "Mubarak al-Kabir"
      , code = ""
      , unofficialNames = [ "Mubarak al-Kabir" ]
      }
    ]


{-| -}
caymanIslandsSubdivisions : List Subdivision
caymanIslandsSubdivisions =
    [ { name = "Bodden Town"
      , code = ""
      , unofficialNames = [ "Bodden Town" ]
      }
    , { name = "Cayman Brac"
      , code = ""
      , unofficialNames = [ "Cayman Brac" ]
      }
    , { name = "East End"
      , code = ""
      , unofficialNames = [ "East End" ]
      }
    , { name = "George Town"
      , code = ""
      , unofficialNames = [ "George Town" ]
      }
    , { name = "North Side"
      , code = ""
      , unofficialNames = [ "North Side" ]
      }
    , { name = "West Bay"
      , code = ""
      , unofficialNames = [ "West Bay" ]
      }
    ]


{-| -}
kazakhstanSubdivisions : List Subdivision
kazakhstanSubdivisions =
    [ { name = "Aqmola oblysy"
      , code = ""
      , unofficialNames = [ "Akmola", "Akmolinsk", "Aķmola", "Celinograd", "Tselinograd" ]
      }
    , { name = "Aqtöbe oblysy"
      , code = ""
      , unofficialNames = [ "Aktjubinsk", "Aktyubinsk", "Aktöbe", "Aktʿubinsk" ]
      }
    , { name = "Almaty"
      , code = ""
      , unofficialNames = [ "Almati Oblasti", "Almaty Oblasty", "Almatı" ]
      }
    , { name = "Almaty oblysy"
      , code = ""
      , unofficialNames = [ "Almaty oblysy" ]
      }
    , { name = "Astana"
      , code = ""
      , unofficialNames = [ "Astana" ]
      }
    , { name = "Atyrau oblysy"
      , code = ""
      , unofficialNames = [ "Ateransk", "Aterau", "Atirau", "Atırau", "Gurjev", "Guryev" ]
      }
    , { name = "Bayqongyr"
      , code = ""
      , unofficialNames = [ "Bayqongyr" ]
      }
    , { name = "Qaraghandy oblysy"
      , code = ""
      , unofficialNames = [ "Karaganda", "Karagandi", "Karagandy", "Qaraghandy", "Ķaragandı" ]
      }
    , { name = "Qostanay oblysy"
      , code = ""
      , unofficialNames = [ "Kostanay", "Kustanai", "Kustanaj", "Kustanay", "Ķostanay" ]
      }
    , { name = "Qyzylorda oblysy"
      , code = ""
      , unofficialNames = [ "Ak-Mechet", "Kizilorda", "Kyzyl-Orda", "Kyzylorda", "Kzyl-Orda", "Qyzylorda", "Ķızılorda" ]
      }
    , { name = "Mangghystau oblysy"
      , code = ""
      , unofficialNames = [ "Mangghystau", "Mangistau", "Mangkistau", "Mangqystau" ]
      }
    , { name = "Pavlodar oblysy"
      , code = ""
      , unofficialNames = [ "Pavlodar oblysy" ]
      }
    , { name = "Soltüstik Qazaqstan oblysy"
      , code = ""
      , unofficialNames = [ "Northern Kazakhstan", "Soltüstik Kazakstan", "Soltüstik Qazaqstan" ]
      }
    , { name = "Shyghys Qazaqstan oblysy"
      , code = ""
      , unofficialNames = [ "Eastern Kazakhstan", "Shyghys Qazaqstan", "Sigis Kazakstan" ]
      }
    , { name = "Ongtüstik Qazaqstan oblysy"
      , code = ""
      , unofficialNames = [ "Ongtüstik Qazaqstan", "Ongtüstük Kazakstan", "Southern Kazakhstan" ]
      }
    , { name = "Batys Qazaqstan oblysy"
      , code = ""
      , unofficialNames = [ "Batis Kazakstan", "Batys Qazaqstan", "Uralsk", "Uralskaya Oblast", "Western Kazakhstan" ]
      }
    , { name = "Zhambyl oblysy"
      , code = ""
      , unofficialNames = [ "Aulie-Ata", "Auliye-Ata", "Cambil", "Cambıl", "Djambul", "Dzhambul", "Zhambul", "Zhambyl", "Zhambül" ]
      }
    ]


{-| -}
laoPeopleSDemocraticRepublicSubdivisions : List Subdivision
laoPeopleSDemocraticRepublicSubdivisions =
    [ { name = "Attapu [Attopeu]"
      , code = ""
      , unofficialNames = [ "Attapu", "Attopei", "Attopeu" ]
      }
    , { name = "Bokèo"
      , code = ""
      , unofficialNames = [ "Bokèo" ]
      }
    , { name = "Bolikhamxai [Borikhane]"
      , code = ""
      , unofficialNames = [ "Bolikhamsai", "Bolikhamxai", "Borikhamxai" ]
      }
    , { name = "Champasak [Champassak]"
      , code = ""
      , unofficialNames = [ "Champasack", "Champassak" ]
      }
    , { name = "Houaphan"
      , code = ""
      , unofficialNames = [ "Houaphan" ]
      }
    , { name = "Khammouan"
      , code = ""
      , unofficialNames = [ "Khammouan" ]
      }
    , { name = "Louang Namtha"
      , code = ""
      , unofficialNames = [ "Louang Namtha", "Louangnamtha", "Luang Namtha", "Luong Nam Tha" ]
      }
    , { name = "Louangphabang [Louang Prabang]"
      , code = ""
      , unofficialNames = [ "Louang Phrabang", "Louang Prabang", "Louangphrabang", "Luang Phrabang" ]
      }
    , { name = "Oudômxai [Oudomsai]"
      , code = ""
      , unofficialNames = [ "Oudomsai", "Oudomsay" ]
      }
    , { name = "Phôngsali [Phong Saly]"
      , code = ""
      , unofficialNames = [ "Phongsali" ]
      }
    , { name = "Salavan [Saravane]"
      , code = ""
      , unofficialNames = [ "Saravane" ]
      }
    , { name = "Savannakhét"
      , code = ""
      , unofficialNames = [ "Savannakhét" ]
      }
    , { name = "Vientiane"
      , code = ""
      , unofficialNames = [ "Vientiane Province" ]
      }
    , { name = "Vientiane Prefecture"
      , code = ""
      , unofficialNames = [ "Viangchan City", "Vientiane City" ]
      }
    , { name = "Xaignabouli [Sayaboury]"
      , code = ""
      , unofficialNames = [ "Sayaboury", "Sayabury", "Xaignaboury" ]
      }
    , { name = "Xékong [Sékong]"
      , code = ""
      , unofficialNames = [ "Xékong" ]
      }
    , { name = "Xiangkhoang [Xieng Khouang]"
      , code = ""
      , unofficialNames = [ "Xiang Khouang", "Xiangkhouang", "Xiangkhuang", "Xieng Khouang" ]
      }
    , { name = "Xaisômboun"
      , code = ""
      , unofficialNames = [ "Xaisômboun" ]
      }
    ]


{-| -}
lebanonSubdivisions : List Subdivision
lebanonSubdivisions =
    [ { name = "Loubnâne ech Chemâli"
      , code = ""
      , unofficialNames = [ "Ash Shamal", "North" ]
      }
    , { name = "Beirut"
      , code = ""
      , unofficialNames = [ "Bayrout", "Bayrut", "Beirut", "Beyrout", "Beyrouth", "Beyrût" ]
      }
    , { name = "El Béqaa"
      , code = ""
      , unofficialNames = [ "Bekaa" ]
      }
    , { name = "Loubnâne ej Jnoûbi"
      , code = ""
      , unofficialNames = [ "South" ]
      }
    , { name = "Jabal Loubnâne"
      , code = ""
      , unofficialNames = [ "Mount Lebanon" ]
      }
    , { name = "Nabatîyé"
      , code = ""
      , unofficialNames = [ "Nabatiyeh" ]
      }
    ]


{-| -}
saintLuciaSubdivisions : List Subdivision
saintLuciaSubdivisions =
    []


{-| -}
liechtensteinSubdivisions : List Subdivision
liechtensteinSubdivisions =
    [ { name = "Balzers"
      , code = ""
      , unofficialNames = [ "Balzers" ]
      }
    , { name = "Eschen"
      , code = ""
      , unofficialNames = [ "Eschen" ]
      }
    , { name = "Gamprin"
      , code = ""
      , unofficialNames = [ "Gamprin" ]
      }
    , { name = "Mauren"
      , code = ""
      , unofficialNames = [ "Mauren" ]
      }
    , { name = "Planken"
      , code = ""
      , unofficialNames = [ "Planken" ]
      }
    , { name = "Ruggell"
      , code = ""
      , unofficialNames = [ "Ruggel" ]
      }
    , { name = "Schaan"
      , code = ""
      , unofficialNames = [ "Schaan" ]
      }
    , { name = "Schellenberg"
      , code = ""
      , unofficialNames = [ "Schellenberg" ]
      }
    , { name = "Triesen"
      , code = ""
      , unofficialNames = [ "Triesen" ]
      }
    , { name = "Triesenberg"
      , code = ""
      , unofficialNames = [ "Triesenberg" ]
      }
    , { name = "Vaduz"
      , code = ""
      , unofficialNames = [ "Vaduz" ]
      }
    ]


{-| -}
sriLankaSubdivisions : List Subdivision
sriLankaSubdivisions =
    [ { name = "Colombo"
      , code = ""
      , unofficialNames = [ "Kolamba", "Colombo", "Colombo" ]
      }
    , { name = "Gampaha"
      , code = ""
      , unofficialNames = [ "Gampaha" ]
      }
    , { name = "Kalutara"
      , code = ""
      , unofficialNames = [ "Kalutara" ]
      }
    , { name = "Kandy"
      , code = ""
      , unofficialNames = [ "Mahe Nuwara", "Maha Nuwara" ]
      }
    , { name = "Matale"
      , code = ""
      , unofficialNames = [ "Matale" ]
      }
    , { name = "Nuwara Eliya"
      , code = ""
      , unofficialNames = [ "Nuwara Eliya" ]
      }
    , { name = "Galle"
      , code = ""
      , unofficialNames = [ "Gālla" ]
      }
    , { name = "Matara"
      , code = ""
      , unofficialNames = [ "Matara" ]
      }
    , { name = "Hambantota"
      , code = ""
      , unofficialNames = [ "Hambantota" ]
      }
    , { name = "Jaffna"
      , code = ""
      , unofficialNames = [ "Yapnaya", "Yāpanaya" ]
      }
    , { name = "Kilinochchi"
      , code = ""
      , unofficialNames = [ "Kilinochchi" ]
      }
    , { name = "Mannar"
      , code = ""
      , unofficialNames = [ "Manar", "Mannar", "Mannerama" ]
      }
    , { name = "Vavuniya"
      , code = ""
      , unofficialNames = [ "Vavuniyāwa" ]
      }
    , { name = "Mullaittivu"
      , code = ""
      , unofficialNames = [ "Mulativu" ]
      }
    , { name = "Batticaloa"
      , code = ""
      , unofficialNames = [ "Mad̨akalpūwa" ]
      }
    , { name = "Ampara"
      , code = ""
      , unofficialNames = [ "Ampara" ]
      }
    , { name = "Trincomalee"
      , code = ""
      , unofficialNames = [ "Trinkomali", "Tirikunāmalaya" ]
      }
    , { name = "Kurunegala"
      , code = ""
      , unofficialNames = [ "Kurunegala" ]
      }
    , { name = "Puttalam"
      , code = ""
      , unofficialNames = [ "Puttalam" ]
      }
    , { name = "Anuradhapura"
      , code = ""
      , unofficialNames = [ "Anuradhapur", "Anurādhapūraya" ]
      }
    , { name = "Polonnaruwa"
      , code = ""
      , unofficialNames = [ "Polonaruwa", "Polunnaruwa" ]
      }
    , { name = "Badulla"
      , code = ""
      , unofficialNames = [ "Badulla" ]
      }
    , { name = "Monaragala"
      , code = ""
      , unofficialNames = [ "Monaragalla", "Moneragala" ]
      }
    , { name = "Ratnapura"
      , code = ""
      , unofficialNames = [ "Ratnapūraya" ]
      }
    , { name = "Kegalla"
      , code = ""
      , unofficialNames = [ "Kegalle" ]
      }
    ]


{-| -}
liberiaSubdivisions : List Subdivision
liberiaSubdivisions =
    [ { name = "Bong"
      , code = ""
      , unofficialNames = [ "Bong" ]
      }
    , { name = "Bomi"
      , code = ""
      , unofficialNames = [ "Bomi" ]
      }
    , { name = "Grand Cape Mount"
      , code = ""
      , unofficialNames = [ "Grand Cape Mount" ]
      }
    , { name = "Grand Bassa"
      , code = ""
      , unofficialNames = [ "Grand Bassa" ]
      }
    , { name = "Grand Gedeh"
      , code = ""
      , unofficialNames = [ "Grand Gedah" ]
      }
    , { name = "Grand Kru"
      , code = ""
      , unofficialNames = [ "Grand Kru" ]
      }
    , { name = "Lofa"
      , code = ""
      , unofficialNames = [ "Lofa" ]
      }
    , { name = "Margibi"
      , code = ""
      , unofficialNames = [ "Margibi" ]
      }
    , { name = "Montserrado"
      , code = ""
      , unofficialNames = [ "Montserrado" ]
      }
    , { name = "Maryland"
      , code = ""
      , unofficialNames = [ "Maryland" ]
      }
    , { name = "Nimba"
      , code = ""
      , unofficialNames = [ "Nimba" ]
      }
    , { name = "Rivercess"
      , code = ""
      , unofficialNames = [ "Rivercess" ]
      }
    , { name = "Sinoe"
      , code = ""
      , unofficialNames = [ "Sinoe" ]
      }
    , { name = "Gbarpolu"
      , code = ""
      , unofficialNames = [ "Gbarpolu" ]
      }
    , { name = "River Gee"
      , code = ""
      , unofficialNames = [ "River Gee" ]
      }
    ]


{-| -}
lesothoSubdivisions : List Subdivision
lesothoSubdivisions =
    [ { name = "Maseru"
      , code = ""
      , unofficialNames = [ "Maseru" ]
      }
    , { name = "Butha-Buthe"
      , code = ""
      , unofficialNames = [ "Butha-Buthe" ]
      }
    , { name = "Leribe"
      , code = ""
      , unofficialNames = [ "Leribe" ]
      }
    , { name = "Berea"
      , code = ""
      , unofficialNames = [ "Berea" ]
      }
    , { name = "Mafeteng"
      , code = ""
      , unofficialNames = [ "Mafeteng" ]
      }
    , { name = "Mohale's Hoek"
      , code = ""
      , unofficialNames = [ "Mohale's Hoek" ]
      }
    , { name = "Quthing"
      , code = ""
      , unofficialNames = [ "Quthing" ]
      }
    , { name = "Qacha's Nek"
      , code = ""
      , unofficialNames = [ "Qacha's Nek" ]
      }
    , { name = "Mokhotlong"
      , code = ""
      , unofficialNames = [ "Mokhotlong" ]
      }
    , { name = "Thaba-Tseka"
      , code = ""
      , unofficialNames = [ "Thaba-Tseka" ]
      }
    ]


{-| -}
lithuaniaSubdivisions : List Subdivision
lithuaniaSubdivisions =
    [ { name = "Alytaus Apskritis"
      , code = ""
      , unofficialNames = [ "Alytaus Apskritis" ]
      }
    , { name = "Klaipedos Apskritis"
      , code = ""
      , unofficialNames = [ "Klaipedos" ]
      }
    , { name = "Kauno Apskritis"
      , code = ""
      , unofficialNames = [ "Kauno Apskritis" ]
      }
    , { name = "Marijampoles Apskritis"
      , code = ""
      , unofficialNames = [ "Mariampoles" ]
      }
    , { name = "Panevežio Apskritis"
      , code = ""
      , unofficialNames = [ "Panevezhio" ]
      }
    , { name = "Šiauliu Apskritis"
      , code = ""
      , unofficialNames = [ "Shiauliu" ]
      }
    , { name = "Taurages Apskritis"
      , code = ""
      , unofficialNames = [ "Taurages" ]
      }
    , { name = "Telšiu Apskritis"
      , code = ""
      , unofficialNames = [ "Telshiu" ]
      }
    , { name = "Utenos Apskritis"
      , code = ""
      , unofficialNames = [ "Utenos Apskritis" ]
      }
    , { name = "Vilniaus Apskritis"
      , code = ""
      , unofficialNames = [ "Vilniaus Apskritis" ]
      }
    ]


{-| -}
luxembourgSubdivisions : List Subdivision
luxembourgSubdivisions =
    [ { name = "Diekirch"
      , code = ""
      , unofficialNames = [ "Diekirch" ]
      }
    , { name = "Grevenmacher"
      , code = ""
      , unofficialNames = [ "Grevenmacher" ]
      }
    , { name = "Luxembourg (fr)"
      , code = ""
      , unofficialNames = [ "Luxemburg" ]
      }
    ]


{-| -}
latviaSubdivisions : List Subdivision
latviaSubdivisions =
    [ { name = "Aizkraukles Aprinkis"
      , code = ""
      , unofficialNames = [ "Aizkraukles Aprinkis" ]
      }
    , { name = "Aluksnes Aprinkis"
      , code = ""
      , unofficialNames = [ "Aluksnes Aprinkis" ]
      }
    , { name = "Balvu Aprinkis"
      , code = ""
      , unofficialNames = [ "Balvu Aprinkis" ]
      }
    , { name = "Bauskas Aprinkis"
      , code = ""
      , unofficialNames = [ "Bauskas Aprinkis" ]
      }
    , { name = "Cesu Aprinkis"
      , code = ""
      , unofficialNames = [ "Cesu Aprinkis" ]
      }
    , { name = "Daugavpils Aprinkis"
      , code = ""
      , unofficialNames = [ "Daugavpils Aprinkis" ]
      }
    , { name = "Daugavpils"
      , code = ""
      , unofficialNames = [ "Daugavpils" ]
      }
    , { name = "Dobeles Aprinkis"
      , code = ""
      , unofficialNames = [ "Dobeles Aprinkis" ]
      }
    , { name = "Gulbenes Aprinkis"
      , code = ""
      , unofficialNames = [ "Gulbenes Aprinkis" ]
      }
    , { name = "Jelgava"
      , code = ""
      , unofficialNames = [ "Jelgava" ]
      }
    , { name = "Jekabpils Aprinkis"
      , code = ""
      , unofficialNames = [ "Jekabpils Aprinkis" ]
      }
    , { name = "Jelgavas Aprinkis"
      , code = ""
      , unofficialNames = [ "Jelgavas Aprinkis" ]
      }
    , { name = "Jurmala"
      , code = ""
      , unofficialNames = [ "Jurmala" ]
      }
    , { name = "Kraslavas Aprinkis"
      , code = ""
      , unofficialNames = [ "Kraslavas Aprinkis" ]
      }
    , { name = "Kuldigas Aprinkis"
      , code = ""
      , unofficialNames = [ "Kuldigas Aprinkis" ]
      }
    , { name = "Liepajas Aprinkis"
      , code = ""
      , unofficialNames = [ "Liepajas Aprinkis" ]
      }
    , { name = "Limbažu Aprinkis"
      , code = ""
      , unofficialNames = [ "Limbažu Aprinkis" ]
      }
    , { name = "Liepaja"
      , code = ""
      , unofficialNames = [ "Liepaja" ]
      }
    , { name = "Ludzas Aprinkis"
      , code = ""
      , unofficialNames = [ "Ludzas Aprinkis" ]
      }
    , { name = "Madonas Aprinkis"
      , code = ""
      , unofficialNames = [ "Madonas Aprinkis" ]
      }
    , { name = "Ogres Aprinkis"
      , code = ""
      , unofficialNames = [ "Ogres Aprinkis" ]
      }
    , { name = "Preilu Aprinkis"
      , code = ""
      , unofficialNames = [ "Preiju" ]
      }
    , { name = "Rezeknes Aprinkis"
      , code = ""
      , unofficialNames = [ "Rezeknes Aprinkis" ]
      }
    , { name = "Rezekne"
      , code = ""
      , unofficialNames = [ "Rezekne" ]
      }
    , { name = "Rigas Aprinkis"
      , code = ""
      , unofficialNames = [ "Rigas Aprinkis" ]
      }
    , { name = "Riga"
      , code = ""
      , unofficialNames = [ "Riga" ]
      }
    , { name = "Saldus Aprinkis"
      , code = ""
      , unofficialNames = [ "Saldus Aprinkis" ]
      }
    , { name = "Talsu Aprinkis"
      , code = ""
      , unofficialNames = [ "Talsu Aprinkis" ]
      }
    , { name = "Tukuma Aprinkis"
      , code = ""
      , unofficialNames = [ "Tukuma Aprinkis" ]
      }
    , { name = "Ventspils Aprinkis"
      , code = ""
      , unofficialNames = [ "Ventspils Aprinkis" ]
      }
    , { name = "Ventspils"
      , code = ""
      , unofficialNames = [ "Ventspils" ]
      }
    , { name = "Valkas Aprinkis"
      , code = ""
      , unofficialNames = [ "Valkas Aprinkis" ]
      }
    , { name = "Valmieras Aprinkis"
      , code = ""
      , unofficialNames = [ "Valmieras Aprinkis" ]
      }
    ]


{-| -}
libyaSubdivisions : List Subdivision
libyaSubdivisions =
    [ { name = "Banghazi"
      , code = ""
      , unofficialNames = [ "Banghazi" ]
      }
    , { name = "Al Butnan"
      , code = ""
      , unofficialNames = [ "Al Butnan" ]
      }
    , { name = "Darnah"
      , code = ""
      , unofficialNames = [ "Darnah" ]
      }
    , { name = "Ghat"
      , code = ""
      , unofficialNames = [ "Ghat" ]
      }
    , { name = "Al Jabal al Akhḑar"
      , code = ""
      , unofficialNames = [ "Al Jabal al Akhḑar" ]
      }
    , { name = "Al Jabal al Gharbī"
      , code = ""
      , unofficialNames = [ "Al Jabal al Gharbī" ]
      }
    , { name = "Al Jifarah"
      , code = ""
      , unofficialNames = [ "Al Jifarah" ]
      }
    , { name = "Al Jufrah"
      , code = ""
      , unofficialNames = [ "Al Jufrah", "Jofra" ]
      }
    , { name = "Al Kufrah"
      , code = ""
      , unofficialNames = [ "Al Kufrah", "Kofra", "Kufra", "Cufra" ]
      }
    , { name = "Al Murqub"
      , code = ""
      , unofficialNames = [ "Al Murqub", "Al Marqab", "al-Morqib" ]
      }
    , { name = "Mişrātah"
      , code = ""
      , unofficialNames = [ "Mişrātah", "Misurata", "Misratah" ]
      }
    , { name = "Al Marj"
      , code = ""
      , unofficialNames = [ "Al Marj", "The Meadows", "Marj" ]
      }
    , { name = "Murzuq"
      , code = ""
      , unofficialNames = [ "Murzuq" ]
      }
    , { name = "Nālūt"
      , code = ""
      , unofficialNames = [ "Nālūt" ]
      }
    , { name = "An Nuqaţ al Khams"
      , code = ""
      , unofficialNames = [ "An Nuqaţ al Khams", "Nuqāṭ al Ḫams" ]
      }
    , { name = "Sabhā"
      , code = ""
      , unofficialNames = [ "Sabhā" ]
      }
    , { name = "Sirte"
      , code = ""
      , unofficialNames = [ "Sirt", "Surt" ]
      }
    , { name = "Tarabulus"
      , code = ""
      , unofficialNames = [ "Ţarābulus", "Tripoli", "Tripoli" ]
      }
    , { name = "Al Wahat"
      , code = ""
      , unofficialNames = [ "Al Wahat", "The Oases", "Al Wahad", "Al Wahah" ]
      }
    , { name = "Wādī al Ḩayāt"
      , code = ""
      , unofficialNames = [ "Wādī al Ḩayāt" ]
      }
    , { name = "Wādī ash Shāţiʾ"
      , code = ""
      , unofficialNames = [ "Wādī ash Shāţiʾ" ]
      }
    , { name = "Az Zawiyah"
      , code = ""
      , unofficialNames = [ "Az Zawiyah" ]
      }
    ]


{-| -}
moroccoSubdivisions : List Subdivision
moroccoSubdivisions =
    [ { name = "Agadir*"
      , code = ""
      , unofficialNames = [ "Agadir*" ]
      }
    , { name = "Aousserd"
      , code = ""
      , unofficialNames = [ "Aousserd" ]
      }
    , { name = "Assa-Zag"
      , code = ""
      , unofficialNames = [ "Assa-Zag" ]
      }
    , { name = "Azilal"
      , code = ""
      , unofficialNames = [ "Azilal" ]
      }
    , { name = "Aït Baha"
      , code = ""
      , unofficialNames = [ "Aït Baha" ]
      }
    , { name = "Beni Mellal"
      , code = ""
      , unofficialNames = [ "Beni Mellal" ]
      }
    , { name = "Berkane"
      , code = ""
      , unofficialNames = [ "Berkane" ]
      }
    , { name = "Ben Slimane"
      , code = ""
      , unofficialNames = [ "Ben Slimane" ]
      }
    , { name = "Boujdour (EH)"
      , code = ""
      , unofficialNames = [ "Boujdour (EH)" ]
      }
    , { name = "Boulemane"
      , code = ""
      , unofficialNames = [ "Boulemane" ]
      }
    , { name = "Casablanca [Dar el Beïda]*"
      , code = ""
      , unofficialNames = [ "Casablanca [Dar el Beïda]*" ]
      }
    , { name = "Chefchaouene"
      , code = ""
      , unofficialNames = [ "Chefchaouene" ]
      }
    , { name = "Chichaoua"
      , code = ""
      , unofficialNames = [ "Chichaoua" ]
      }
    , { name = "Chtouka-Ait Baha"
      , code = ""
      , unofficialNames = [ "Chtouka-Ait Baha" ]
      }
    , { name = "Errachidia"
      , code = ""
      , unofficialNames = [ "Errachidia" ]
      }
    , { name = "Essaouira"
      , code = ""
      , unofficialNames = [ "Essaouira" ]
      }
    , { name = "Es Smara (EH)"
      , code = ""
      , unofficialNames = [ "Es Smara (EH)" ]
      }
    , { name = "Fahs-Beni Makada"
      , code = ""
      , unofficialNames = [ "Fahs-Beni Makada" ]
      }
    , { name = "Fès*"
      , code = ""
      , unofficialNames = [ "Fès*" ]
      }
    , { name = "Figuig"
      , code = ""
      , unofficialNames = [ "Figuig" ]
      }
    , { name = "Guelmim"
      , code = ""
      , unofficialNames = [ "Guelmim" ]
      }
    , { name = "El Hajeb"
      , code = ""
      , unofficialNames = [ "El Hajeb" ]
      }
    , { name = "Al Haouz"
      , code = ""
      , unofficialNames = [ "Al Haouz" ]
      }
    , { name = "Al Hoceïma"
      , code = ""
      , unofficialNames = [ "Al Hoceïma" ]
      }
    , { name = "Ifrane"
      , code = ""
      , unofficialNames = [ "Ifrane" ]
      }
    , { name = "El Jadida"
      , code = ""
      , unofficialNames = [ "El Jadida" ]
      }
    , { name = "Jerada"
      , code = ""
      , unofficialNames = [ "Jerada" ]
      }
    , { name = "Kénitra"
      , code = ""
      , unofficialNames = [ "Kénitra" ]
      }
    , { name = "Kelaat Sraghna"
      , code = ""
      , unofficialNames = [ "Kelaat Sraghna" ]
      }
    , { name = "Khemisset"
      , code = ""
      , unofficialNames = [ "Khemisset" ]
      }
    , { name = "Khenifra"
      , code = ""
      , unofficialNames = [ "Khenifra" ]
      }
    , { name = "Khouribga"
      , code = ""
      , unofficialNames = [ "Khouribga" ]
      }
    , { name = "Laâyoune* (EH)"
      , code = ""
      , unofficialNames = [ "Laâyoune* (EH)" ]
      }
    , { name = "Larache"
      , code = ""
      , unofficialNames = [ "Larache" ]
      }
    , { name = "Marrakech*"
      , code = ""
      , unofficialNames = [ "Marrakech*" ]
      }
    , { name = "Médiouna"
      , code = ""
      , unofficialNames = [ "Médiouna" ]
      }
    , { name = "Meknès*"
      , code = ""
      , unofficialNames = [ "Meknès*" ]
      }
    , { name = "Aït Melloul"
      , code = ""
      , unofficialNames = [ "Aït Melloul" ]
      }
    , { name = "Moulay Yacoub"
      , code = ""
      , unofficialNames = [ "Moulay Yacoub" ]
      }
    , { name = "Nador"
      , code = ""
      , unofficialNames = [ "Nador" ]
      }
    , { name = "Nouaceur"
      , code = ""
      , unofficialNames = [ "Nouaceur" ]
      }
    , { name = "Ouarzazate"
      , code = ""
      , unofficialNames = [ "Ouarzazate" ]
      }
    , { name = "Oued ed Dahab (EH)"
      , code = ""
      , unofficialNames = [ "Oued ed Dahab (EH)" ]
      }
    , { name = "Oujda*"
      , code = ""
      , unofficialNames = [ "Oujda*" ]
      }
    , { name = "Rabat-Salé*"
      , code = ""
      , unofficialNames = [ "Rabat-Salé*" ]
      }
    , { name = "Safi"
      , code = ""
      , unofficialNames = [ "Safi" ]
      }
    , { name = "Salé"
      , code = ""
      , unofficialNames = [ "Salé" ]
      }
    , { name = "Sefrou"
      , code = ""
      , unofficialNames = [ "Sefrou" ]
      }
    , { name = "Settat"
      , code = ""
      , unofficialNames = [ "Settat" ]
      }
    , { name = "Sidi Kacem"
      , code = ""
      , unofficialNames = [ "Sidi Kacem" ]
      }
    , { name = "Skhirate-Témara"
      , code = ""
      , unofficialNames = [ "Skhirate-Témara" ]
      }
    , { name = "Sidi Youssef Ben Ali"
      , code = ""
      , unofficialNames = [ "Sidi Youssef Ben Ali" ]
      }
    , { name = "Taourirt"
      , code = ""
      , unofficialNames = [ "Taourirt" ]
      }
    , { name = "Taounate"
      , code = ""
      , unofficialNames = [ "Taounate" ]
      }
    , { name = "Taroudannt"
      , code = ""
      , unofficialNames = [ "Taroudannt" ]
      }
    , { name = "Tata"
      , code = ""
      , unofficialNames = [ "Tata" ]
      }
    , { name = "Taza"
      , code = ""
      , unofficialNames = [ "Taza" ]
      }
    , { name = "Tétouan*"
      , code = ""
      , unofficialNames = [ "Tétouan*" ]
      }
    , { name = "Tiznit"
      , code = ""
      , unofficialNames = [ "Tiznit" ]
      }
    , { name = "Tanger"
      , code = ""
      , unofficialNames = [ "Tanger" ]
      }
    , { name = "Tan-Tan"
      , code = ""
      , unofficialNames = [ "Tan-Tan" ]
      }
    , { name = "Laayoune-Boujdour-Sakia El Hamra"
      , code = ""
      , unofficialNames = [ "Laayoune-Boujdour-Sakia El Hamra" ]
      }
    , { name = "Zagora"
      , code = ""
      , unofficialNames = [ "Zagora" ]
      }
    ]


{-| -}
monacoSubdivisions : List Subdivision
monacoSubdivisions =
    []


{-| -}
moldovaRepublicOfSubdivisions : List Subdivision
moldovaRepublicOfSubdivisions =
    [ { name = "Balti"
      , code = ""
      , unofficialNames = [ "Balti" ]
      }
    , { name = "Cahul"
      , code = ""
      , unofficialNames = [ "Cahul" ]
      }
    , { name = "Chisinau City"
      , code = ""
      , unofficialNames = [ "Chisinau City" ]
      }
    , { name = "Chisinau"
      , code = ""
      , unofficialNames = [ "Chisinau" ]
      }
    , { name = "Edinet"
      , code = ""
      , unofficialNames = [ "Edinet" ]
      }
    , { name = "Gagauzia, Unitate Teritoriala Autonoma (UTAG)"
      , code = ""
      , unofficialNames = [ "Gagauzia, Unitate Teritoriala Autonoma (UTAG)" ]
      }
    , { name = "Lapusna"
      , code = ""
      , unofficialNames = [ "Lapusna" ]
      }
    , { name = "Orhei"
      , code = ""
      , unofficialNames = [ "Orhei" ]
      }
    , { name = "Stînga Nistrului, unitatea teritoriala din"
      , code = ""
      , unofficialNames = [ "Stînga Nistrului, unitatea teritoriala din" ]
      }
    , { name = "Soroca"
      , code = ""
      , unofficialNames = [ "Soroca" ]
      }
    , { name = "Taraclia"
      , code = ""
      , unofficialNames = [ "Taraclia" ]
      }
    , { name = "Tighina [Bender]"
      , code = ""
      , unofficialNames = [ "Tighina [Bender]" ]
      }
    , { name = "Ungheni"
      , code = ""
      , unofficialNames = [ "Ungheni" ]
      }
    ]


{-| -}
montenegroSubdivisions : List Subdivision
montenegroSubdivisions =
    [ { name = "Andrijevica"
      , code = ""
      , unofficialNames = [ "Andrijevica" ]
      }
    , { name = "Bar"
      , code = ""
      , unofficialNames = [ "Bar" ]
      }
    , { name = "Berane"
      , code = ""
      , unofficialNames = [ "Berane" ]
      }
    , { name = "Bijelo Polje"
      , code = ""
      , unofficialNames = [ "Bijelo Polje" ]
      }
    , { name = "Budva"
      , code = ""
      , unofficialNames = [ "Budva" ]
      }
    , { name = "Cetinje"
      , code = ""
      , unofficialNames = [ "Cetinje" ]
      }
    , { name = "Danilovgrad"
      , code = ""
      , unofficialNames = [ "Danilovgrad" ]
      }
    , { name = "Herceg-Novi"
      , code = ""
      , unofficialNames = [ "Herceg-Novi" ]
      }
    , { name = "Kolašin"
      , code = ""
      , unofficialNames = [ "Kolašin" ]
      }
    , { name = "Kotor"
      , code = ""
      , unofficialNames = [ "Kotor" ]
      }
    , { name = "Mojkovac"
      , code = ""
      , unofficialNames = [ "Mojkovac" ]
      }
    , { name = "Nikšic´"
      , code = ""
      , unofficialNames = [ "Nikšic´" ]
      }
    , { name = "Plav"
      , code = ""
      , unofficialNames = [ "Plav" ]
      }
    , { name = "Pljevlja"
      , code = ""
      , unofficialNames = [ "Pljevlja" ]
      }
    , { name = "Plužine"
      , code = ""
      , unofficialNames = [ "Plužine" ]
      }
    , { name = "Podgorica"
      , code = ""
      , unofficialNames = [ "Podgorica" ]
      }
    , { name = "Rožaje"
      , code = ""
      , unofficialNames = [ "Rožaje" ]
      }
    , { name = "Šavnik"
      , code = ""
      , unofficialNames = [ "Šavnik" ]
      }
    , { name = "Tivat"
      , code = ""
      , unofficialNames = [ "Tivat" ]
      }
    , { name = "Ulcinj"
      , code = ""
      , unofficialNames = [ "Ulcinj" ]
      }
    , { name = "Žabljak"
      , code = ""
      , unofficialNames = [ "Žabljak" ]
      }
    ]


{-| -}
saintMartinFrenchPartSubdivisions : List Subdivision
saintMartinFrenchPartSubdivisions =
    []


{-| -}
madagascarSubdivisions : List Subdivision
madagascarSubdivisions =
    [ { name = "Toamasina"
      , code = ""
      , unofficialNames = [ "Tamatave" ]
      }
    , { name = "Antsiranana"
      , code = ""
      , unofficialNames = [ "Antseranana", "Diégo Suarez" ]
      }
    , { name = "Fianarantsoa"
      , code = ""
      , unofficialNames = [ "Fianar" ]
      }
    , { name = "Mahajanga"
      , code = ""
      , unofficialNames = [ "Majunga" ]
      }
    , { name = "Antananarivo"
      , code = ""
      , unofficialNames = [ "Tananarive" ]
      }
    , { name = "Toliara"
      , code = ""
      , unofficialNames = [ "Toliara", "Tuléar" ]
      }
    ]


{-| -}
marshallIslandsSubdivisions : List Subdivision
marshallIslandsSubdivisions =
    [ { name = "Ailuk"
      , code = ""
      , unofficialNames = [ "Ailuk" ]
      }
    , { name = "Ailinglapalap"
      , code = ""
      , unofficialNames = [ "Ailinglaplap" ]
      }
    , { name = "Arno"
      , code = ""
      , unofficialNames = [ "Arno" ]
      }
    , { name = "Aur"
      , code = ""
      , unofficialNames = [ "Aur" ]
      }
    , { name = "Ebon"
      , code = ""
      , unofficialNames = [ "Epoon" ]
      }
    , { name = "Eniwetok"
      , code = ""
      , unofficialNames = [ "Eniwetok" ]
      }
    , { name = "Jabat"
      , code = ""
      , unofficialNames = [ "Jabat" ]
      }
    , { name = "Jaluit"
      , code = ""
      , unofficialNames = [ "Jālwōj" ]
      }
    , { name = "Kili"
      , code = ""
      , unofficialNames = [ "Kōle" ]
      }
    , { name = "Kwajalein"
      , code = ""
      , unofficialNames = [ "Kuwajleen" ]
      }
    , { name = "Lae"
      , code = ""
      , unofficialNames = [ "Lae" ]
      }
    , { name = "Lib"
      , code = ""
      , unofficialNames = [ "Ellep" ]
      }
    , { name = "Likiep"
      , code = ""
      , unofficialNames = [ "Likiep" ]
      }
    , { name = "Majuro"
      , code = ""
      , unofficialNames = [ "Mājro" ]
      }
    , { name = "Maloelap"
      , code = ""
      , unofficialNames = [ "Maloelap" ]
      }
    , { name = "Mejit"
      , code = ""
      , unofficialNames = [ "Mājeej" ]
      }
    , { name = "Mili"
      , code = ""
      , unofficialNames = [ "Mili" ]
      }
    , { name = "Namorik"
      , code = ""
      , unofficialNames = [ "Namorik" ]
      }
    , { name = "Namu"
      , code = ""
      , unofficialNames = [ "Namo" ]
      }
    , { name = "Rongelap"
      , code = ""
      , unofficialNames = [ "Rongelap" ]
      }
    , { name = "Ujae"
      , code = ""
      , unofficialNames = [ "Ujae" ]
      }
    , { name = "Ujelang"
      , code = ""
      , unofficialNames = [ "Ujelang" ]
      }
    , { name = "Utirik"
      , code = ""
      , unofficialNames = [ "Utirik", "Utrōk", "Utrōnk" ]
      }
    , { name = "Wotho"
      , code = ""
      , unofficialNames = [ "Wōtto" ]
      }
    , { name = "Wotje"
      , code = ""
      , unofficialNames = [ "Wotje" ]
      }
    ]


{-| -}
northMacedoniaSubdivisions : List Subdivision
northMacedoniaSubdivisions =
    [ { name = "Aerodrom *"
      , code = ""
      , unofficialNames = [ "Aerodrom *" ]
      }
    , { name = "Saraj *"
      , code = ""
      , unofficialNames = [ "Saraj *" ]
      }
    , { name = "Aracinovo"
      , code = ""
      , unofficialNames = [ "Aracinovo" ]
      }
    , { name = "Kavadarci"
      , code = ""
      , unofficialNames = [ "Kavadarci" ]
      }
    , { name = "Bogdanci"
      , code = ""
      , unofficialNames = [ "Bogdanci" ]
      }
    , { name = "Brvenica"
      , code = ""
      , unofficialNames = [ "Brvenica" ]
      }
    , { name = "Berovo"
      , code = ""
      , unofficialNames = [ "Berovo" ]
      }
    , { name = "Bosilovo"
      , code = ""
      , unofficialNames = [ "Bosilovo" ]
      }
    , { name = "Butel *"
      , code = ""
      , unofficialNames = [ "Butel *" ]
      }
    , { name = "Caška"
      , code = ""
      , unofficialNames = [ "Caška" ]
      }
    , { name = "Centar *"
      , code = ""
      , unofficialNames = [ "Centar *" ]
      }
    , { name = "Cešinovo-Obleševo"
      , code = ""
      , unofficialNames = [ "Cešinovo-Obleševo" ]
      }
    , { name = "Cair *"
      , code = ""
      , unofficialNames = [ "Cair *" ]
      }
    , { name = "Cucer Sandevo"
      , code = ""
      , unofficialNames = [ "Cucer Sandevo" ]
      }
    , { name = "Centar Župa"
      , code = ""
      , unofficialNames = [ "Centar Župa" ]
      }
    , { name = "Debarca"
      , code = ""
      , unofficialNames = [ "Debarca" ]
      }
    , { name = "Debar"
      , code = ""
      , unofficialNames = [ "Debar" ]
      }
    , { name = "Dolneni"
      , code = ""
      , unofficialNames = [ "Dolneni" ]
      }
    , { name = "Demir Kapija"
      , code = ""
      , unofficialNames = [ "Demir Kapija" ]
      }
    , { name = "Delcevo"
      , code = ""
      , unofficialNames = [ "Delcevo" ]
      }
    , { name = "Demir Hisar"
      , code = ""
      , unofficialNames = [ "Murgaševo" ]
      }
    , { name = "Drugovo"
      , code = ""
      , unofficialNames = [ "Drugovo" ]
      }
    , { name = "Tetovo"
      , code = ""
      , unofficialNames = [ "Tetovo" ]
      }
    , { name = "Gazi Baba *"
      , code = ""
      , unofficialNames = [ "Gazi Baba *" ]
      }
    , { name = "Gjorce Petrov *"
      , code = ""
      , unofficialNames = [ "Gjorce Petrov *" ]
      }
    , { name = "Gradsko"
      , code = ""
      , unofficialNames = [ "Gradsko" ]
      }
    , { name = "Gostivar"
      , code = ""
      , unofficialNames = [ "Gostivar" ]
      }
    , { name = "Gevgelija"
      , code = ""
      , unofficialNames = [ "Gevgelija" ]
      }
    , { name = "Ilinden"
      , code = ""
      , unofficialNames = [ "Ilinden" ]
      }
    , { name = "Jegunovce"
      , code = ""
      , unofficialNames = [ "Jegunovce" ]
      }
    , { name = "Karbinci"
      , code = ""
      , unofficialNames = [ "Karbinci" ]
      }
    , { name = "Krivogaštani"
      , code = ""
      , unofficialNames = [ "Krivogaštani" ]
      }
    , { name = "Kicevo"
      , code = ""
      , unofficialNames = [ "Kicevo" ]
      }
    , { name = "Konce"
      , code = ""
      , unofficialNames = [ "Konce" ]
      }
    , { name = "Kruševo"
      , code = ""
      , unofficialNames = [ "Kruševo" ]
      }
    , { name = "Karpoš *"
      , code = ""
      , unofficialNames = [ "Karpoš *" ]
      }
    , { name = "Kratovo"
      , code = ""
      , unofficialNames = [ "Kratovo" ]
      }
    , { name = "Kriva Palanka"
      , code = ""
      , unofficialNames = [ "Kriva Palanka" ]
      }
    , { name = "Lipkovo"
      , code = ""
      , unofficialNames = [ "Lipkovo" ]
      }
    , { name = "Lozovo"
      , code = ""
      , unofficialNames = [ "Lozovo" ]
      }
    , { name = "Makedonski Brod"
      , code = ""
      , unofficialNames = [ "Makedonski Brod" ]
      }
    , { name = "Mogila"
      , code = ""
      , unofficialNames = [ "Mogila" ]
      }
    , { name = "Makedonska Kamenica"
      , code = ""
      , unofficialNames = [ "Makedonska Kamenica" ]
      }
    , { name = "Mavrovo-i-Rostuša"
      , code = ""
      , unofficialNames = [ "Mavrovo-i-Rostuša" ]
      }
    , { name = "Staro Nagoricane"
      , code = ""
      , unofficialNames = [ "Staro Nagoricane" ]
      }
    , { name = "Negotino"
      , code = ""
      , unofficialNames = [ "Negotino" ]
      }
    , { name = "Vinica"
      , code = ""
      , unofficialNames = [ "Vinica" ]
      }
    , { name = "Novo Selo"
      , code = ""
      , unofficialNames = [ "Novo Selo" ]
      }
    , { name = "Novaci"
      , code = ""
      , unofficialNames = [ "Novaci" ]
      }
    , { name = "Kocani"
      , code = ""
      , unofficialNames = [ "Kocani" ]
      }
    , { name = "Ohrid"
      , code = ""
      , unofficialNames = [ "Ohrid" ]
      }
    , { name = "Oslomej"
      , code = ""
      , unofficialNames = [ "Oslomej" ]
      }
    , { name = "Petrovec"
      , code = ""
      , unofficialNames = [ "Petrovec" ]
      }
    , { name = "Pehcevo"
      , code = ""
      , unofficialNames = [ "Pehcevo" ]
      }
    , { name = "Plasnica"
      , code = ""
      , unofficialNames = [ "Plasnica" ]
      }
    , { name = "Prilep"
      , code = ""
      , unofficialNames = [ "Prilep" ]
      }
    , { name = "Probištip"
      , code = ""
      , unofficialNames = [ "Probištip" ]
      }
    , { name = "Resen"
      , code = ""
      , unofficialNames = [ "Resen" ]
      }
    , { name = "Rosoman"
      , code = ""
      , unofficialNames = [ "Rosoman" ]
      }
    , { name = "Rankovce"
      , code = ""
      , unofficialNames = [ "Rankovce" ]
      }
    , { name = "Strumica"
      , code = ""
      , unofficialNames = [ "Strumica" ]
      }
    , { name = "Radoviš"
      , code = ""
      , unofficialNames = [ "Radoviš" ]
      }
    , { name = "Dojran"
      , code = ""
      , unofficialNames = [ "Dojran" ]
      }
    , { name = "Sveti Nikole"
      , code = ""
      , unofficialNames = [ "Sveti Nikole" ]
      }
    , { name = "Šuto Orizari *"
      , code = ""
      , unofficialNames = [ "Šuto Orizari *" ]
      }
    , { name = "Sopište"
      , code = ""
      , unofficialNames = [ "Sopište" ]
      }
    , { name = "Štip"
      , code = ""
      , unofficialNames = [ "Štip" ]
      }
    , { name = "Studenicani"
      , code = ""
      , unofficialNames = [ "Studenicani" ]
      }
    , { name = "Bitola"
      , code = ""
      , unofficialNames = [ "Bitola" ]
      }
    , { name = "Tearce"
      , code = ""
      , unofficialNames = [ "Tearce" ]
      }
    , { name = "Struga"
      , code = ""
      , unofficialNames = [ "Struga" ]
      }
    , { name = "Kumanovo"
      , code = ""
      , unofficialNames = [ "Kumanovo" ]
      }
    , { name = "Valandovo"
      , code = ""
      , unofficialNames = [ "Valandovo" ]
      }
    , { name = "Vraneštica"
      , code = ""
      , unofficialNames = [ "Vraneštica" ]
      }
    , { name = "Kisela Voda *"
      , code = ""
      , unofficialNames = [ "Kisela Voda *" ]
      }
    , { name = "Veles"
      , code = ""
      , unofficialNames = [ "Veles" ]
      }
    , { name = "Vrapcište"
      , code = ""
      , unofficialNames = [ "Vrapcište" ]
      }
    , { name = "Bogovinje"
      , code = ""
      , unofficialNames = [ "Bogovinje" ]
      }
    , { name = "Vasilevo"
      , code = ""
      , unofficialNames = [ "Vasilevo" ]
      }
    , { name = "Vevcani"
      , code = ""
      , unofficialNames = [ "Vevcani" ]
      }
    , { name = "Skopje"
      , code = ""
      , unofficialNames = [ "Skopje" ]
      }
    , { name = "Zajas"
      , code = ""
      , unofficialNames = [ "Zajas" ]
      }
    , { name = "Želino"
      , code = ""
      , unofficialNames = [ "Želino" ]
      }
    , { name = "Zelenikovo"
      , code = ""
      , unofficialNames = [ "Zelenikovo" ]
      }
    , { name = "Zrnovci"
      , code = ""
      , unofficialNames = [ "Zrnovci" ]
      }
    ]


{-| -}
maliSubdivisions : List Subdivision
maliSubdivisions =
    [ { name = "Kayes"
      , code = ""
      , unofficialNames = [ "Kayes" ]
      }
    , { name = "Koulikoro"
      , code = ""
      , unofficialNames = [ "Koulikoro" ]
      }
    , { name = "Sikasso"
      , code = ""
      , unofficialNames = [ "Sikasso" ]
      }
    , { name = "Ségou"
      , code = ""
      , unofficialNames = [ "Ségou" ]
      }
    , { name = "Mopti"
      , code = ""
      , unofficialNames = [ "Mopti" ]
      }
    , { name = "Tombouctou"
      , code = ""
      , unofficialNames = [ "Tombouctou" ]
      }
    , { name = "Gao"
      , code = ""
      , unofficialNames = [ "Gao" ]
      }
    , { name = "Kidal"
      , code = ""
      , unofficialNames = [ "Kidal" ]
      }
    , { name = "Bamako"
      , code = ""
      , unofficialNames = [ "Bamako" ]
      }
    ]


{-| -}
myanmarSubdivisions : List Subdivision
myanmarSubdivisions =
    [ { name = "Sagaing"
      , code = ""
      , unofficialNames = [ "Sagaing" ]
      }
    , { name = "Bago"
      , code = ""
      , unofficialNames = [ "Pegu" ]
      }
    , { name = "Magway"
      , code = ""
      , unofficialNames = [ "Magwe" ]
      }
    , { name = "Mandalay"
      , code = ""
      , unofficialNames = [ "Mandalay" ]
      }
    , { name = "Tanintharyi"
      , code = ""
      , unofficialNames = [ "Tenasserim" ]
      }
    , { name = "Yangon"
      , code = ""
      , unofficialNames = [ "Yangon", "Rangun", "Rangoun", "Rangún" ]
      }
    , { name = "Ayeyarwady"
      , code = ""
      , unofficialNames = [ "Irrawaddy" ]
      }
    , { name = "Kachin"
      , code = ""
      , unofficialNames = [ "Kachin" ]
      }
    , { name = "Kayah"
      , code = ""
      , unofficialNames = [ "Kayah" ]
      }
    , { name = "Kayin"
      , code = ""
      , unofficialNames = [ "Karen" ]
      }
    , { name = "Chin"
      , code = ""
      , unofficialNames = [ "Chin" ]
      }
    , { name = "Mon"
      , code = ""
      , unofficialNames = [ "Mon" ]
      }
    , { name = "Rakhine"
      , code = ""
      , unofficialNames = [ "Arakan" ]
      }
    , { name = "Shan"
      , code = ""
      , unofficialNames = [ "Shan" ]
      }
    ]


{-| -}
mongoliaSubdivisions : List Subdivision
mongoliaSubdivisions =
    [ { name = "Orhon"
      , code = ""
      , unofficialNames = [ "Orhon" ]
      }
    , { name = "Darhan uul"
      , code = ""
      , unofficialNames = [ "Darhan uul" ]
      }
    , { name = "Hentiy"
      , code = ""
      , unofficialNames = [ "Hentii", "Khentii" ]
      }
    , { name = "Hövsgöl"
      , code = ""
      , unofficialNames = [ "Hovsgol", "Khuvsgul" ]
      }
    , { name = "Hovd"
      , code = ""
      , unofficialNames = [ "Khovd" ]
      }
    , { name = "Uvs"
      , code = ""
      , unofficialNames = [ "Uvs" ]
      }
    , { name = "Töv"
      , code = ""
      , unofficialNames = [ "Tov" ]
      }
    , { name = "Selenge"
      , code = ""
      , unofficialNames = [ "Selenge" ]
      }
    , { name = "Sühbaatar"
      , code = ""
      , unofficialNames = [ "Sukhbaatar" ]
      }
    , { name = "Ömnögovi"
      , code = ""
      , unofficialNames = [ "Omnogobi" ]
      }
    , { name = "Övörhangay"
      , code = ""
      , unofficialNames = [ "Ovorhangai", "Uvurkhangai" ]
      }
    , { name = "Dzavhan"
      , code = ""
      , unofficialNames = [ "Zavkhan" ]
      }
    , { name = "Dundgovi"
      , code = ""
      , unofficialNames = [ "Dundgobi" ]
      }
    , { name = "Dornod"
      , code = ""
      , unofficialNames = [ "Dornod" ]
      }
    , { name = "Dornogovi"
      , code = ""
      , unofficialNames = [ "Dornogobi" ]
      }
    , { name = "Govi-Sümber"
      , code = ""
      , unofficialNames = [ "Gobisumber" ]
      }
    , { name = "Govi-Altay"
      , code = ""
      , unofficialNames = [ "Gobi-Altai", "Gobi-Altay" ]
      }
    , { name = "Bulgan"
      , code = ""
      , unofficialNames = [ "Bulgan" ]
      }
    , { name = "Bayanhongor"
      , code = ""
      , unofficialNames = [ "Bayanhongor", "Bayankhongor" ]
      }
    , { name = "Bayan-Ölgiy"
      , code = ""
      , unofficialNames = [ "Bayan-Olgii", "Bayan-Ulgii" ]
      }
    , { name = "Arhangay"
      , code = ""
      , unofficialNames = [ "Arhangai", "Arhangay", "Arkhangai" ]
      }
    , { name = "Ulaanbaatar"
      , code = ""
      , unofficialNames = [ "Ulaanbaatar" ]
      }
    ]


{-| -}
macaoSubdivisions : List Subdivision
macaoSubdivisions =
    []


{-| -}
northernMarianaIslandsSubdivisions : List Subdivision
northernMarianaIslandsSubdivisions =
    [ { name = "Northern Islands"
      , code = ""
      , unofficialNames = [ "Northern Islands" ]
      }
    , { name = "Rota"
      , code = ""
      , unofficialNames = [ "Rota" ]
      }
    , { name = "Saipan"
      , code = ""
      , unofficialNames = [ "Saipan" ]
      }
    , { name = "Tinian"
      , code = ""
      , unofficialNames = [ "Tinian" ]
      }
    ]


{-| -}
martiniqueSubdivisions : List Subdivision
martiniqueSubdivisions =
    []


{-| -}
mauritaniaSubdivisions : List Subdivision
mauritaniaSubdivisions =
    [ { name = "Hodh ech Chargui"
      , code = ""
      , unofficialNames = [ "Hud-ash-Sharqi", "Huđ-aš-Šarqi", "Hodh ech Chargui" ]
      }
    , { name = "Hodh el Gharbi"
      , code = ""
      , unofficialNames = [ "Hud-al-Garbi", "Huđ-al-Ġarbi", "Hodh el Gharbi" ]
      }
    , { name = "Assaba"
      , code = ""
      , unofficialNames = [ "aş-Şabah", "Açaba" ]
      }
    , { name = "Gorgol"
      , code = ""
      , unofficialNames = [ "Gorgol" ]
      }
    , { name = "Brakna"
      , code = ""
      , unofficialNames = [ "Brakna" ]
      }
    , { name = "Trarza"
      , code = ""
      , unofficialNames = [ "Trarza" ]
      }
    , { name = "Adrar"
      , code = ""
      , unofficialNames = [ "Adrar" ]
      }
    , { name = "Dakhlet Nouâdhibou"
      , code = ""
      , unofficialNames = [ "Dakhlat Nawadibu", "Đaẖlat Nawadību", "Dakhlet Nouadhibou" ]
      }
    , { name = "Tagant"
      , code = ""
      , unofficialNames = [ "Tagant" ]
      }
    , { name = "Guidimaka"
      , code = ""
      , unofficialNames = [ "Guidimaka" ]
      }
    , { name = "Tiris Zemmour"
      , code = ""
      , unofficialNames = [ "Tiris Zammur", "Tiris Zammūr", "Tiris Zemmour" ]
      }
    , { name = "Inchiri"
      , code = ""
      , unofficialNames = [ "Inširi", "Inchiri" ]
      }
    , { name = "Nouakchott"
      , code = ""
      , unofficialNames = [ "Anwāksūţ", "Nawakshut", "Nawākšūţ", "Nouakchott" ]
      }
    ]


{-| -}
montserratSubdivisions : List Subdivision
montserratSubdivisions =
    [ { name = "Saint Anthony"
      , code = ""
      , unofficialNames = [ "Saint Anthony" ]
      }
    , { name = "Saint Georges"
      , code = ""
      , unofficialNames = [ "Saint Georges" ]
      }
    , { name = "Saint Peter"
      , code = ""
      , unofficialNames = [ "Saint Peter" ]
      }
    ]


{-| -}
maltaSubdivisions : List Subdivision
maltaSubdivisions =
    [ { name = "Attard"
      , code = ""
      , unofficialNames = [ "Attard" ]
      }
    , { name = "Balzan"
      , code = ""
      , unofficialNames = [ "Balzan" ]
      }
    , { name = "Birgu"
      , code = ""
      , unofficialNames = [ "Birgu" ]
      }
    , { name = "Birkirkara"
      , code = ""
      , unofficialNames = [ "Birkirkara" ]
      }
    , { name = "Birżebbuġa"
      , code = ""
      , unofficialNames = [ "Birżebbuġa" ]
      }
    , { name = "Bormla"
      , code = ""
      , unofficialNames = [ "Bormla" ]
      }
    , { name = "Dingli"
      , code = ""
      , unofficialNames = [ "Dingli" ]
      }
    , { name = "Fgura"
      , code = ""
      , unofficialNames = [ "Fgura" ]
      }
    , { name = "Floriana"
      , code = ""
      , unofficialNames = [ "Floriana" ]
      }
    , { name = "Fontana"
      , code = ""
      , unofficialNames = [ "Fontana" ]
      }
    , { name = "Gudja"
      , code = ""
      , unofficialNames = [ "Gudja" ]
      }
    , { name = "Gżira"
      , code = ""
      , unofficialNames = [ "Gżira" ]
      }
    , { name = "Għajnsielem"
      , code = ""
      , unofficialNames = [ "Għajnsielem" ]
      }
    , { name = "Għarb"
      , code = ""
      , unofficialNames = [ "Għarb" ]
      }
    , { name = "Għargħur"
      , code = ""
      , unofficialNames = [ "Għargħur" ]
      }
    , { name = "Għasri"
      , code = ""
      , unofficialNames = [ "Għasri" ]
      }
    , { name = "Għaxaq"
      , code = ""
      , unofficialNames = [ "Għaxaq" ]
      }
    , { name = "Ħamrun"
      , code = ""
      , unofficialNames = [ "Ħamrun" ]
      }
    , { name = "Iklin"
      , code = ""
      , unofficialNames = [ "Iklin" ]
      }
    , { name = "Isla"
      , code = ""
      , unofficialNames = [ "Isla" ]
      }
    , { name = "Kalkara"
      , code = ""
      , unofficialNames = [ "Kalkara" ]
      }
    , { name = "Kerċem"
      , code = ""
      , unofficialNames = [ "Kerċem" ]
      }
    , { name = "Kirkop"
      , code = ""
      , unofficialNames = [ "Kirkop" ]
      }
    , { name = "Lija"
      , code = ""
      , unofficialNames = [ "Lija" ]
      }
    , { name = "Luqa"
      , code = ""
      , unofficialNames = [ "Luqa" ]
      }
    , { name = "Marsa"
      , code = ""
      , unofficialNames = [ "Marsa" ]
      }
    , { name = "Marsaskala"
      , code = ""
      , unofficialNames = [ "Marsaskala" ]
      }
    , { name = "Marsaxlokk"
      , code = ""
      , unofficialNames = [ "Marsaxlokk" ]
      }
    , { name = "Mdina"
      , code = ""
      , unofficialNames = [ "Mdina" ]
      }
    , { name = "Mellieħa"
      , code = ""
      , unofficialNames = [ "Mellieħa" ]
      }
    , { name = "Mġarr"
      , code = ""
      , unofficialNames = [ "Mġarr" ]
      }
    , { name = "Mosta"
      , code = ""
      , unofficialNames = [ "Mosta" ]
      }
    , { name = "Mqabba"
      , code = ""
      , unofficialNames = [ "Mqabba" ]
      }
    , { name = "Msida"
      , code = ""
      , unofficialNames = [ "Msida" ]
      }
    , { name = "Mtarfa"
      , code = ""
      , unofficialNames = [ "Mtarfa" ]
      }
    , { name = "Munxar"
      , code = ""
      , unofficialNames = [ "Munxar" ]
      }
    , { name = "Nadur"
      , code = ""
      , unofficialNames = [ "Nadur" ]
      }
    , { name = "Naxxar"
      , code = ""
      , unofficialNames = [ "Naxxar" ]
      }
    , { name = "Paola"
      , code = ""
      , unofficialNames = [ "Paola" ]
      }
    , { name = "Pembroke"
      , code = ""
      , unofficialNames = [ "Pembroke" ]
      }
    , { name = "Pietà"
      , code = ""
      , unofficialNames = [ "Pietà" ]
      }
    , { name = "Qala"
      , code = ""
      , unofficialNames = [ "Qala" ]
      }
    , { name = "Qormi"
      , code = ""
      , unofficialNames = [ "Qormi" ]
      }
    , { name = "Qrendi"
      , code = ""
      , unofficialNames = [ "Qrendi" ]
      }
    , { name = "Rabat Gozo"
      , code = ""
      , unofficialNames = [ "Rabat Gozo", "Rabat Għawdex" ]
      }
    , { name = "Rabat Malta"
      , code = ""
      , unofficialNames = [ "Rabat Malta" ]
      }
    , { name = "Safi"
      , code = ""
      , unofficialNames = [ "Safi" ]
      }
    , { name = "Saint Julian's"
      , code = ""
      , unofficialNames = [ "Saint Julian's", "San Ġiljan" ]
      }
    , { name = "Saint John"
      , code = ""
      , unofficialNames = [ "Saint John", "San Ġwann" ]
      }
    , { name = "Saint Lawrence"
      , code = ""
      , unofficialNames = [ "Saint Lawrence", "San Lawrenz" ]
      }
    , { name = "Saint Paul's Bay"
      , code = ""
      , unofficialNames = [ "Saint Paul's Bay", "San Pawl il-Baħar" ]
      }
    , { name = "Sannat"
      , code = ""
      , unofficialNames = [ "Sannat" ]
      }
    , { name = "Saint Lucia's"
      , code = ""
      , unofficialNames = [ "Saint Lucia's", "Santa Luċija" ]
      }
    , { name = "Santa Venera"
      , code = ""
      , unofficialNames = [ "Santa Venera" ]
      }
    , { name = "Siġġiewi"
      , code = ""
      , unofficialNames = [ "Siġġiewi" ]
      }
    , { name = "Sliema"
      , code = ""
      , unofficialNames = [ "Sliema" ]
      }
    , { name = "Swieqi"
      , code = ""
      , unofficialNames = [ "Swieqi" ]
      }
    , { name = "Ta' Xbiex"
      , code = ""
      , unofficialNames = [ "Ta' Xbiex" ]
      }
    , { name = "Tarxien"
      , code = ""
      , unofficialNames = [ "Tarxien" ]
      }
    , { name = "Valletta"
      , code = ""
      , unofficialNames = [ "Valletta" ]
      }
    , { name = "Xagħra"
      , code = ""
      , unofficialNames = [ "Xagħra" ]
      }
    , { name = "Xewkija"
      , code = ""
      , unofficialNames = [ "Xewkija" ]
      }
    , { name = "Xgħajra"
      , code = ""
      , unofficialNames = [ "Xgħajra" ]
      }
    , { name = "Żabbar"
      , code = ""
      , unofficialNames = [ "Żabbar" ]
      }
    , { name = "Żebbuġ Gozo"
      , code = ""
      , unofficialNames = [ "Żebbuġ Gozo", "Żebbuġ Għawdex" ]
      }
    , { name = "Żebbuġ Malta"
      , code = ""
      , unofficialNames = [ "Żebbuġ Malta" ]
      }
    , { name = "Żejtun"
      , code = ""
      , unofficialNames = [ "Żejtun" ]
      }
    , { name = "Żurrieq"
      , code = ""
      , unofficialNames = [ "Żurrieq" ]
      }
    ]


{-| -}
mauritiusSubdivisions : List Subdivision
mauritiusSubdivisions =
    [ { name = "Agalega Islands"
      , code = ""
      , unofficialNames = [ "Agalega Islands" ]
      }
    , { name = "Black River"
      , code = ""
      , unofficialNames = [ "Black River" ]
      }
    , { name = "Beau Bassin-Rose Hill"
      , code = ""
      , unofficialNames = [ "Beau Bassin-Rose Hill" ]
      }
    , { name = "Cargados Carajos Shoals [Saint Brandon Islands]"
      , code = ""
      , unofficialNames = [ "Cargados Carajos Shoals [Saint Brandon Islands]" ]
      }
    , { name = "Curepipe"
      , code = ""
      , unofficialNames = [ "Curepipe" ]
      }
    , { name = "Flacq"
      , code = ""
      , unofficialNames = [ "Flacq" ]
      }
    , { name = "Grand Port"
      , code = ""
      , unofficialNames = [ "Grand Port" ]
      }
    , { name = "Moka"
      , code = ""
      , unofficialNames = [ "Moka" ]
      }
    , { name = "Pamplemousses"
      , code = ""
      , unofficialNames = [ "Pamplemousses" ]
      }
    , { name = "Port Louis City"
      , code = ""
      , unofficialNames = [ "Port Louis City" ]
      }
    , { name = "Port Louis District"
      , code = ""
      , unofficialNames = [ "Port Louis District" ]
      }
    , { name = "Plaines Wilhems"
      , code = ""
      , unofficialNames = [ "Plaines Wilhems" ]
      }
    , { name = "Quatre Bornes"
      , code = ""
      , unofficialNames = [ "Quatre Bornes" ]
      }
    , { name = "Rodrigues Island"
      , code = ""
      , unofficialNames = [ "Rodrigues Island" ]
      }
    , { name = "Rivière du Rempart"
      , code = ""
      , unofficialNames = [ "Rivière du Rempart" ]
      }
    , { name = "Savanne"
      , code = ""
      , unofficialNames = [ "Savanne" ]
      }
    , { name = "Vacoas-Phoenix"
      , code = ""
      , unofficialNames = [ "Vacoas-Phoenix" ]
      }
    ]


{-| -}
maldivesSubdivisions : List Subdivision
maldivesSubdivisions =
    [ { name = "Seenu"
      , code = ""
      , unofficialNames = [ "Addu", "Addu Atholhu", "Addu Atoll", "Seenu", "Sîn" ]
      }
    , { name = "Alif"
      , code = ""
      , unofficialNames = [ "Alif Atoll Dhekunu", "Ari Atholhu Uthuruburi", "North Ari Atoll" ]
      }
    , { name = "Lhaviyani"
      , code = ""
      , unofficialNames = [ "Faadhippolhu", "Fadiffolu", "Laviyani" ]
      }
    , { name = "Vaavu"
      , code = ""
      , unofficialNames = [ "Felidhe Atholhu", "Felidhu Atoll", "Felidu", "Vaafu", "Vaavu", "Vâv" ]
      }
    , { name = "Laamu"
      , code = ""
      , unofficialNames = [ "Haddumati", "Hadhdhunmathi", "Hadhunmathi", "Laamu", "Lâm" ]
      }
    , { name = "Haa Alif"
      , code = ""
      , unofficialNames = [ "Haa Alifu", "Hâ Alif", "North Thiladhunmathi", "Thiladhunmathi Uthuruburi", "Tiladummati-North" ]
      }
    , { name = "Thaa"
      , code = ""
      , unofficialNames = [ "Kolhumadhulu", "Kolhumadulu", "Kolumadulu", "Thâ" ]
      }
    , { name = "Meemu"
      , code = ""
      , unofficialNames = [ "Meemu", "Mimu", "Mulakatholhu", "Mulaku", "Mulaku Atholhu", "Mîm" ]
      }
    , { name = "Raa"
      , code = ""
      , unofficialNames = [ "Maalhosmadhulu Uthuruburi", "Malosmadulu-North", "North Maalhosmadhulu", "Râ" ]
      }
    , { name = "Faafu"
      , code = ""
      , unofficialNames = [ "Faafu", "Faafu Atoll", "Fâf", "Nilandhe Atholhu Uthuruburi", "Nilandu-North", "North Nilandhe", "North Nilandhe Atoll" ]
      }
    , { name = "Dhaalu"
      , code = ""
      , unofficialNames = [ "Dhaalu", "Dhâl", "Nilandhe Atholhu Dhekunuburi", "Nilandu-South", "South Nilandhe Atoll" ]
      }
    , { name = "Baa"
      , code = ""
      , unofficialNames = [ "Bâ", "Maalhosmadhulu Dhekunuburi", "Malosmadulu-South", "South Maalhosmadhulu" ]
      }
    , { name = "Haa Dhaalu"
      , code = ""
      , unofficialNames = [ "Haa Dhaalu", "Hâ Dhâl", "South Thiladhunmathi", "Thiladhunmathi Dhekunuburi", "Tiladummati-South" ]
      }
    , { name = "Shaviyani"
      , code = ""
      , unofficialNames = [ "Miladhunmadhulu Uthuruburi", "Miladummadulu-North", "North Miladhunmadhulu" ]
      }
    , { name = "Noonu"
      , code = ""
      , unofficialNames = [ "Miladhunmadhulu Dhekunuburi", "Miladummadulu-South", "Mulakatholhu", "Noonu", "Nûn", "South Miladhunmadhulu" ]
      }
    , { name = "Kaafu"
      , code = ""
      , unofficialNames = [ "Kaafu", "Kâf", "Maleʿ Atholhu", "Malé Atoll" ]
      }
    , { name = "Gaaf Alif"
      , code = ""
      , unofficialNames = [ "Gaafu Alifu", "Gâf Alif", "Huvadhu Atholhu Uthuruburi", "North Huvadhu Atoll", "Suvadiva-Huvadu-North" ]
      }
    , { name = "Gaafu Dhaalu"
      , code = ""
      , unofficialNames = [ "Gaafu Dhaalu", "Gâf Dhâl", "Huvadhu Atholhu Dhekunuburi", "South Huvadhu", "Suvadiva-Huvadu-South" ]
      }
    , { name = "Gnaviyani"
      , code = ""
      , unofficialNames = [ "Foah Mulah", "Foahmulah", "Foammulah", "Foamulah", "Fua Mulak", "Fuamulaku", "Fuvahmulah", "Gnyaviani" ]
      }
    , { name = "Male"
      , code = ""
      , unofficialNames = [ "Maale", "Mâle" ]
      }
    , { name = "Alif Dhaal"
      , code = ""
      , unofficialNames = [ "Alif Atoll Uthuru", "Alif Dhâl", "Ari Atholhu Dhekunuburi", "South Ari Atoll" ]
      }
    ]


{-| -}
malawiSubdivisions : List Subdivision
malawiSubdivisions =
    [ { name = "Balaka"
      , code = ""
      , unofficialNames = [ "Balaka" ]
      }
    , { name = "Blantyre"
      , code = ""
      , unofficialNames = [ "Blantyre" ]
      }
    , { name = "Chikwawa"
      , code = ""
      , unofficialNames = [ "Chikwawa" ]
      }
    , { name = "Chiradzulu"
      , code = ""
      , unofficialNames = [ "Chiradzulu" ]
      }
    , { name = "Chitipa"
      , code = ""
      , unofficialNames = [ "Chitipa" ]
      }
    , { name = "Dedza"
      , code = ""
      , unofficialNames = [ "Dedza" ]
      }
    , { name = "Dowa"
      , code = ""
      , unofficialNames = [ "Dowa" ]
      }
    , { name = "Karonga"
      , code = ""
      , unofficialNames = [ "Karonga" ]
      }
    , { name = "Kasungu"
      , code = ""
      , unofficialNames = [ "Kasungu" ]
      }
    , { name = "Lilongwe"
      , code = ""
      , unofficialNames = [ "Lilongwe" ]
      }
    , { name = "Likoma Island"
      , code = ""
      , unofficialNames = [ "Likoma Island" ]
      }
    , { name = "Mchinji"
      , code = ""
      , unofficialNames = [ "Mchinji" ]
      }
    , { name = "Mangochi"
      , code = ""
      , unofficialNames = [ "Mangochi" ]
      }
    , { name = "Machinga"
      , code = ""
      , unofficialNames = [ "Machinga" ]
      }
    , { name = "Mulanje"
      , code = ""
      , unofficialNames = [ "Mulanje" ]
      }
    , { name = "Mwanza"
      , code = ""
      , unofficialNames = [ "Mwanza" ]
      }
    , { name = "Mzimba"
      , code = ""
      , unofficialNames = [ "Mzimba" ]
      }
    , { name = "Nkhata Bay"
      , code = ""
      , unofficialNames = [ "Nkhata Bay" ]
      }
    , { name = "Ntchisi"
      , code = ""
      , unofficialNames = [ "Ntchisi" ]
      }
    , { name = "Nkhotakota"
      , code = ""
      , unofficialNames = [ "Nkhotakota" ]
      }
    , { name = "Nsanje"
      , code = ""
      , unofficialNames = [ "Nsanje" ]
      }
    , { name = "Ntcheu"
      , code = ""
      , unofficialNames = [ "Ntcheu" ]
      }
    , { name = "Phalombe"
      , code = ""
      , unofficialNames = [ "Phalombe" ]
      }
    , { name = "Rumphi"
      , code = ""
      , unofficialNames = [ "Rumphi" ]
      }
    , { name = "Salima"
      , code = ""
      , unofficialNames = [ "Salima" ]
      }
    , { name = "Thyolo"
      , code = ""
      , unofficialNames = [ "Thyolo" ]
      }
    , { name = "Zomba"
      , code = ""
      , unofficialNames = [ "Zomba" ]
      }
    ]


{-| -}
mexicoSubdivisions : List Subdivision
mexicoSubdivisions =
    [ { name = "Aguascalientes"
      , code = ""
      , unofficialNames = [ "Aguascalientes" ]
      }
    , { name = "Baja California"
      , code = ""
      , unofficialNames = [ "Baja California" ]
      }
    , { name = "Baja California Sur"
      , code = ""
      , unofficialNames = [ "Baja California Sur" ]
      }
    , { name = "Campeche"
      , code = ""
      , unofficialNames = [ "Campeche" ]
      }
    , { name = "Chihuahua"
      , code = ""
      , unofficialNames = [ "Chihuahua" ]
      }
    , { name = "Chiapas"
      , code = ""
      , unofficialNames = [ "Chiapas" ]
      }
    , { name = "Ciudad de México"
      , code = ""
      , unofficialNames = [ "Ciudad de México" ]
      }
    , { name = "Coahuila"
      , code = ""
      , unofficialNames = [ "Coahuila" ]
      }
    , { name = "Colima"
      , code = ""
      , unofficialNames = [ "Colima" ]
      }
    , { name = "Durango"
      , code = ""
      , unofficialNames = [ "Durango" ]
      }
    , { name = "Guerrero"
      , code = ""
      , unofficialNames = [ "Guerrero" ]
      }
    , { name = "Guanajuato"
      , code = ""
      , unofficialNames = [ "Guanajuato" ]
      }
    , { name = "Hidalgo"
      , code = ""
      , unofficialNames = [ "Hidalgo" ]
      }
    , { name = "Jalisco"
      , code = ""
      , unofficialNames = [ "Jalisco" ]
      }
    , { name = "México"
      , code = ""
      , unofficialNames = [ "México" ]
      }
    , { name = "Michoacán"
      , code = ""
      , unofficialNames = [ "Michoacán" ]
      }
    , { name = "Morelos"
      , code = ""
      , unofficialNames = [ "Morelos" ]
      }
    , { name = "Nayarit"
      , code = ""
      , unofficialNames = [ "Nayarit" ]
      }
    , { name = "Nuevo León"
      , code = ""
      , unofficialNames = [ "Nuevo León" ]
      }
    , { name = "Oaxaca"
      , code = ""
      , unofficialNames = [ "Oaxaca" ]
      }
    , { name = "Puebla"
      , code = ""
      , unofficialNames = [ "Puebla" ]
      }
    , { name = "Querétaro"
      , code = ""
      , unofficialNames = [ "Querétaro" ]
      }
    , { name = "Quintana Roo"
      , code = ""
      , unofficialNames = [ "Quintana Roo" ]
      }
    , { name = "Sinaloa"
      , code = ""
      , unofficialNames = [ "Sinaloa" ]
      }
    , { name = "San Luis Potosí"
      , code = ""
      , unofficialNames = [ "San Luis Potosí" ]
      }
    , { name = "Sonora"
      , code = ""
      , unofficialNames = [ "Sonora" ]
      }
    , { name = "Tabasco"
      , code = ""
      , unofficialNames = [ "Tabasco" ]
      }
    , { name = "Tamaulipas"
      , code = ""
      , unofficialNames = [ "Tamaulipas" ]
      }
    , { name = "Tlaxcala"
      , code = ""
      , unofficialNames = [ "Tlaxcala" ]
      }
    , { name = "Veracruz"
      , code = ""
      , unofficialNames = [ "Veracruz" ]
      }
    , { name = "Yucatán"
      , code = ""
      , unofficialNames = [ "Yucatán" ]
      }
    , { name = "Zacatecas"
      , code = ""
      , unofficialNames = [ "Zacatecas" ]
      }
    ]


{-| -}
malaysiaSubdivisions : List Subdivision
malaysiaSubdivisions =
    [ { name = "Johor"
      , code = ""
      , unofficialNames = [ "Johor" ]
      }
    , { name = "Kedah"
      , code = ""
      , unofficialNames = [ "Kedah" ]
      }
    , { name = "Kelantan"
      , code = ""
      , unofficialNames = [ "Kelantan" ]
      }
    , { name = "Melaka"
      , code = ""
      , unofficialNames = [ "Melaka" ]
      }
    , { name = "Negeri Sembilan"
      , code = ""
      , unofficialNames = [ "Negri Sembilan" ]
      }
    , { name = "Pahang"
      , code = ""
      , unofficialNames = [ "Pahang" ]
      }
    , { name = "Pulau Pinang"
      , code = ""
      , unofficialNames = [ "Pulau Pinang" ]
      }
    , { name = "Perak"
      , code = ""
      , unofficialNames = [ "Perak" ]
      }
    , { name = "Perlis"
      , code = ""
      , unofficialNames = [ "Perlis" ]
      }
    , { name = "Selangor"
      , code = ""
      , unofficialNames = [ "Selangor" ]
      }
    , { name = "Terengganu"
      , code = ""
      , unofficialNames = [ "Terengganu" ]
      }
    , { name = "Sabah"
      , code = ""
      , unofficialNames = [ "Sabah" ]
      }
    , { name = "Sarawak"
      , code = ""
      , unofficialNames = [ "Sarawak" ]
      }
    , { name = "Wilayah Persekutuan Kuala Lumpur"
      , code = ""
      , unofficialNames = [ "Wilayah Persekutuan Kuala Lumpur" ]
      }
    , { name = "Wilayah Persekutuan Labuan"
      , code = ""
      , unofficialNames = [ "Wilayah Persekutuan Labuan" ]
      }
    , { name = "Wilayah Persekutuan Putrajaya"
      , code = ""
      , unofficialNames = [ "Wilayah Persekutuan Putrajaya" ]
      }
    ]


{-| -}
mozambiqueSubdivisions : List Subdivision
mozambiqueSubdivisions =
    [ { name = "Niassa"
      , code = ""
      , unofficialNames = [ "Niassa" ]
      }
    , { name = "Manica"
      , code = ""
      , unofficialNames = [ "Manica" ]
      }
    , { name = "Gaza"
      , code = ""
      , unofficialNames = [ "Gaza" ]
      }
    , { name = "Inhambane"
      , code = ""
      , unofficialNames = [ "Inhambane" ]
      }
    , { name = "Maputo"
      , code = ""
      , unofficialNames = [ "Maputo" ]
      }
    , { name = "Maputo City"
      , code = ""
      , unofficialNames = [ "Maputo City" ]
      }
    , { name = "Nampula"
      , code = ""
      , unofficialNames = [ "Nampula" ]
      }
    , { name = "Cabo Delgado"
      , code = ""
      , unofficialNames = [ "Cabo Delgado" ]
      }
    , { name = "Zambézia"
      , code = ""
      , unofficialNames = [ "Zambézia" ]
      }
    , { name = "Sofala"
      , code = ""
      , unofficialNames = [ "Sofala" ]
      }
    , { name = "Tete"
      , code = ""
      , unofficialNames = [ "Tete" ]
      }
    ]


{-| -}
namibiaSubdivisions : List Subdivision
namibiaSubdivisions =
    [ { name = "Zambezi"
      , code = ""
      , unofficialNames = [ "Zambezi" ]
      }
    , { name = "Erongo"
      , code = ""
      , unofficialNames = [ "Erongo" ]
      }
    , { name = "Hardap"
      , code = ""
      , unofficialNames = [ "Hardap" ]
      }
    , { name = "Karas"
      , code = ""
      , unofficialNames = [ "Karas" ]
      }
    , { name = "Kavango East"
      , code = ""
      , unofficialNames = [ "Kavango East" ]
      }
    , { name = "Kavango West"
      , code = ""
      , unofficialNames = [ "Kavango West" ]
      }
    , { name = "Khomas"
      , code = ""
      , unofficialNames = [ "Khomas" ]
      }
    , { name = "Kunene"
      , code = ""
      , unofficialNames = [ "Kunene" ]
      }
    , { name = "Otjozondjupa"
      , code = ""
      , unofficialNames = [ "Otjozondjupa" ]
      }
    , { name = "Omaheke"
      , code = ""
      , unofficialNames = [ "Omaheke" ]
      }
    , { name = "Oshana"
      , code = ""
      , unofficialNames = [ "Oshana" ]
      }
    , { name = "Omusati"
      , code = ""
      , unofficialNames = [ "Omusati" ]
      }
    , { name = "Oshikoto"
      , code = ""
      , unofficialNames = [ "Otjikoto" ]
      }
    , { name = "Ohangwena"
      , code = ""
      , unofficialNames = [ "Ohangwena" ]
      }
    ]


{-| -}
newCaledoniaSubdivisions : List Subdivision
newCaledoniaSubdivisions =
    [ { name = "Nord"
      , code = ""
      , unofficialNames = [ "Nord" ]
      }
    , { name = "Sud"
      , code = ""
      , unofficialNames = [ "Sud" ]
      }
    , { name = "Iles Loyaute"
      , code = ""
      , unofficialNames = [ "Iles Loyaute" ]
      }
    ]


{-| -}
nigerSubdivisions : List Subdivision
nigerSubdivisions =
    [ { name = "Agadez"
      , code = ""
      , unofficialNames = [ "Agadez" ]
      }
    , { name = "Diffa"
      , code = ""
      , unofficialNames = [ "Diffa" ]
      }
    , { name = "Dosso"
      , code = ""
      , unofficialNames = [ "Dosso" ]
      }
    , { name = "Maradi"
      , code = ""
      , unofficialNames = [ "Maradi" ]
      }
    , { name = "Tahoua"
      , code = ""
      , unofficialNames = [ "Tahoua" ]
      }
    , { name = "Tillabéri"
      , code = ""
      , unofficialNames = [ "Tillaberi" ]
      }
    , { name = "Zinder"
      , code = ""
      , unofficialNames = [ "Zinder" ]
      }
    , { name = "Niamey"
      , code = ""
      , unofficialNames = [ "Niamey" ]
      }
    ]


{-| -}
nigeriaSubdivisions : List Subdivision
nigeriaSubdivisions =
    [ { name = "Abia"
      , code = ""
      , unofficialNames = [ "Abia" ]
      }
    , { name = "Adamawa"
      , code = ""
      , unofficialNames = [ "Adamaoua", "Gongola" ]
      }
    , { name = "Akwa Ibom"
      , code = ""
      , unofficialNames = [ "Akwa Ibom" ]
      }
    , { name = "Anambra"
      , code = ""
      , unofficialNames = [ "Anambra" ]
      }
    , { name = "Bauchi"
      , code = ""
      , unofficialNames = [ "Bauchi" ]
      }
    , { name = "Benue"
      , code = ""
      , unofficialNames = [ "Benue" ]
      }
    , { name = "Borno"
      , code = ""
      , unofficialNames = [ "Borno" ]
      }
    , { name = "Bayelsa"
      , code = ""
      , unofficialNames = [ "Bayelsa" ]
      }
    , { name = "Cross River"
      , code = ""
      , unofficialNames = [ "Cross River" ]
      }
    , { name = "Delta"
      , code = ""
      , unofficialNames = [ "Delta" ]
      }
    , { name = "Ebonyi"
      , code = ""
      , unofficialNames = [ "Ebonyi" ]
      }
    , { name = "Edo"
      , code = ""
      , unofficialNames = [ "Bendel" ]
      }
    , { name = "Ekiti"
      , code = ""
      , unofficialNames = [ "Ekiti" ]
      }
    , { name = "Enugu"
      , code = ""
      , unofficialNames = [ "Enugu" ]
      }
    , { name = "Abuja Capital Territory"
      , code = ""
      , unofficialNames = [ "Abuja Capital Territory" ]
      }
    , { name = "Gombe"
      , code = ""
      , unofficialNames = [ "Gombe" ]
      }
    , { name = "Imo"
      , code = ""
      , unofficialNames = [ "Imo" ]
      }
    , { name = "Jigawa"
      , code = ""
      , unofficialNames = [ "Jigawa" ]
      }
    , { name = "Kaduna"
      , code = ""
      , unofficialNames = [ "Kaduna" ]
      }
    , { name = "Kebbi"
      , code = ""
      , unofficialNames = [ "Kebbi" ]
      }
    , { name = "Kano"
      , code = ""
      , unofficialNames = [ "Kano" ]
      }
    , { name = "Kogi"
      , code = ""
      , unofficialNames = [ "Kogi" ]
      }
    , { name = "Katsina"
      , code = ""
      , unofficialNames = [ "Katsina" ]
      }
    , { name = "Kwara"
      , code = ""
      , unofficialNames = [ "Kwara" ]
      }
    , { name = "Lagos"
      , code = ""
      , unofficialNames = [ "Lagos" ]
      }
    , { name = "Nassarawa"
      , code = ""
      , unofficialNames = [ "Nasarawa" ]
      }
    , { name = "Niger"
      , code = ""
      , unofficialNames = [ "Niger" ]
      }
    , { name = "Ogun"
      , code = ""
      , unofficialNames = [ "Ogun" ]
      }
    , { name = "Ondo"
      , code = ""
      , unofficialNames = [ "Ondo" ]
      }
    , { name = "Osun"
      , code = ""
      , unofficialNames = [ "Osun" ]
      }
    , { name = "Oyo"
      , code = ""
      , unofficialNames = [ "Oyo" ]
      }
    , { name = "Plateau"
      , code = ""
      , unofficialNames = [ "Plateau" ]
      }
    , { name = "Rivers"
      , code = ""
      , unofficialNames = [ "Rivers" ]
      }
    , { name = "Sokoto"
      , code = ""
      , unofficialNames = [ "Sokoto" ]
      }
    , { name = "Taraba"
      , code = ""
      , unofficialNames = [ "Taraba" ]
      }
    , { name = "Yobe"
      , code = ""
      , unofficialNames = [ "Yobe" ]
      }
    , { name = "Zamfara"
      , code = ""
      , unofficialNames = [ "Zamfara" ]
      }
    ]


{-| -}
nicaraguaSubdivisions : List Subdivision
nicaraguaSubdivisions =
    [ { name = "Atlántico Norte*"
      , code = ""
      , unofficialNames = [ "RAAN", "Región Autónoma Atlántico Norte", "Zelaya Norte" ]
      }
    , { name = "Atlántico Sur*"
      , code = ""
      , unofficialNames = [ "RAAS", "Región Autónoma Atlántico Sur", "Zelaya Sur" ]
      }
    , { name = "Boaco"
      , code = ""
      , unofficialNames = [ "Boaco" ]
      }
    , { name = "Carazo"
      , code = ""
      , unofficialNames = [ "Carazo" ]
      }
    , { name = "Chinandega"
      , code = ""
      , unofficialNames = [ "Chinandega" ]
      }
    , { name = "Chontales"
      , code = ""
      , unofficialNames = [ "Chontales" ]
      }
    , { name = "Estelí"
      , code = ""
      , unofficialNames = [ "Estelí" ]
      }
    , { name = "Granada"
      , code = ""
      , unofficialNames = [ "Granada" ]
      }
    , { name = "Jinotega"
      , code = ""
      , unofficialNames = [ "Jinotega" ]
      }
    , { name = "León"
      , code = ""
      , unofficialNames = [ "León" ]
      }
    , { name = "Madriz"
      , code = ""
      , unofficialNames = [ "Madriz" ]
      }
    , { name = "Managua"
      , code = ""
      , unofficialNames = [ "Managua" ]
      }
    , { name = "Masaya"
      , code = ""
      , unofficialNames = [ "Masaya" ]
      }
    , { name = "Matagalpa"
      , code = ""
      , unofficialNames = [ "Matagalpa" ]
      }
    , { name = "Nueva Segovia"
      , code = ""
      , unofficialNames = [ "Nueva Segovia" ]
      }
    , { name = "Rivas"
      , code = ""
      , unofficialNames = [ "Rivas" ]
      }
    , { name = "Río San Juan"
      , code = ""
      , unofficialNames = [ "Río San Juan" ]
      }
    ]


{-| -}
netherlandsSubdivisions : List Subdivision
netherlandsSubdivisions =
    [ { name = "Drenthe"
      , code = ""
      , unofficialNames = [ "Drenthe" ]
      }
    , { name = "Flevoland"
      , code = ""
      , unofficialNames = [ "Flevoland" ]
      }
    , { name = "Friesland"
      , code = ""
      , unofficialNames = [ "Friesland" ]
      }
    , { name = "Gelderland"
      , code = ""
      , unofficialNames = [ "Gueldre" ]
      }
    , { name = "Groningen"
      , code = ""
      , unofficialNames = [ "Groningue", "Groninga" ]
      }
    , { name = "Limburg"
      , code = ""
      , unofficialNames = [ "Limburg" ]
      }
    , { name = "Noord-Brabant"
      , code = ""
      , unofficialNames = [ "Noord-Brabant" ]
      }
    , { name = "Noord-Holland"
      , code = ""
      , unofficialNames = [ "Noord-Holland" ]
      }
    , { name = "Overijssel"
      , code = ""
      , unofficialNames = [ "Overijssel" ]
      }
    , { name = "Utrecht"
      , code = ""
      , unofficialNames = [ "Utrecht" ]
      }
    , { name = "Zeeland"
      , code = ""
      , unofficialNames = [ "Zeeland" ]
      }
    , { name = "Zuid-Holland"
      , code = ""
      , unofficialNames = [ "Zuid-Holland" ]
      }
    ]


{-| -}
norwaySubdivisions : List Subdivision
norwaySubdivisions =
    [ { name = "Oslo"
      , code = ""
      , unofficialNames = [ "Oslo" ]
      }
    , { name = "Rogaland"
      , code = ""
      , unofficialNames = [ "Rogaland" ]
      }
    , { name = "Møre og Romsdal"
      , code = ""
      , unofficialNames = [ "Møre og Romsdal" ]
      }
    , { name = "Nordland"
      , code = ""
      , unofficialNames = [ "Nordland" ]
      }
    , { name = "Svalbard (Arctic Region)"
      , code = ""
      , unofficialNames = [ "Svalbard (Arctic Region)" ]
      }
    , { name = "Jan Mayen (Arctic Region)"
      , code = ""
      , unofficialNames = [ "Jan Mayen (Arctic Region)" ]
      }
    , { name = "Viken"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Innlandet"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Vestfold og Telemark"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Agder"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Vestland"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Trøndelag"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Troms og Finnmark"
      , code = ""
      , unofficialNames = [ "" ]
      }
    ]


{-| -}
nepalSubdivisions : List Subdivision
nepalSubdivisions =
    [ { name = "Bagmati"
      , code = ""
      , unofficialNames = [ "Bagmati" ]
      }
    , { name = "Bheri"
      , code = ""
      , unofficialNames = [ "Bheri" ]
      }
    , { name = "Dhawalagiri"
      , code = ""
      , unofficialNames = [ "Dhawalagiri" ]
      }
    , { name = "Gandaki"
      , code = ""
      , unofficialNames = [ "Gandaki" ]
      }
    , { name = "Janakpur"
      , code = ""
      , unofficialNames = [ "Janakpur" ]
      }
    , { name = "Karnali"
      , code = ""
      , unofficialNames = [ "Karnali" ]
      }
    , { name = "Kosi [Koshi]"
      , code = ""
      , unofficialNames = [ "Kosi [Koshi]" ]
      }
    , { name = "Lumbini"
      , code = ""
      , unofficialNames = [ "Lumbini" ]
      }
    , { name = "Mahakali"
      , code = ""
      , unofficialNames = [ "Mahakali" ]
      }
    , { name = "Mechi"
      , code = ""
      , unofficialNames = [ "Mechi" ]
      }
    , { name = "Narayani"
      , code = ""
      , unofficialNames = [ "Narayani" ]
      }
    , { name = "Rapti"
      , code = ""
      , unofficialNames = [ "Rapti" ]
      }
    , { name = "Sagarmatha"
      , code = ""
      , unofficialNames = [ "Sagarmatha" ]
      }
    , { name = "Seti"
      , code = ""
      , unofficialNames = [ "Seti" ]
      }
    ]


{-| -}
nauruSubdivisions : List Subdivision
nauruSubdivisions =
    [ { name = "Aiwo"
      , code = ""
      , unofficialNames = [ "Aiwo" ]
      }
    , { name = "Anabar"
      , code = ""
      , unofficialNames = [ "Anabar" ]
      }
    , { name = "Anetan"
      , code = ""
      , unofficialNames = [ "Anetan" ]
      }
    , { name = "Anibare"
      , code = ""
      , unofficialNames = [ "Anibare" ]
      }
    , { name = "Baiti"
      , code = ""
      , unofficialNames = [ "Baiti" ]
      }
    , { name = "Boe"
      , code = ""
      , unofficialNames = [ "Boe" ]
      }
    , { name = "Buada"
      , code = ""
      , unofficialNames = [ "Buada" ]
      }
    , { name = "Denigomodu"
      , code = ""
      , unofficialNames = [ "Denigomodu" ]
      }
    , { name = "Ewa"
      , code = ""
      , unofficialNames = [ "Ewa" ]
      }
    , { name = "Ijuw"
      , code = ""
      , unofficialNames = [ "Ijuw" ]
      }
    , { name = "Meneng"
      , code = ""
      , unofficialNames = [ "Meneng" ]
      }
    , { name = "Nibok"
      , code = ""
      , unofficialNames = [ "Nibok" ]
      }
    , { name = "Uaboe"
      , code = ""
      , unofficialNames = [ "Uaboe" ]
      }
    , { name = "Yaren"
      , code = ""
      , unofficialNames = [ "Yaren" ]
      }
    ]


{-| -}
newZealandSubdivisions : List Subdivision
newZealandSubdivisions =
    [ { name = "Auckland"
      , code = ""
      , unofficialNames = [ "Auckland" ]
      }
    , { name = "Bay of Plenty"
      , code = ""
      , unofficialNames = [ "Bay of Plenty" ]
      }
    , { name = "Canterbury"
      , code = ""
      , unofficialNames = [ "Canterbury" ]
      }
    , { name = "Gisborne"
      , code = ""
      , unofficialNames = [ "Gisborne" ]
      }
    , { name = "Hawke's Bay"
      , code = ""
      , unofficialNames = [ "Hawke's Bay" ]
      }
    , { name = "Marlborough"
      , code = ""
      , unofficialNames = [ "Marlborough" ]
      }
    , { name = "Manawatu-Wanganui"
      , code = ""
      , unofficialNames = [ "Wanganui-Manawatu" ]
      }
    , { name = "Nelson"
      , code = ""
      , unofficialNames = [ "Nelson" ]
      }
    , { name = "Northland"
      , code = ""
      , unofficialNames = [ "Northland" ]
      }
    , { name = "Otago"
      , code = ""
      , unofficialNames = [ "Otago" ]
      }
    , { name = "Southland"
      , code = ""
      , unofficialNames = [ "Southland" ]
      }
    , { name = "Tasman"
      , code = ""
      , unofficialNames = [ "Tasman" ]
      }
    , { name = "Taranaki"
      , code = ""
      , unofficialNames = [ "Taranaki" ]
      }
    , { name = "Wellington"
      , code = ""
      , unofficialNames = [ "Wellington" ]
      }
    , { name = "Waikato"
      , code = ""
      , unofficialNames = [ "Waikato" ]
      }
    , { name = "West Coast"
      , code = ""
      , unofficialNames = [ "West Coast" ]
      }
    , { name = "Chatham Islands"
      , code = ""
      , unofficialNames = [ "Chatham Islands" ]
      }
    ]


{-| -}
omanSubdivisions : List Subdivision
omanSubdivisions =
    [ { name = "Al Batinah"
      , code = ""
      , unofficialNames = [ "Al Batinah" ]
      }
    , { name = "Ad Dakhiliyah"
      , code = ""
      , unofficialNames = [ "Ad Dakhiliya" ]
      }
    , { name = "Dhofar"
      , code = ""
      , unofficialNames = [ "Dhofar", "Dhufar", "Janubiyah" ]
      }
    , { name = "Masqat"
      , code = ""
      , unofficialNames = [ "Masqaţ", "Maskat", "Mascate" ]
      }
    , { name = "Musandam"
      , code = ""
      , unofficialNames = [ "Musandam" ]
      }
    , { name = "Ash Sharqiyah"
      , code = ""
      , unofficialNames = [ "Ash Sharqiyah" ]
      }
    , { name = "Al Wustá"
      , code = ""
      , unofficialNames = [ "Al Wustá" ]
      }
    , { name = "Al Buraymi"
      , code = ""
      , unofficialNames = [ "Al Buraymi" ]
      }
    , { name = "Adh Dhahirah"
      , code = ""
      , unofficialNames = [ "Adh Dhahirah" ]
      }
    ]


{-| -}
panamaSubdivisions : List Subdivision
panamaSubdivisions =
    [ { name = "Bocas del Toro"
      , code = ""
      , unofficialNames = [ "Bocas del Toro" ]
      }
    , { name = "Coclé"
      , code = ""
      , unofficialNames = [ "Coclé" ]
      }
    , { name = "Colón"
      , code = ""
      , unofficialNames = [ "Colón" ]
      }
    , { name = "Chiriquí"
      , code = ""
      , unofficialNames = [ "Chiriquí" ]
      }
    , { name = "Darién"
      , code = ""
      , unofficialNames = [ "Darién" ]
      }
    , { name = "Herrera"
      , code = ""
      , unofficialNames = [ "Herrera" ]
      }
    , { name = "Los Santos"
      , code = ""
      , unofficialNames = [ "Los Santos" ]
      }
    , { name = "Panamá"
      , code = ""
      , unofficialNames = [ "Panamá" ]
      }
    , { name = "Veraguas"
      , code = ""
      , unofficialNames = [ "Veraguas" ]
      }
    , { name = "Panamá Oeste"
      , code = ""
      , unofficialNames = [ "Panamá Oeste" ]
      }
    , { name = "Emberá-Wounaan"
      , code = ""
      , unofficialNames = [ "Emberá-Wounaan" ]
      }
    , { name = "Guna Yala"
      , code = ""
      , unofficialNames = [ "Guna Yala" ]
      }
    , { name = "Ngäbe-Buglé"
      , code = ""
      , unofficialNames = [ "Ngäbe-Buglé" ]
      }
    ]


{-| -}
peruSubdivisions : List Subdivision
peruSubdivisions =
    [ { name = "Amazonas"
      , code = ""
      , unofficialNames = [ "Amazonas" ]
      }
    , { name = "Ancash"
      , code = ""
      , unofficialNames = [ "Anqas" ]
      }
    , { name = "Apurímac"
      , code = ""
      , unofficialNames = [ "Apurímac" ]
      }
    , { name = "Arequipa"
      , code = ""
      , unofficialNames = [ "Areqepa" ]
      }
    , { name = "Ayacucho"
      , code = ""
      , unofficialNames = [ "Ayakuchu" ]
      }
    , { name = "Cajamarca"
      , code = ""
      , unofficialNames = [ "Cajamarca" ]
      }
    , { name = "El Callao"
      , code = ""
      , unofficialNames = [ "El Callao" ]
      }
    , { name = "Cuzco [Cusco]"
      , code = ""
      , unofficialNames = [ "Cuzco", "Qosqo" ]
      }
    , { name = "Huánuco"
      , code = ""
      , unofficialNames = [ "Huánuco" ]
      }
    , { name = "Huancavelica"
      , code = ""
      , unofficialNames = [ "Huancavelica" ]
      }
    , { name = "Ica"
      , code = ""
      , unofficialNames = [ "Ica" ]
      }
    , { name = "Junín"
      , code = ""
      , unofficialNames = [ "Junín" ]
      }
    , { name = "La Libertad"
      , code = ""
      , unofficialNames = [ "La Libertad" ]
      }
    , { name = "Lambayeque"
      , code = ""
      , unofficialNames = [ "Lambayeque" ]
      }
    , { name = "Lima"
      , code = ""
      , unofficialNames = [ "Lima" ]
      }
    , { name = "Loreto"
      , code = ""
      , unofficialNames = [ "Loreto" ]
      }
    , { name = "Madre de Dios"
      , code = ""
      , unofficialNames = [ "Madre de Dios" ]
      }
    , { name = "Moquegua"
      , code = ""
      , unofficialNames = [ "Moquegua" ]
      }
    , { name = "Pasco"
      , code = ""
      , unofficialNames = [ "Pasco" ]
      }
    , { name = "Piura"
      , code = ""
      , unofficialNames = [ "Piura" ]
      }
    , { name = "Puno"
      , code = ""
      , unofficialNames = [ "Puno" ]
      }
    , { name = "San Martín"
      , code = ""
      , unofficialNames = [ "San Martín" ]
      }
    , { name = "Tacna"
      , code = ""
      , unofficialNames = [ "Tacna" ]
      }
    , { name = "Tumbes"
      , code = ""
      , unofficialNames = [ "Tumbes" ]
      }
    , { name = "Ucayali"
      , code = ""
      , unofficialNames = [ "Ucayali" ]
      }
    , { name = "Lima Metropolitana"
      , code = ""
      , unofficialNames = [ "Lima Metropolitana" ]
      }
    ]


{-| -}
frenchPolynesiaSubdivisions : List Subdivision
frenchPolynesiaSubdivisions =
    [ { name = "Austral Islands"
      , code = ""
      , unofficialNames = [ "Austral Islands" ]
      }
    , { name = "Marquesas Islands"
      , code = ""
      , unofficialNames = [ "Marquesas Islands" ]
      }
    , { name = "Leeward Islands"
      , code = ""
      , unofficialNames = [ "Leeward Islands" ]
      }
    , { name = "Iles Tuamotu-Gambier"
      , code = ""
      , unofficialNames = [ "Iles Tuamotu-Gambier" ]
      }
    , { name = "Windward Islands"
      , code = ""
      , unofficialNames = [ "Windward Islands" ]
      }
    ]


{-| -}
papuaNewGuineaSubdivisions : List Subdivision
papuaNewGuineaSubdivisions =
    [ { name = "Chimbu"
      , code = ""
      , unofficialNames = [ "Chimbu", "Simbúa" ]
      }
    , { name = "Central"
      , code = ""
      , unofficialNames = [ "Papua Central" ]
      }
    , { name = "East New Britain"
      , code = ""
      , unofficialNames = [ "New Britain East" ]
      }
    , { name = "Eastern Highlands"
      , code = ""
      , unofficialNames = [ "Highlands East" ]
      }
    , { name = "Enga"
      , code = ""
      , unofficialNames = [ "Enga" ]
      }
    , { name = "East Sepik"
      , code = ""
      , unofficialNames = [ "Sepik East" ]
      }
    , { name = "Gulf"
      , code = ""
      , unofficialNames = [ "Papua Gulf" ]
      }
    , { name = "Milne Bay"
      , code = ""
      , unofficialNames = [ "Milne Bay" ]
      }
    , { name = "Morobe"
      , code = ""
      , unofficialNames = [ "Morobe" ]
      }
    , { name = "Madang"
      , code = ""
      , unofficialNames = [ "Madang" ]
      }
    , { name = "Manus"
      , code = ""
      , unofficialNames = [ "Great Admiralty Island", "Mwanus" ]
      }
    , { name = "National Capital District (Port Moresby)"
      , code = ""
      , unofficialNames = [ "National Capital District (Port Moresby)" ]
      }
    , { name = "New Ireland"
      , code = ""
      , unofficialNames = [ "Niu Ailan" ]
      }
    , { name = "Northern"
      , code = ""
      , unofficialNames = [ "Northern" ]
      }
    , { name = "North Solomons"
      , code = ""
      , unofficialNames = [ "Bougainville", "Mekamui", "North Solomons" ]
      }
    , { name = "Sandaun [West Sepik]"
      , code = ""
      , unofficialNames = [ "West Sepik" ]
      }
    , { name = "Southern Highlands"
      , code = ""
      , unofficialNames = [ "Highlands South" ]
      }
    , { name = "West New Britain"
      , code = ""
      , unofficialNames = [ "New Britain West" ]
      }
    , { name = "Western Highlands"
      , code = ""
      , unofficialNames = [ "Highlands West" ]
      }
    , { name = "Western"
      , code = ""
      , unofficialNames = [ "Papua West", "Western" ]
      }
    ]


{-| -}
philippinesSubdivisions : List Subdivision
philippinesSubdivisions =
    [ { name = "Abra"
      , code = ""
      , unofficialNames = [ "Abra" ]
      }
    , { name = "Agusan del Norte"
      , code = ""
      , unofficialNames = [ "Agusan del Norte" ]
      }
    , { name = "Agusan del Sur"
      , code = ""
      , unofficialNames = [ "Agusan del Sur" ]
      }
    , { name = "Aklan"
      , code = ""
      , unofficialNames = [ "Aklan" ]
      }
    , { name = "Albay"
      , code = ""
      , unofficialNames = [ "Albay" ]
      }
    , { name = "Antique"
      , code = ""
      , unofficialNames = [ "Antique" ]
      }
    , { name = "Apayao"
      , code = ""
      , unofficialNames = [ "Apayao" ]
      }
    , { name = "Aurora"
      , code = ""
      , unofficialNames = [ "Aurora" ]
      }
    , { name = "Bataan"
      , code = ""
      , unofficialNames = [ "Bataan" ]
      }
    , { name = "Basilan"
      , code = ""
      , unofficialNames = [ "Basilan" ]
      }
    , { name = "Benguet"
      , code = ""
      , unofficialNames = [ "Benguet" ]
      }
    , { name = "Biliran"
      , code = ""
      , unofficialNames = [ "Biliran" ]
      }
    , { name = "Bohol"
      , code = ""
      , unofficialNames = [ "Bohol" ]
      }
    , { name = "Batangas"
      , code = ""
      , unofficialNames = [ "Batangas" ]
      }
    , { name = "Batanes"
      , code = ""
      , unofficialNames = [ "Batanes" ]
      }
    , { name = "Bukidnon"
      , code = ""
      , unofficialNames = [ "Bukidnon" ]
      }
    , { name = "Bulacan"
      , code = ""
      , unofficialNames = [ "Bulacan" ]
      }
    , { name = "Cagayan"
      , code = ""
      , unofficialNames = [ "Cagayan" ]
      }
    , { name = "Camiguin"
      , code = ""
      , unofficialNames = [ "Camiguin" ]
      }
    , { name = "Camarines Norte"
      , code = ""
      , unofficialNames = [ "Camarines Norte" ]
      }
    , { name = "Capiz"
      , code = ""
      , unofficialNames = [ "Capiz" ]
      }
    , { name = "Camarines Sur"
      , code = ""
      , unofficialNames = [ "Camarines Sur" ]
      }
    , { name = "Catanduanes"
      , code = ""
      , unofficialNames = [ "Catanduanes" ]
      }
    , { name = "Cavite"
      , code = ""
      , unofficialNames = [ "Cavite" ]
      }
    , { name = "Cebu"
      , code = ""
      , unofficialNames = [ "Cebu" ]
      }
    , { name = "Compostela Valley"
      , code = ""
      , unofficialNames = [ "Compostela Valley" ]
      }
    , { name = "Davao Oriental"
      , code = ""
      , unofficialNames = [ "Davao Oriental" ]
      }
    , { name = "Davao del Sur"
      , code = ""
      , unofficialNames = [ "Davao del Sur" ]
      }
    , { name = "Davao del Norte"
      , code = ""
      , unofficialNames = [ "Davao" ]
      }
    , { name = "Dinagat Islands"
      , code = ""
      , unofficialNames = [ "Dinagat Islands" ]
      }
    , { name = "Davao Occidental"
      , code = ""
      , unofficialNames = [ "Davao Occidental" ]
      }
    , { name = "Eastern Samar"
      , code = ""
      , unofficialNames = [ "Eastern Samar" ]
      }
    , { name = "Guimaras"
      , code = ""
      , unofficialNames = [ "Guimaras" ]
      }
    , { name = "Ifugao"
      , code = ""
      , unofficialNames = [ "Ifugao" ]
      }
    , { name = "Iloilo"
      , code = ""
      , unofficialNames = [ "Iloilo" ]
      }
    , { name = "Ilocos Norte"
      , code = ""
      , unofficialNames = [ "Ilocos Norte" ]
      }
    , { name = "Ilocos Sur"
      , code = ""
      , unofficialNames = [ "Ilocos Sur" ]
      }
    , { name = "Isabela"
      , code = ""
      , unofficialNames = [ "Isabela" ]
      }
    , { name = "Kalinga"
      , code = ""
      , unofficialNames = [ "Kalinga" ]
      }
    , { name = "Laguna"
      , code = ""
      , unofficialNames = [ "Laguna" ]
      }
    , { name = "Lanao del Norte"
      , code = ""
      , unofficialNames = [ "Lanao del Norte" ]
      }
    , { name = "Lanao del Sur"
      , code = ""
      , unofficialNames = [ "Lanao del Sur" ]
      }
    , { name = "Leyte"
      , code = ""
      , unofficialNames = [ "Leyte" ]
      }
    , { name = "La Union"
      , code = ""
      , unofficialNames = [ "La Union" ]
      }
    , { name = "Marinduque"
      , code = ""
      , unofficialNames = [ "Marinduque" ]
      }
    , { name = "Maguindanao"
      , code = ""
      , unofficialNames = [ "Maguindanao" ]
      }
    , { name = "Masbate"
      , code = ""
      , unofficialNames = [ "Masbate" ]
      }
    , { name = "Mindoro Occidental"
      , code = ""
      , unofficialNames = [ "Mindoro Occidental" ]
      }
    , { name = "Mindoro Oriental"
      , code = ""
      , unofficialNames = [ "Mindoro Oriental" ]
      }
    , { name = "Mountain Province"
      , code = ""
      , unofficialNames = [ "Mountain Province" ]
      }
    , { name = "Misamis Occidental"
      , code = ""
      , unofficialNames = [ "Misamis Occidental" ]
      }
    , { name = "Misamis Oriental"
      , code = ""
      , unofficialNames = [ "Misamis Oriental" ]
      }
    , { name = "North Cotabato"
      , code = ""
      , unofficialNames = [ "North Cotabato" ]
      }
    , { name = "Negros Occidental"
      , code = ""
      , unofficialNames = [ "Negros Occidental" ]
      }
    , { name = "Negros Oriental"
      , code = ""
      , unofficialNames = [ "Negros Oriental" ]
      }
    , { name = "Northern Samar"
      , code = ""
      , unofficialNames = [ "Northern Samar" ]
      }
    , { name = "Nueva Ecija"
      , code = ""
      , unofficialNames = [ "Nueva Ecija" ]
      }
    , { name = "Nueva Vizcaya"
      , code = ""
      , unofficialNames = [ "Nueva Vizcaya" ]
      }
    , { name = "Pampanga"
      , code = ""
      , unofficialNames = [ "Pampanga" ]
      }
    , { name = "Pangasinan"
      , code = ""
      , unofficialNames = [ "Pangasinan" ]
      }
    , { name = "Palawan"
      , code = ""
      , unofficialNames = [ "Palawan" ]
      }
    , { name = "Quezon"
      , code = ""
      , unofficialNames = [ "Quezon" ]
      }
    , { name = "Quirino"
      , code = ""
      , unofficialNames = [ "Angkaki" ]
      }
    , { name = "Rizal"
      , code = ""
      , unofficialNames = [ "Rizal" ]
      }
    , { name = "Romblon"
      , code = ""
      , unofficialNames = [ "Romblon" ]
      }
    , { name = "Sarangani"
      , code = ""
      , unofficialNames = [ "Sarangani" ]
      }
    , { name = "South Cotabato"
      , code = ""
      , unofficialNames = [ "South Cotabato" ]
      }
    , { name = "Siquijor"
      , code = ""
      , unofficialNames = [ "Siquijor" ]
      }
    , { name = "Southern Leyte"
      , code = ""
      , unofficialNames = [ "Southern Leyte" ]
      }
    , { name = "Sulu"
      , code = ""
      , unofficialNames = [ "Sulu" ]
      }
    , { name = "Sorsogon"
      , code = ""
      , unofficialNames = [ "Sorsogon" ]
      }
    , { name = "Sultan Kudarat"
      , code = ""
      , unofficialNames = [ "Sultan Kudarat" ]
      }
    , { name = "Surigao del Norte"
      , code = ""
      , unofficialNames = [ "Surigao del Norte" ]
      }
    , { name = "Surigao del Sur"
      , code = ""
      , unofficialNames = [ "Surigao del Sur" ]
      }
    , { name = "Tarlac"
      , code = ""
      , unofficialNames = [ "Tarlac" ]
      }
    , { name = "Tawi-Tawi"
      , code = ""
      , unofficialNames = [ "Tawi-Tawi" ]
      }
    , { name = "Western Samar"
      , code = ""
      , unofficialNames = [ "Western Samar" ]
      }
    , { name = "Dinagat"
      , code = ""
      , unofficialNames = [ "Dinagat" ]
      }
    , { name = "Shariff Kabunsuan"
      , code = ""
      , unofficialNames = [ "Shariff Kabunsuan" ]
      }
    , { name = "Zamboanga del Norte"
      , code = ""
      , unofficialNames = [ "Zamboanga del Norte" ]
      }
    , { name = "Zamboanga del Sur"
      , code = ""
      , unofficialNames = [ "Zamboanga del Sur" ]
      }
    , { name = "Zambales"
      , code = ""
      , unofficialNames = [ "Zambales" ]
      }
    , { name = "Zamboanga Sibuguey [Zamboanga Sibugay]"
      , code = ""
      , unofficialNames = [ "Zamboanga Sibuguey [Zamboanga Sibugay]" ]
      }
    , { name = "National Capital Region"
      , code = ""
      , unofficialNames = [ "National Capital Region", "Pambansang Punong Rehiyon" ]
      }
    ]


{-| -}
pakistanSubdivisions : List Subdivision
pakistanSubdivisions =
    [ { name = "Baluchistan (en)"
      , code = ""
      , unofficialNames = [ "Baluchistan (en)" ]
      }
    , { name = "Islamabad"
      , code = ""
      , unofficialNames = [ "Islamabad" ]
      }
    , { name = "Azad Kashmir"
      , code = ""
      , unofficialNames = [ "Azad Kashmir" ]
      }
    , { name = "Northern Areas"
      , code = ""
      , unofficialNames = [ "Northern Areas" ]
      }
    , { name = "North-West Frontier"
      , code = ""
      , unofficialNames = [ "North-West Frontier" ]
      }
    , { name = "Punjab"
      , code = ""
      , unofficialNames = [ "Punjab" ]
      }
    , { name = "Sind (en)"
      , code = ""
      , unofficialNames = [ "Sind (en)" ]
      }
    , { name = "Federally Administered Tribal Areas"
      , code = ""
      , unofficialNames = [ "Federally Administered Tribal Areas" ]
      }
    ]


{-| -}
polandSubdivisions : List Subdivision
polandSubdivisions =
    [ { name = "Dolnośląskie"
      , code = ""
      , unofficialNames = [ "dolnośląskie", "Dolnośląskie" ]
      }
    , { name = "Kujawsko-pomorskie"
      , code = ""
      , unofficialNames = [ "kujawsko-pomorskie", "Kujawsko-pomorskie" ]
      }
    , { name = "Lubelskie"
      , code = ""
      , unofficialNames = [ "lubelskie", "Lubelskie" ]
      }
    , { name = "Lubuskie"
      , code = ""
      , unofficialNames = [ "lubuskie", "Lubuskie" ]
      }
    , { name = "Łódzkie"
      , code = ""
      , unofficialNames = [ "łódzkie", "Łódzkie" ]
      }
    , { name = "Małopolskie"
      , code = ""
      , unofficialNames = [ "małopolskie", "Małopolskie" ]
      }
    , { name = "Mazowieckie"
      , code = ""
      , unofficialNames = [ "mazowieckie", "Mazowieckie" ]
      }
    , { name = "Opolskie"
      , code = ""
      , unofficialNames = [ "opolskie", "Opolskie" ]
      }
    , { name = "Podkarpackie"
      , code = ""
      , unofficialNames = [ "podkarpackie", "Podkarpackie" ]
      }
    , { name = "Podlaskie"
      , code = ""
      , unofficialNames = [ "podlaskie", "Podlaskie" ]
      }
    , { name = "Pomorskie"
      , code = ""
      , unofficialNames = [ "pomorskie", "Pomorskie" ]
      }
    , { name = "Śląskie"
      , code = ""
      , unofficialNames = [ "śląskie", "Śląskie" ]
      }
    , { name = "Świętokrzyskie"
      , code = ""
      , unofficialNames = [ "świętokrzyskie", "Świętokrzyskie" ]
      }
    , { name = "Warmińsko-mazurskie"
      , code = ""
      , unofficialNames = [ "warmińsko-mazurskie", "Warmińsko-mazurskie" ]
      }
    , { name = "Wielkopolskie"
      , code = ""
      , unofficialNames = [ "wielkopolskie", "Wielkopolskie" ]
      }
    , { name = "Zachodniopomorskie"
      , code = ""
      , unofficialNames = [ "zachodniopomorskie", "Zachodniopomorskie" ]
      }
    ]


{-| -}
saintPierreAndMiquelonSubdivisions : List Subdivision
saintPierreAndMiquelonSubdivisions =
    [ { name = "Miquelon"
      , code = ""
      , unofficialNames = [ "Miquelon" ]
      }
    , { name = "Saint Pierre"
      , code = ""
      , unofficialNames = [ "Saint Pierre" ]
      }
    ]


{-| -}
puertoRicoSubdivisions : List Subdivision
puertoRicoSubdivisions =
    [ { name = "Adjuntas"
      , code = ""
      , unofficialNames = [ "Adjuntas" ]
      }
    , { name = "Aguada"
      , code = ""
      , unofficialNames = [ "Aguada" ]
      }
    , { name = "Aguadilla"
      , code = ""
      , unofficialNames = [ "Aguadilla" ]
      }
    , { name = "Aguas Buenas"
      , code = ""
      , unofficialNames = [ "Aguas Buenas" ]
      }
    , { name = "Aibonito"
      , code = ""
      , unofficialNames = [ "Aibonito" ]
      }
    , { name = "Anasco"
      , code = ""
      , unofficialNames = [ "Anasco" ]
      }
    , { name = "Arecibo"
      , code = ""
      , unofficialNames = [ "Arecibo" ]
      }
    , { name = "Arroyo"
      , code = ""
      , unofficialNames = [ "Arroyo" ]
      }
    , { name = "Barceloneta"
      , code = ""
      , unofficialNames = [ "Barceloneta" ]
      }
    , { name = "Barranquitas"
      , code = ""
      , unofficialNames = [ "Barranquitas" ]
      }
    , { name = "Bayamon"
      , code = ""
      , unofficialNames = [ "Bayamon" ]
      }
    , { name = "Cabo Rojo"
      , code = ""
      , unofficialNames = [ "Cabo Rojo" ]
      }
    , { name = "Caguas"
      , code = ""
      , unofficialNames = [ "Caguas" ]
      }
    , { name = "Camuy"
      , code = ""
      , unofficialNames = [ "Camuy" ]
      }
    , { name = "Canovanas"
      , code = ""
      , unofficialNames = [ "Canovanas" ]
      }
    , { name = "Carolina"
      , code = ""
      , unofficialNames = [ "Carolina" ]
      }
    , { name = "Catano"
      , code = ""
      , unofficialNames = [ "Catano" ]
      }
    , { name = "Cayey"
      , code = ""
      , unofficialNames = [ "Cayey" ]
      }
    , { name = "Ceiba"
      , code = ""
      , unofficialNames = [ "Ceiba" ]
      }
    , { name = "Ciales"
      , code = ""
      , unofficialNames = [ "Ciales" ]
      }
    , { name = "Cidra"
      , code = ""
      , unofficialNames = [ "Cidra" ]
      }
    , { name = "Coamo"
      , code = ""
      , unofficialNames = [ "Coamo" ]
      }
    , { name = "Comerio"
      , code = ""
      , unofficialNames = [ "Comerio" ]
      }
    , { name = "Corozal"
      , code = ""
      , unofficialNames = [ "Corozal" ]
      }
    , { name = "Culebra"
      , code = ""
      , unofficialNames = [ "Culebra" ]
      }
    , { name = "Dorado"
      , code = ""
      , unofficialNames = [ "Dorado" ]
      }
    , { name = "Fajardo"
      , code = ""
      , unofficialNames = [ "Fajardo" ]
      }
    , { name = "Florida"
      , code = ""
      , unofficialNames = [ "Florida" ]
      }
    , { name = "Guanica"
      , code = ""
      , unofficialNames = [ "Guanica" ]
      }
    , { name = "Guayama"
      , code = ""
      , unofficialNames = [ "Guayama" ]
      }
    , { name = "Guayanilla"
      , code = ""
      , unofficialNames = [ "Guayanilla" ]
      }
    , { name = "Guaynabo"
      , code = ""
      , unofficialNames = [ "Guaynabo" ]
      }
    , { name = "Gurabo"
      , code = ""
      , unofficialNames = [ "Gurabo" ]
      }
    , { name = "Hatillo"
      , code = ""
      , unofficialNames = [ "Hatillo" ]
      }
    , { name = "Hormigueros"
      , code = ""
      , unofficialNames = [ "Hormigueros" ]
      }
    , { name = "Humacao"
      , code = ""
      , unofficialNames = [ "Humacao" ]
      }
    , { name = "Isabela"
      , code = ""
      , unofficialNames = [ "Isabela" ]
      }
    , { name = "Jayuya"
      , code = ""
      , unofficialNames = [ "Jayuya" ]
      }
    , { name = "Juana Diaz"
      , code = ""
      , unofficialNames = [ "Juana Diaz" ]
      }
    , { name = "Juncos"
      , code = ""
      , unofficialNames = [ "Juncos" ]
      }
    , { name = "Lajas"
      , code = ""
      , unofficialNames = [ "Lajas" ]
      }
    , { name = "Lares"
      , code = ""
      , unofficialNames = [ "Lares" ]
      }
    , { name = "Las Marias"
      , code = ""
      , unofficialNames = [ "Las Marias" ]
      }
    , { name = "Las Piedras"
      , code = ""
      , unofficialNames = [ "Las Piedras" ]
      }
    , { name = "Loiza"
      , code = ""
      , unofficialNames = [ "Loiza" ]
      }
    , { name = "Luquillo"
      , code = ""
      , unofficialNames = [ "Luquillo" ]
      }
    , { name = "Manati"
      , code = ""
      , unofficialNames = [ "Manati" ]
      }
    , { name = "Maricao"
      , code = ""
      , unofficialNames = [ "Maricao" ]
      }
    , { name = "Maunabo"
      , code = ""
      , unofficialNames = [ "Maunabo" ]
      }
    , { name = "Mayaguez"
      , code = ""
      , unofficialNames = [ "Mayaguez" ]
      }
    , { name = "Moca"
      , code = ""
      , unofficialNames = [ "Moca" ]
      }
    , { name = "Morovis"
      , code = ""
      , unofficialNames = [ "Morovis" ]
      }
    , { name = "Naguabo"
      , code = ""
      , unofficialNames = [ "Naguabo" ]
      }
    , { name = "Naranjito"
      , code = ""
      , unofficialNames = [ "Naranjito" ]
      }
    , { name = "Orocovis"
      , code = ""
      , unofficialNames = [ "Orocovis" ]
      }
    , { name = "Patillas"
      , code = ""
      , unofficialNames = [ "Patillas" ]
      }
    , { name = "Penuelas"
      , code = ""
      , unofficialNames = [ "Penuelas" ]
      }
    , { name = "Ponce"
      , code = ""
      , unofficialNames = [ "Ponce" ]
      }
    , { name = "Quebradillas"
      , code = ""
      , unofficialNames = [ "Quebradillas" ]
      }
    , { name = "Rincon"
      , code = ""
      , unofficialNames = [ "Rincon" ]
      }
    , { name = "Rio Grande"
      , code = ""
      , unofficialNames = [ "Rio Grande" ]
      }
    , { name = "Sabana Grande"
      , code = ""
      , unofficialNames = [ "Sabana Grande" ]
      }
    , { name = "Salinas"
      , code = ""
      , unofficialNames = [ "Salinas" ]
      }
    , { name = "San German"
      , code = ""
      , unofficialNames = [ "San German" ]
      }
    , { name = "San Juan"
      , code = ""
      , unofficialNames = [ "San Juan" ]
      }
    , { name = "San Lorenzo"
      , code = ""
      , unofficialNames = [ "San Lorenzo" ]
      }
    , { name = "San Sebastian"
      , code = ""
      , unofficialNames = [ "San Sebastian" ]
      }
    , { name = "Santa Isabel"
      , code = ""
      , unofficialNames = [ "Santa Isabel" ]
      }
    , { name = "Toa Alta"
      , code = ""
      , unofficialNames = [ "Toa Alta" ]
      }
    , { name = "Toa Baja"
      , code = ""
      , unofficialNames = [ "Toa Baja" ]
      }
    , { name = "Trujillo Alto"
      , code = ""
      , unofficialNames = [ "Trujillo Alto" ]
      }
    , { name = "Utuado"
      , code = ""
      , unofficialNames = [ "Utuado" ]
      }
    , { name = "Vega Alta"
      , code = ""
      , unofficialNames = [ "Vega Alta" ]
      }
    , { name = "Vega Baja"
      , code = ""
      , unofficialNames = [ "Vega Baja" ]
      }
    , { name = "Vieques"
      , code = ""
      , unofficialNames = [ "Vieques" ]
      }
    , { name = "Villalba"
      , code = ""
      , unofficialNames = [ "Villalba" ]
      }
    , { name = "Yabucoa"
      , code = ""
      , unofficialNames = [ "Yabucoa" ]
      }
    , { name = "Yauco"
      , code = ""
      , unofficialNames = [ "Yauco" ]
      }
    ]


{-| -}
palestineStateOfSubdivisions : List Subdivision
palestineStateOfSubdivisions =
    []


{-| -}
portugalSubdivisions : List Subdivision
portugalSubdivisions =
    [ { name = "Aveiro"
      , code = ""
      , unofficialNames = [ "Aveiro" ]
      }
    , { name = "Beja"
      , code = ""
      , unofficialNames = [ "Beja" ]
      }
    , { name = "Braga"
      , code = ""
      , unofficialNames = [ "Braga" ]
      }
    , { name = "Bragança"
      , code = ""
      , unofficialNames = [ "Bragança" ]
      }
    , { name = "Castelo Branco"
      , code = ""
      , unofficialNames = [ "Castelo Branco" ]
      }
    , { name = "Coimbra"
      , code = ""
      , unofficialNames = [ "Coimbra" ]
      }
    , { name = "Évora"
      , code = ""
      , unofficialNames = [ "Évora" ]
      }
    , { name = "Faro"
      , code = ""
      , unofficialNames = [ "Faro" ]
      }
    , { name = "Guarda"
      , code = ""
      , unofficialNames = [ "Guarda" ]
      }
    , { name = "Leiria"
      , code = ""
      , unofficialNames = [ "Leiria" ]
      }
    , { name = "Lisboa"
      , code = ""
      , unofficialNames = [ "Lisboa" ]
      }
    , { name = "Portalegre"
      , code = ""
      , unofficialNames = [ "Portalegre" ]
      }
    , { name = "Porto"
      , code = ""
      , unofficialNames = [ "Porto" ]
      }
    , { name = "Santarém"
      , code = ""
      , unofficialNames = [ "Santarém" ]
      }
    , { name = "Setúbal"
      , code = ""
      , unofficialNames = [ "Setúbal" ]
      }
    , { name = "Viana do Castelo"
      , code = ""
      , unofficialNames = [ "Viana do Castelo" ]
      }
    , { name = "Vila Real"
      , code = ""
      , unofficialNames = [ "Vila Real" ]
      }
    , { name = "Viseu"
      , code = ""
      , unofficialNames = [ "Viseu" ]
      }
    , { name = "Açores"
      , code = ""
      , unofficialNames = [ "Açores" ]
      }
    , { name = "Madeira"
      , code = ""
      , unofficialNames = [ "Madeira" ]
      }
    ]


{-| -}
palauSubdivisions : List Subdivision
palauSubdivisions =
    [ { name = "Aimeliik"
      , code = ""
      , unofficialNames = [ "Aimeliik" ]
      }
    , { name = "Airai"
      , code = ""
      , unofficialNames = [ "Airai" ]
      }
    , { name = "Angaur"
      , code = ""
      , unofficialNames = [ "Angaur" ]
      }
    , { name = "Hatobohei"
      , code = ""
      , unofficialNames = [ "Hatobohei" ]
      }
    , { name = "Kayangel"
      , code = ""
      , unofficialNames = [ "Kayangel" ]
      }
    , { name = "Koror"
      , code = ""
      , unofficialNames = [ "Koror" ]
      }
    , { name = "Melekeok"
      , code = ""
      , unofficialNames = [ "Melekeok" ]
      }
    , { name = "Ngaraard"
      , code = ""
      , unofficialNames = [ "Ngaraard" ]
      }
    , { name = "Ngarchelong"
      , code = ""
      , unofficialNames = [ "Ngarchelong" ]
      }
    , { name = "Ngardmau"
      , code = ""
      , unofficialNames = [ "Ngardmau" ]
      }
    , { name = "Ngatpang"
      , code = ""
      , unofficialNames = [ "Ngatpang" ]
      }
    , { name = "Ngchesar"
      , code = ""
      , unofficialNames = [ "Ngchesar" ]
      }
    , { name = "Ngeremlengui"
      , code = ""
      , unofficialNames = [ "Ngeremlengui" ]
      }
    , { name = "Ngiwal"
      , code = ""
      , unofficialNames = [ "Ngiwal" ]
      }
    , { name = "Peleliu"
      , code = ""
      , unofficialNames = [ "Peleliu" ]
      }
    , { name = "Sonsorol"
      , code = ""
      , unofficialNames = [ "Sonsorol" ]
      }
    ]


{-| -}
paraguaySubdivisions : List Subdivision
paraguaySubdivisions =
    [ { name = "Concepción"
      , code = ""
      , unofficialNames = [ "Concepción" ]
      }
    , { name = "Alto Paraná"
      , code = ""
      , unofficialNames = [ "Alto Paraná" ]
      }
    , { name = "Central"
      , code = ""
      , unofficialNames = [ "Central" ]
      }
    , { name = "Ñeembucú"
      , code = ""
      , unofficialNames = [ "Neembucú" ]
      }
    , { name = "Amambay"
      , code = ""
      , unofficialNames = [ "Amambay" ]
      }
    , { name = "Canindeyú"
      , code = ""
      , unofficialNames = [ "Canindeyú", "Canindiyú" ]
      }
    , { name = "Presidente Hayes"
      , code = ""
      , unofficialNames = [ "Presidente Hayes" ]
      }
    , { name = "Alto Paraguay"
      , code = ""
      , unofficialNames = [ "Alto Paraguay" ]
      }
    , { name = "Boquerón"
      , code = ""
      , unofficialNames = [ "Boquerón" ]
      }
    , { name = "San Pedro"
      , code = ""
      , unofficialNames = [ "San Pedro" ]
      }
    , { name = "Cordillera"
      , code = ""
      , unofficialNames = [ "Cordillera" ]
      }
    , { name = "Guairá"
      , code = ""
      , unofficialNames = [ "Guairá" ]
      }
    , { name = "Caaguazú"
      , code = ""
      , unofficialNames = [ "Caaguazú" ]
      }
    , { name = "Caazapá"
      , code = ""
      , unofficialNames = [ "Caazapá" ]
      }
    , { name = "Itapúa"
      , code = ""
      , unofficialNames = [ "Itapúa" ]
      }
    , { name = "Misiones"
      , code = ""
      , unofficialNames = [ "Misiones" ]
      }
    , { name = "Paraguarí"
      , code = ""
      , unofficialNames = [ "Paraguarí" ]
      }
    , { name = "Asunción"
      , code = ""
      , unofficialNames = [ "Asunción" ]
      }
    ]


{-| -}
qatarSubdivisions : List Subdivision
qatarSubdivisions =
    [ { name = "Ad Dawhah"
      , code = ""
      , unofficialNames = [ "Dawhah", "Doha", "ad-Dawhah", "ad-Dawh̨ah", "Doha", "Doha", "Doha" ]
      }
    , { name = "Al Ghuwayriyah"
      , code = ""
      , unofficialNames = [ "al-Ghuwayriyah" ]
      }
    , { name = "Jariyan al Batnah"
      , code = ""
      , unofficialNames = [ "Jariyan al Batnah" ]
      }
    , { name = "Al Jumayliyah"
      , code = ""
      , unofficialNames = [ "al-Jumayliyah" ]
      }
    , { name = "Al Khawr"
      , code = ""
      , unofficialNames = [ "H̱ūr", "al-Khawr", "al-Khour", "al-H̱awr" ]
      }
    , { name = "Madinat ash Shamal"
      , code = ""
      , unofficialNames = [ "ash-Shamal" ]
      }
    , { name = "Ar Rayyan"
      , code = ""
      , unofficialNames = [ "Rayyan", "ar-Rayyan" ]
      }
    , { name = "Umm Salal"
      , code = ""
      , unofficialNames = [ "Umm Shalal" ]
      }
    , { name = "Al Wakrah"
      , code = ""
      , unofficialNames = [ "Wakra", "Wakrah" ]
      }
    , { name = "Umm Sa'id"
      , code = ""
      , unofficialNames = [ "Mesaieed" ]
      }
    ]


{-| -}
reunionSubdivisions : List Subdivision
reunionSubdivisions =
    []


{-| -}
romaniaSubdivisions : List Subdivision
romaniaSubdivisions =
    [ { name = "Alba"
      , code = ""
      , unofficialNames = [ "Alba" ]
      }
    , { name = "Arges"
      , code = ""
      , unofficialNames = [ "Arges" ]
      }
    , { name = "Arad"
      , code = ""
      , unofficialNames = [ "Arad" ]
      }
    , { name = "Bucuresti"
      , code = ""
      , unofficialNames = [ "Bucuresti", "Bucureşti", "Bukarest", "Bucarest", "Bucarest" ]
      }
    , { name = "Bacau"
      , code = ""
      , unofficialNames = [ "Bacau" ]
      }
    , { name = "Bihor"
      , code = ""
      , unofficialNames = [ "Bihor" ]
      }
    , { name = "Bistrita-Nasaud"
      , code = ""
      , unofficialNames = [ "Bistrita-Nasaud" ]
      }
    , { name = "Braila"
      , code = ""
      , unofficialNames = [ "Braila" ]
      }
    , { name = "Botosani"
      , code = ""
      , unofficialNames = [ "Botosani" ]
      }
    , { name = "Brasov"
      , code = ""
      , unofficialNames = [ "Brasov" ]
      }
    , { name = "Buzau"
      , code = ""
      , unofficialNames = [ "Buzau" ]
      }
    , { name = "Cluj"
      , code = ""
      , unofficialNames = [ "Cluj" ]
      }
    , { name = "Calarasi"
      , code = ""
      , unofficialNames = [ "Calarasi" ]
      }
    , { name = "Caras-Severin"
      , code = ""
      , unofficialNames = [ "Caras-Severin" ]
      }
    , { name = "Constanta"
      , code = ""
      , unofficialNames = [ "Constanta", "Konstanza" ]
      }
    , { name = "Covasna"
      , code = ""
      , unofficialNames = [ "Covasna" ]
      }
    , { name = "Dâmbovita"
      , code = ""
      , unofficialNames = [ "Dambovita", "Dimbovita", "Dîmboviţa" ]
      }
    , { name = "Dolj"
      , code = ""
      , unofficialNames = [ "Dolj" ]
      }
    , { name = "Gorj"
      , code = ""
      , unofficialNames = [ "Gorj" ]
      }
    , { name = "Galati"
      , code = ""
      , unofficialNames = [ "Galati", "Galatz" ]
      }
    , { name = "Giurgiu"
      , code = ""
      , unofficialNames = [ "Giurgiu" ]
      }
    , { name = "Hunedoara"
      , code = ""
      , unofficialNames = [ "Hunedoara" ]
      }
    , { name = "Harghita"
      , code = ""
      , unofficialNames = [ "Harghita" ]
      }
    , { name = "Ilfov"
      , code = ""
      , unofficialNames = [ "Sectorul Agricol Ilfov" ]
      }
    , { name = "Ialomita"
      , code = ""
      , unofficialNames = [ "Ialomita" ]
      }
    , { name = "Iasi"
      , code = ""
      , unofficialNames = [ "Iasi", "Jasch", "Jassy", "Yassy" ]
      }
    , { name = "Mehedinti"
      , code = ""
      , unofficialNames = [ "Mehedinti" ]
      }
    , { name = "Maramures"
      , code = ""
      , unofficialNames = [ "Maramures" ]
      }
    , { name = "Mures"
      , code = ""
      , unofficialNames = [ "Mures" ]
      }
    , { name = "Neamt"
      , code = ""
      , unofficialNames = [ "Neamt" ]
      }
    , { name = "Olt"
      , code = ""
      , unofficialNames = [ "Olt" ]
      }
    , { name = "Prahova"
      , code = ""
      , unofficialNames = [ "Prahova" ]
      }
    , { name = "Sibiu"
      , code = ""
      , unofficialNames = [ "Sibiu" ]
      }
    , { name = "Salaj"
      , code = ""
      , unofficialNames = [ "Salaj" ]
      }
    , { name = "Satu Mare"
      , code = ""
      , unofficialNames = [ "Satu Mare" ]
      }
    , { name = "Suceava"
      , code = ""
      , unofficialNames = [ "Suceava" ]
      }
    , { name = "Tulcea"
      , code = ""
      , unofficialNames = [ "Tulcea" ]
      }
    , { name = "Timis"
      , code = ""
      , unofficialNames = [ "Timis" ]
      }
    , { name = "Teleorman"
      , code = ""
      , unofficialNames = [ "Teleorman" ]
      }
    , { name = "Vâlcea"
      , code = ""
      , unofficialNames = [ "Vîlcea" ]
      }
    , { name = "Vrancea"
      , code = ""
      , unofficialNames = [ "Vrancea" ]
      }
    , { name = "Vaslui"
      , code = ""
      , unofficialNames = [ "Vaslui" ]
      }
    ]


{-| -}
serbiaSubdivisions : List Subdivision
serbiaSubdivisions =
    [ { name = "Belgrade"
      , code = ""
      , unofficialNames = [ "Belgrade" ]
      }
    , { name = "Severna Backa"
      , code = ""
      , unofficialNames = [ "Severna Backa" ]
      }
    , { name = "Srednji Banat"
      , code = ""
      , unofficialNames = [ "Srednji Banat" ]
      }
    , { name = "Severni Banat"
      , code = ""
      , unofficialNames = [ "Severni Banat" ]
      }
    , { name = "Južni Banat"
      , code = ""
      , unofficialNames = [ "Južni Banat" ]
      }
    , { name = "Zapadna Backa"
      , code = ""
      , unofficialNames = [ "Zapadna Backa" ]
      }
    , { name = "Južna Backa"
      , code = ""
      , unofficialNames = [ "Južna Backa" ]
      }
    , { name = "Srem"
      , code = ""
      , unofficialNames = [ "Srem" ]
      }
    , { name = "Macva"
      , code = ""
      , unofficialNames = [ "Macva" ]
      }
    , { name = "Kolubara"
      , code = ""
      , unofficialNames = [ "Kolubara" ]
      }
    , { name = "Podunavlje"
      , code = ""
      , unofficialNames = [ "Podunavlje" ]
      }
    , { name = "Branicevo"
      , code = ""
      , unofficialNames = [ "Branicevo" ]
      }
    , { name = "Šumadija"
      , code = ""
      , unofficialNames = [ "Šumadija" ]
      }
    , { name = "Pomoravlje"
      , code = ""
      , unofficialNames = [ "Pomoravlje" ]
      }
    , { name = "Bor"
      , code = ""
      , unofficialNames = [ "Bor" ]
      }
    , { name = "Zajecar"
      , code = ""
      , unofficialNames = [ "Zajecar" ]
      }
    , { name = "Zlatibor"
      , code = ""
      , unofficialNames = [ "Zlatibor" ]
      }
    , { name = "Moravica"
      , code = ""
      , unofficialNames = [ "Moravica" ]
      }
    , { name = "Raška"
      , code = ""
      , unofficialNames = [ "Raška" ]
      }
    , { name = "Rasina"
      , code = ""
      , unofficialNames = [ "Rasina" ]
      }
    , { name = "Nišava"
      , code = ""
      , unofficialNames = [ "Nišava" ]
      }
    , { name = "Toplica"
      , code = ""
      , unofficialNames = [ "Toplica" ]
      }
    , { name = "Pirot"
      , code = ""
      , unofficialNames = [ "Pirot" ]
      }
    , { name = "Jablanica"
      , code = ""
      , unofficialNames = [ "Jablanica" ]
      }
    , { name = "Pcinja"
      , code = ""
      , unofficialNames = [ "Pcinja" ]
      }
    , { name = "Kosovo"
      , code = ""
      , unofficialNames = [ "Kosovo" ]
      }
    , { name = "Pec´"
      , code = ""
      , unofficialNames = [ "Pec´" ]
      }
    , { name = "Prizren"
      , code = ""
      , unofficialNames = [ "Prizren" ]
      }
    , { name = "Kosovska Mitrovica"
      , code = ""
      , unofficialNames = [ "Kosovska Mitrovica" ]
      }
    , { name = "Kosovo-Pomoravlje"
      , code = ""
      , unofficialNames = [ "Kosovo-Pomoravlje" ]
      }
    ]


{-| -}
russianFederationSubdivisions : List Subdivision
russianFederationSubdivisions =
    [ { name = "Adygeya, Respublika"
      , code = ""
      , unofficialNames = [ "Adygei Republic", "Adygeja" ]
      }
    , { name = "Altay, Respublika"
      , code = ""
      , unofficialNames = [ "Altaj", "Altay", "Gorno-Altaj" ]
      }
    , { name = "Altayskiy kray"
      , code = ""
      , unofficialNames = [ "Altai Kray", "Altajskij Kray", "Altajskiy Kraj", "Altaj" ]
      }
    , { name = "Amurskaya oblast'"
      , code = ""
      , unofficialNames = [ "Amurskaja Oblast" ]
      }
    , { name = "Arkhangel'skaya oblast'"
      , code = ""
      , unofficialNames = [ "Arhangelskaja Oblast", "Arhangelsk" ]
      }
    , { name = "Astrakhanskaya oblast'"
      , code = ""
      , unofficialNames = [ "Astrahanska Oblast", "Astrahan" ]
      }
    , { name = "Bashkortostan, Respublika"
      , code = ""
      , unofficialNames = [ "Baškortostan" ]
      }
    , { name = "Belgorodskaya oblast'"
      , code = ""
      , unofficialNames = [ "Belgorodskaja Oblast" ]
      }
    , { name = "Bryanskaya oblast'"
      , code = ""
      , unofficialNames = [ "Brjanskaja Oblast", "Brjansk" ]
      }
    , { name = "Buryatiya, Respublika"
      , code = ""
      , unofficialNames = [ "Buryat Republic", "Burjatija" ]
      }
    , { name = "Chechenskaya Respublika"
      , code = ""
      , unofficialNames = [ "Chechen", "Chechenia", "Ichkeria", "Ičkeria", "Čečens", "Čečenskaja Respublika", "Čečenija" ]
      }
    , { name = "Chelyabinskaya oblast'"
      , code = ""
      , unofficialNames = [ "Cheljabinsk", "Čeljabinskaja Oblast", "Čeljabinsk" ]
      }
    , { name = "Chukotskiy avtonomnyy okrug"
      , code = ""
      , unofficialNames = [ "Chuckchi", "Čukotskij Avtonomnyj Okrug", "Čukči", "Čukotka" ]
      }
    , { name = "Chuvashskaya Respublika"
      , code = ""
      , unofficialNames = [ "Chuvash Republic", "Chuvashskaya Respublika", "Čuvašskaja Respublika", "Čuvašija" ]
      }
    , { name = "Dagestan, Respublika"
      , code = ""
      , unofficialNames = [ "Dagestan, Respublika" ]
      }
    , { name = "Ingushskaya Respublika [Respublika Ingushetiya]"
      , code = ""
      , unofficialNames = [ "Ingushetija", "Ingušetija" ]
      }
    , { name = "Irkutskaya oblast'"
      , code = ""
      , unofficialNames = [ "Irkutskaja Oblast" ]
      }
    , { name = "Ivanovskaya oblast'"
      , code = ""
      , unofficialNames = [ "Ivanovskaja Oblast" ]
      }
    , { name = "Kamchatskaya oblast'"
      , code = ""
      , unofficialNames = [ "Kamchatskaya Oblast", "Kamčatskaja Oblast", "Kamčatka" ]
      }
    , { name = "Kabardino-Balkarskaya Respublika"
      , code = ""
      , unofficialNames = [ "Kabardino-Balkarian Republic", "Kabardino-Balkarskaja Respublika", "Kabardino-Balkarija" ]
      }
    , { name = "Karachayevo-Cherkesskaya Respublika"
      , code = ""
      , unofficialNames = [ "Karachay-Cherkessian", "Karačajevo-Čerkesskaja Respublika", "Karačaj-Čerkessija" ]
      }
    , { name = "Krasnodarskiy kray"
      , code = ""
      , unofficialNames = [ "Krasnodarskij Kraj" ]
      }
    , { name = "Kemerovskaya oblast'"
      , code = ""
      , unofficialNames = [ "Kemerovskaja Oblast" ]
      }
    , { name = "Kaliningradskaya oblast'"
      , code = ""
      , unofficialNames = [ "Kaliningradskaja Oblast" ]
      }
    , { name = "Kurganskaya oblast'"
      , code = ""
      , unofficialNames = [ "Kurganskaja Oblast" ]
      }
    , { name = "Khabarovskiy kray"
      , code = ""
      , unofficialNames = [ "Habarovskij Kray", "Habarovsk" ]
      }
    , { name = "Khanty-Mansiyskiy avtonomnyy okrug [Yugra]"
      , code = ""
      , unofficialNames = [ "Hanty-Mansijskij Avtonomnyj Okrug", "Hanty-Mansija" ]
      }
    , { name = "Kirovskaya oblast'"
      , code = ""
      , unofficialNames = [ "Kirovskaja Oblast" ]
      }
    , { name = "Khakasiya, Respublika"
      , code = ""
      , unofficialNames = [ "Khakass Republic", "Hakasija" ]
      }
    , { name = "Kalmykiya, Respublika"
      , code = ""
      , unofficialNames = [ "Halmg-Tangč", "Kalmyk Republic", "Khalmg-Tangch", "Kalmykija" ]
      }
    , { name = "Kaluzhskaya oblast'"
      , code = ""
      , unofficialNames = [ "Kaluzhskaya Oblast", "Kalužskaja Oblast" ]
      }
    , { name = "Komi, Respublika"
      , code = ""
      , unofficialNames = [ "Komi, Respublika" ]
      }
    , { name = "Kostromskaya oblast'"
      , code = ""
      , unofficialNames = [ "Kostromskaja Oblast" ]
      }
    , { name = "Kareliya, Respublika"
      , code = ""
      , unofficialNames = [ "Karelian Republic", "Karelija" ]
      }
    , { name = "Kurskaya oblast'"
      , code = ""
      , unofficialNames = [ "Kurskaja Oblast" ]
      }
    , { name = "Krasnoyarskiy kray"
      , code = ""
      , unofficialNames = [ "Krasnojarsk", "Krasnojarskij Kraj", "Krasnojarsk" ]
      }
    , { name = "Leningradskaya oblast'"
      , code = ""
      , unofficialNames = [ "Leningradskaja Oblast" ]
      }
    , { name = "Lipetskaya oblast'"
      , code = ""
      , unofficialNames = [ "Lipeckaja Oblast", "Lipeck" ]
      }
    , { name = "Magadanskaya oblast'"
      , code = ""
      , unofficialNames = [ "Magadanskaja Oblast" ]
      }
    , { name = "Mariy El, Respublika"
      , code = ""
      , unofficialNames = [ "Mariy El", "Marij El" ]
      }
    , { name = "Mordoviya, Respublika"
      , code = ""
      , unofficialNames = [ "Mordovian Republic", "Mordovija" ]
      }
    , { name = "Moskovskaya oblast'"
      , code = ""
      , unofficialNames = [ "Moskovskaja Oblast" ]
      }
    , { name = "Moskva"
      , code = ""
      , unofficialNames = [ "Moskva", "Moskau", "Moscou", "Moscú" ]
      }
    , { name = "Murmanskaya oblast'"
      , code = ""
      , unofficialNames = [ "Murmanskaja Oblast" ]
      }
    , { name = "Nenetskiy avtonomnyy okrug"
      , code = ""
      , unofficialNames = [ "Nenetskij Avtonomnyj Okrug" ]
      }
    , { name = "Novgorodskaya oblast'"
      , code = ""
      , unofficialNames = [ "Novgorodskaja Oblast" ]
      }
    , { name = "Nizhegorodskaya oblast'"
      , code = ""
      , unofficialNames = [ "Gorki", "Gorkij", "Gorky", "Nizhegorodskaya Oblast", "Nižegorodskaja Oblast", "Nižnij Novgorod" ]
      }
    , { name = "Novosibirskaya oblast'"
      , code = ""
      , unofficialNames = [ "Novosibirskaja Oblast" ]
      }
    , { name = "Omskaya oblast'"
      , code = ""
      , unofficialNames = [ "Omskaja Oblast" ]
      }
    , { name = "Orenburgskaya oblast'"
      , code = ""
      , unofficialNames = [ "Orenburgskaja Oblast" ]
      }
    , { name = "Orlovskaya oblast'"
      , code = ""
      , unofficialNames = [ "Orlovskaja Oblast", "Orjol" ]
      }
    , { name = "Perm"
      , code = ""
      , unofficialNames = [ "Permskaja Oblast" ]
      }
    , { name = "Penzenskaya oblast'"
      , code = ""
      , unofficialNames = [ "Penzenskaja Oblast" ]
      }
    , { name = "Primorskiy kray"
      , code = ""
      , unofficialNames = [ "Primorskij", "Primorskij Kraj", "Primorje" ]
      }
    , { name = "Pskovskaya oblast'"
      , code = ""
      , unofficialNames = [ "Pihkva", "Pleskau", "Pskovskaja Oblast" ]
      }
    , { name = "Rostovskaya oblast'"
      , code = ""
      , unofficialNames = [ "Rostovskaja Oblast" ]
      }
    , { name = "Ryazanskaya oblast'"
      , code = ""
      , unofficialNames = [ "Rjazanskaja Oblast", "Rjazan" ]
      }
    , { name = "Sakha, Respublika [Yakutiya]"
      , code = ""
      , unofficialNames = [ "Jakutija", "Sakha", "Yakutsk-Sakha", "Saha" ]
      }
    , { name = "Sakhalinskaya oblast'"
      , code = ""
      , unofficialNames = [ "Sahalinskaya Oblast", "Sahalin" ]
      }
    , { name = "Samarskaya oblast'"
      , code = ""
      , unofficialNames = [ "Samarskaja Oblast" ]
      }
    , { name = "Saratovskaya oblast'"
      , code = ""
      , unofficialNames = [ "Saratovskaja Oblast" ]
      }
    , { name = "Severnaya Osetiya, Respublika [Alaniya] [Respublika Severnaya Osetiya-Alaniya]"
      , code = ""
      , unofficialNames = [ "Alania", "North Ossetian Republic", "Osetija", "Alanija" ]
      }
    , { name = "Smolenskaya oblast'"
      , code = ""
      , unofficialNames = [ "Smolenskaja Oblast" ]
      }
    , { name = "Sankt-Peterburg"
      , code = ""
      , unofficialNames = [ "San Pietroburgo", "Sankt-Peterburg", "Sankt Petersburg", "Saint-Pétersbourg", "San Petersburgo" ]
      }
    , { name = "Stavropol'skiy kray"
      , code = ""
      , unofficialNames = [ "Stavropolskij Kraj" ]
      }
    , { name = "Sverdlovskaya oblast'"
      , code = ""
      , unofficialNames = [ "Sverdlovskaja Oblast" ]
      }
    , { name = "Tatarstan, Respublika"
      , code = ""
      , unofficialNames = [ "Tatarstan, Respublika" ]
      }
    , { name = "Tambovskaya oblast'"
      , code = ""
      , unofficialNames = [ "Tambovskaja Oblast" ]
      }
    , { name = "Tomskaya oblast'"
      , code = ""
      , unofficialNames = [ "Tomskaja Oblast" ]
      }
    , { name = "Tul'skaya oblast'"
      , code = ""
      , unofficialNames = [ "Tulskaja Oblast" ]
      }
    , { name = "Tverskaya oblast'"
      , code = ""
      , unofficialNames = [ "Tverskaja Oblast" ]
      }
    , { name = "Tyva, Respublika [Tuva]"
      , code = ""
      , unofficialNames = [ "Tuva" ]
      }
    , { name = "Tyumenskaya oblast'"
      , code = ""
      , unofficialNames = [ "Tjumenskaja Oblast", "Tumen", "Tjumen" ]
      }
    , { name = "Udmurtskaya Respublika"
      , code = ""
      , unofficialNames = [ "Udmurt Republic", "Udmurtskaya Respublika", "Udmurtija" ]
      }
    , { name = "Ul'yanovskaya oblast'"
      , code = ""
      , unofficialNames = [ "Uljanovskaja Oblast", "Uljanovsk" ]
      }
    , { name = "Volgogradskaya oblast'"
      , code = ""
      , unofficialNames = [ "Volgogradskaja Oblast" ]
      }
    , { name = "Vladimirskaya oblast'"
      , code = ""
      , unofficialNames = [ "Vladimirskaja Oblast" ]
      }
    , { name = "Vologodskaya oblast'"
      , code = ""
      , unofficialNames = [ "Vologodskaja Oblast" ]
      }
    , { name = "Voronezhskaya oblast'"
      , code = ""
      , unofficialNames = [ "Voronežskaja Oblast", "Voronež" ]
      }
    , { name = "Yamalo-Nenetskiy avtonomnyy okrug"
      , code = ""
      , unofficialNames = [ "Jamalija", "Jamalo-Nenetskij Avtonomnyj Okrug", "Jamalo-Nenets" ]
      }
    , { name = "Yaroslavskaya oblast'"
      , code = ""
      , unofficialNames = [ "Jaroslavskaja Oblast", "Jaroslavl" ]
      }
    , { name = "Yevreyskaya avtonomnaya oblast'"
      , code = ""
      , unofficialNames = [ "Jevrejskaja Oblast", "Jevrejskaja Respublika", "Jewish Autonomous Oblast", "Yevreyskaya Oblast", "Jevrej" ]
      }
    , { name = "Zabaykal'skij kray"
      , code = ""
      , unofficialNames = [ "Zabajkal'skij kraj", "Zabajkal'skij", "Zabaykal'skij kray" ]
      }
    ]


{-| -}
rwandaSubdivisions : List Subdivision
rwandaSubdivisions =
    [ { name = "Ville de Kigali"
      , code = ""
      , unofficialNames = [ "Ville de Kigali" ]
      }
    , { name = "Est"
      , code = ""
      , unofficialNames = [ "Est" ]
      }
    , { name = "Nord"
      , code = ""
      , unofficialNames = [ "Nord" ]
      }
    , { name = "Ouest"
      , code = ""
      , unofficialNames = [ "Ouest" ]
      }
    , { name = "Sud"
      , code = ""
      , unofficialNames = [ "Sud" ]
      }
    ]


{-| -}
saudiArabiaSubdivisions : List Subdivision
saudiArabiaSubdivisions =
    [ { name = "Ar Riyāḑ"
      , code = ""
      , unofficialNames = [ "ar-Riyad", "ar-Riyād̨", "Riad", "Riyadh", "Riad" ]
      }
    , { name = "Makkah al Mukarramah"
      , code = ""
      , unofficialNames = [ "La Meca", "Mecca" ]
      }
    , { name = "Al Madinah"
      , code = ""
      , unofficialNames = [ "Medina", "Médine", "al-Madinah" ]
      }
    , { name = "Ash Sharqiyah"
      , code = ""
      , unofficialNames = [ "Eastern", "ash-Sharqiyah" ]
      }
    , { name = "Al Qasim"
      , code = ""
      , unofficialNames = [ "Qaseem" ]
      }
    , { name = "Ḩā'il"
      , code = ""
      , unofficialNames = [ "Hail" ]
      }
    , { name = "Tabūk"
      , code = ""
      , unofficialNames = [ "Tabook" ]
      }
    , { name = "Al Ḩudūd ash Shamālīyah"
      , code = ""
      , unofficialNames = [ "Northern", "al-Hudud ash-Shamaliyah" ]
      }
    , { name = "Jāzān"
      , code = ""
      , unofficialNames = [ "Jizan" ]
      }
    , { name = "Najrān"
      , code = ""
      , unofficialNames = [ "Najran" ]
      }
    , { name = "Al Bāḩah"
      , code = ""
      , unofficialNames = [ "Baha" ]
      }
    , { name = "Al Jawf"
      , code = ""
      , unofficialNames = [ "Al-Jouf" ]
      }
    , { name = "'Asīr"
      , code = ""
      , unofficialNames = [ "Aseer" ]
      }
    ]


{-| -}
solomonIslandsSubdivisions : List Subdivision
solomonIslandsSubdivisions =
    [ { name = "Central"
      , code = ""
      , unofficialNames = [ "Central" ]
      }
    , { name = "Choiseul"
      , code = ""
      , unofficialNames = [ "Lauru" ]
      }
    , { name = "Capital Territory (Honiara)"
      , code = ""
      , unofficialNames = [ "Capital Territory (Honiara)" ]
      }
    , { name = "Guadalcanal"
      , code = ""
      , unofficialNames = [ "Guadalcanal" ]
      }
    , { name = "Isabel"
      , code = ""
      , unofficialNames = [ "Isabel" ]
      }
    , { name = "Makira"
      , code = ""
      , unofficialNames = [ "San Cristóbal" ]
      }
    , { name = "Malaita"
      , code = ""
      , unofficialNames = [ "Mala" ]
      }
    , { name = "Rennell and Bellona"
      , code = ""
      , unofficialNames = [ "Rennell and Bellona" ]
      }
    , { name = "Temotu"
      , code = ""
      , unofficialNames = [ "Eastern Islands" ]
      }
    , { name = "Western"
      , code = ""
      , unofficialNames = [ "Western" ]
      }
    ]


{-| -}
seychellesSubdivisions : List Subdivision
seychellesSubdivisions =
    [ { name = "Anse aux Pins"
      , code = ""
      , unofficialNames = [ "Anse aux Pins" ]
      }
    , { name = "Anse Boileau"
      , code = ""
      , unofficialNames = [ "Anse Boileau" ]
      }
    , { name = "Anse Étoile"
      , code = ""
      , unofficialNames = [ "Anse Étoile" ]
      }
    , { name = "Anse Louis"
      , code = ""
      , unofficialNames = [ "Anse Louis" ]
      }
    , { name = "Anse Royale"
      , code = ""
      , unofficialNames = [ "Anse Royale" ]
      }
    , { name = "Baie Lazare"
      , code = ""
      , unofficialNames = [ "Baie Lazare" ]
      }
    , { name = "Baie Sainte Anne"
      , code = ""
      , unofficialNames = [ "Baie Sainte Anne" ]
      }
    , { name = "Beau Vallon"
      , code = ""
      , unofficialNames = [ "Beau Vallon" ]
      }
    , { name = "Bel Air"
      , code = ""
      , unofficialNames = [ "Bel Air" ]
      }
    , { name = "Bel Ombre"
      , code = ""
      , unofficialNames = [ "Bel Ombre" ]
      }
    , { name = "Cascade"
      , code = ""
      , unofficialNames = [ "Cascade" ]
      }
    , { name = "Glacis"
      , code = ""
      , unofficialNames = [ "Glacis" ]
      }
    , { name = "Grand' Anse (Mahé)"
      , code = ""
      , unofficialNames = [ "Grand' Anse (Mahé)" ]
      }
    , { name = "Grand' Anse (Praslin)"
      , code = ""
      , unofficialNames = [ "Grand' Anse (Praslin)" ]
      }
    , { name = "La Digue"
      , code = ""
      , unofficialNames = [ "La Digue" ]
      }
    , { name = "La Rivière Anglaise"
      , code = ""
      , unofficialNames = [ "La Rivière Anglaise" ]
      }
    , { name = "Mont Buxton"
      , code = ""
      , unofficialNames = [ "Mont Buxton" ]
      }
    , { name = "Mont Fleuri"
      , code = ""
      , unofficialNames = [ "Mont Fleuri" ]
      }
    , { name = "Plaisance"
      , code = ""
      , unofficialNames = [ "Plaisance" ]
      }
    , { name = "Pointe La Rue"
      , code = ""
      , unofficialNames = [ "Pointe La Rue" ]
      }
    , { name = "Port Glaud"
      , code = ""
      , unofficialNames = [ "Port Glaud" ]
      }
    , { name = "Saint Louis"
      , code = ""
      , unofficialNames = [ "Saint Louis" ]
      }
    , { name = "Takamaka"
      , code = ""
      , unofficialNames = [ "Takamaka" ]
      }
    ]


{-| -}
sudanSubdivisions : List Subdivision
sudanSubdivisions =
    [ { name = "Al Baḩr al Aḩmar"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Al Jazīrah"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Al Kharţūm"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Al Qaḑārif"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Nahr an Nīl"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "An Nīl al Abyaḑ"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "An Nīl al Azraq"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Ash Shamālīyah"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Gharb Dārfūr"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Gharb Kurdufān"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Janūb Dārfūr"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Janūb Kurdufān"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Kassalā"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Shamāl Dārfūr"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Shiamāl Kurdufān"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Sharq Dārfūr"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Sinnār"
      , code = ""
      , unofficialNames = [ "" ]
      }
    , { name = "Wasaţ Dārfūr Zālinjay"
      , code = ""
      , unofficialNames = [ "" ]
      }
    ]


{-| -}
swedenSubdivisions : List Subdivision
swedenSubdivisions =
    [ { name = "Stockholms län"
      , code = ""
      , unofficialNames = [ "Stockholms län" ]
      }
    , { name = "Västerbottens län"
      , code = ""
      , unofficialNames = [ "Västerbottens län" ]
      }
    , { name = "Norrbottens län"
      , code = ""
      , unofficialNames = [ "Norrbottens län" ]
      }
    , { name = "Uppsala län"
      , code = ""
      , unofficialNames = [ "Uppsala län" ]
      }
    , { name = "Södermanlands län"
      , code = ""
      , unofficialNames = [ "Södermanlands län" ]
      }
    , { name = "Östergötlands län"
      , code = ""
      , unofficialNames = [ "Östergötlands län" ]
      }
    , { name = "Jönköpings län"
      , code = ""
      , unofficialNames = [ "Jönköpings län" ]
      }
    , { name = "Kronobergs län"
      , code = ""
      , unofficialNames = [ "Kronobergs län" ]
      }
    , { name = "Kalmar län"
      , code = ""
      , unofficialNames = [ "Calmar" ]
      }
    , { name = "Gotlands län"
      , code = ""
      , unofficialNames = [ "Gotlands län" ]
      }
    , { name = "Blekinge län"
      , code = ""
      , unofficialNames = [ "Blekinge län" ]
      }
    , { name = "Skåne län"
      , code = ""
      , unofficialNames = [ "Scania" ]
      }
    , { name = "Hallands län"
      , code = ""
      , unofficialNames = [ "Hallands län" ]
      }
    , { name = "Västra Götalands län"
      , code = ""
      , unofficialNames = [ "Västra Götalands län" ]
      }
    , { name = "Värmlands län"
      , code = ""
      , unofficialNames = [ "Värmlands län" ]
      }
    , { name = "Örebro län"
      , code = ""
      , unofficialNames = [ "Örebro län" ]
      }
    , { name = "Västmanlands län"
      , code = ""
      , unofficialNames = [ "Västmanlands län" ]
      }
    , { name = "Dalarnas län"
      , code = ""
      , unofficialNames = [ "Dalarnas", "Dalecarlia", "Kopparberg" ]
      }
    , { name = "Gävleborgs län"
      , code = ""
      , unofficialNames = [ "Gävleborgs län" ]
      }
    , { name = "Västernorrlands län"
      , code = ""
      , unofficialNames = [ "Västernorrlands län" ]
      }
    , { name = "Jämtlands län"
      , code = ""
      , unofficialNames = [ "Jämtlands län" ]
      }
    ]


{-| -}
singaporeSubdivisions : List Subdivision
singaporeSubdivisions =
    [ { name = "Central Singapore"
      , code = ""
      , unofficialNames = [ "Central Singapore" ]
      }
    , { name = "North East"
      , code = ""
      , unofficialNames = [ "North East" ]
      }
    , { name = "North West"
      , code = ""
      , unofficialNames = [ "North West" ]
      }
    , { name = "South East"
      , code = ""
      , unofficialNames = [ "South East" ]
      }
    , { name = "South West"
      , code = ""
      , unofficialNames = [ "South West" ]
      }
    ]


{-| -}
saintHelenaAscensionAndTristanDaCunhaSubdivisions : List Subdivision
saintHelenaAscensionAndTristanDaCunhaSubdivisions =
    [ { name = "Ascension"
      , code = ""
      , unofficialNames = [ "Ascension" ]
      }
    , { name = "Saint Helena"
      , code = ""
      , unofficialNames = [ "Saint Helena" ]
      }
    , { name = "Tristan da Cunha"
      , code = ""
      , unofficialNames = [ "Tristan da Cunha" ]
      }
    ]


{-| -}
sloveniaSubdivisions : List Subdivision
sloveniaSubdivisions =
    [ { name = "Ajdovšcina"
      , code = ""
      , unofficialNames = [ "Ajdovšcina" ]
      }
    , { name = "Beltinci"
      , code = ""
      , unofficialNames = [ "Beltinci" ]
      }
    , { name = "Bled"
      , code = ""
      , unofficialNames = [ "Bled" ]
      }
    , { name = "Bohinj"
      , code = ""
      , unofficialNames = [ "Bohinj" ]
      }
    , { name = "Borovnica"
      , code = ""
      , unofficialNames = [ "Borovnica" ]
      }
    , { name = "Bovec"
      , code = ""
      , unofficialNames = [ "Bovec" ]
      }
    , { name = "Brda"
      , code = ""
      , unofficialNames = [ "Brda" ]
      }
    , { name = "Brezovica"
      , code = ""
      , unofficialNames = [ "Brezovica" ]
      }
    , { name = "Brežice"
      , code = ""
      , unofficialNames = [ "Brežice" ]
      }
    , { name = "Tišina"
      , code = ""
      , unofficialNames = [ "Tišina" ]
      }
    , { name = "Celje"
      , code = ""
      , unofficialNames = [ "Celje" ]
      }
    , { name = "Cerklje na Gorenjskem"
      , code = ""
      , unofficialNames = [ "Cerklje na Gorenjskem" ]
      }
    , { name = "Cerknica"
      , code = ""
      , unofficialNames = [ "Cerknica" ]
      }
    , { name = "Cerkno"
      , code = ""
      , unofficialNames = [ "Cerkno" ]
      }
    , { name = "Crenšovci"
      , code = ""
      , unofficialNames = [ "Crenšovci" ]
      }
    , { name = "Crna na Koroškem"
      , code = ""
      , unofficialNames = [ "Crna na Koroškem" ]
      }
    , { name = "Crnomelj"
      , code = ""
      , unofficialNames = [ "Crnomelj" ]
      }
    , { name = "Destrnik"
      , code = ""
      , unofficialNames = [ "Destrnik" ]
      }
    , { name = "Divaca"
      , code = ""
      , unofficialNames = [ "Divaca" ]
      }
    , { name = "Dobrepolje"
      , code = ""
      , unofficialNames = [ "Dobrepolje" ]
      }
    , { name = "Dobrova-Polhov Gradec"
      , code = ""
      , unofficialNames = [ "Dobrova-Polhov Gradec" ]
      }
    , { name = "Dol pri Ljubljani"
      , code = ""
      , unofficialNames = [ "Dol pri Ljubljani" ]
      }
    , { name = "Domžale"
      , code = ""
      , unofficialNames = [ "Domžale" ]
      }
    , { name = "Dornava"
      , code = ""
      , unofficialNames = [ "Dornava" ]
      }
    , { name = "Dravograd"
      , code = ""
      , unofficialNames = [ "Dravograd" ]
      }
    , { name = "Duplek"
      , code = ""
      , unofficialNames = [ "Duplek" ]
      }
    , { name = "Gorenja vas-Poljane"
      , code = ""
      , unofficialNames = [ "Gorenja vas-Poljane" ]
      }
    , { name = "Gorišnica"
      , code = ""
      , unofficialNames = [ "Gorišnica" ]
      }
    , { name = "Gornja Radgona"
      , code = ""
      , unofficialNames = [ "Gornja Radgona" ]
      }
    , { name = "Gornji Grad"
      , code = ""
      , unofficialNames = [ "Gornji Grad" ]
      }
    , { name = "Gornji Petrovci"
      , code = ""
      , unofficialNames = [ "Gornji Petrovci" ]
      }
    , { name = "Grosuplje"
      , code = ""
      , unofficialNames = [ "Grosuplje" ]
      }
    , { name = "Šalovci"
      , code = ""
      , unofficialNames = [ "Šalovci" ]
      }
    , { name = "Hrastnik"
      , code = ""
      , unofficialNames = [ "Hrastnik" ]
      }
    , { name = "Hrpelje-Kozina"
      , code = ""
      , unofficialNames = [ "Hrpelje-Kozina" ]
      }
    , { name = "Idrija"
      , code = ""
      , unofficialNames = [ "Idrija" ]
      }
    , { name = "Ig"
      , code = ""
      , unofficialNames = [ "Ig" ]
      }
    , { name = "Ilirska Bistrica"
      , code = ""
      , unofficialNames = [ "Ilirska Bistrica" ]
      }
    , { name = "Ivancna Gorica"
      , code = ""
      , unofficialNames = [ "Ivancna Gorica" ]
      }
    , { name = "Izola/Isola"
      , code = ""
      , unofficialNames = [ "Izola/Isola" ]
      }
    , { name = "Jesenice"
      , code = ""
      , unofficialNames = [ "Jesenice" ]
      }
    , { name = "Juršinci"
      , code = ""
      , unofficialNames = [ "Juršinci" ]
      }
    , { name = "Kamnik"
      , code = ""
      , unofficialNames = [ "Kamnik" ]
      }
    , { name = "Kanal"
      , code = ""
      , unofficialNames = [ "Kanal" ]
      }
    , { name = "Kidricevo"
      , code = ""
      , unofficialNames = [ "Kidricevo" ]
      }
    , { name = "Kobarid"
      , code = ""
      , unofficialNames = [ "Kobarid" ]
      }
    , { name = "Kobilje"
      , code = ""
      , unofficialNames = [ "Kobilje" ]
      }
    , { name = "Kocevje"
      , code = ""
      , unofficialNames = [ "Kocevje" ]
      }
    , { name = "Komen"
      , code = ""
      , unofficialNames = [ "Komen" ]
      }
    , { name = "Koper/Capodistria"
      , code = ""
      , unofficialNames = [ "Koper/Capodistria" ]
      }
    , { name = "Kozje"
      , code = ""
      , unofficialNames = [ "Kozje" ]
      }
    , { name = "Kranj"
      , code = ""
      , unofficialNames = [ "Kranj" ]
      }
    , { name = "Kranjska Gora"
      , code = ""
      , unofficialNames = [ "Kranjska Gora" ]
      }
    , { name = "Krško"
      , code = ""
      , unofficialNames = [ "Krško" ]
      }
    , { name = "Kungota"
      , code = ""
      , unofficialNames = [ "Kungota" ]
      }
    , { name = "Kuzma"
      , code = ""
      , unofficialNames = [ "Kuzma" ]
      }
    , { name = "Laško"
      , code = ""
      , unofficialNames = [ "Laško" ]
      }
    , { name = "Lenart"
      , code = ""
      , unofficialNames = [ "Lenart" ]
      }
    , { name = "Lendava/Lendva"
      , code = ""
      , unofficialNames = [ "Lendava/Lendva" ]
      }
    , { name = "Litija"
      , code = ""
      , unofficialNames = [ "Litija" ]
      }
    , { name = "Ljubljana"
      , code = ""
      , unofficialNames = [ "Ljubljana" ]
      }
    , { name = "Ljubno"
      , code = ""
      , unofficialNames = [ "Ljubno" ]
      }
    , { name = "Ljutomer"
      , code = ""
      , unofficialNames = [ "Ljutomer" ]
      }
    , { name = "Logatec"
      , code = ""
      , unofficialNames = [ "Logatec" ]
      }
    , { name = "Loška dolina"
      , code = ""
      , unofficialNames = [ "Loška dolina" ]
      }
    , { name = "Loški Potok"
      , code = ""
      , unofficialNames = [ "Loški Potok" ]
      }
    , { name = "Luce"
      , code = ""
      , unofficialNames = [ "Luce" ]
      }
    , { name = "Lukovica"
      , code = ""
      , unofficialNames = [ "Lukovica" ]
      }
    , { name = "Majšperk"
      , code = ""
      , unofficialNames = [ "Majšperk" ]
      }
    , { name = "Maribor"
      , code = ""
      , unofficialNames = [ "Maribor" ]
      }
    , { name = "Medvode"
      , code = ""
      , unofficialNames = [ "Medvode" ]
      }
    , { name = "Mengeš"
      , code = ""
      , unofficialNames = [ "Mengeš" ]
      }
    , { name = "Metlika"
      , code = ""
      , unofficialNames = [ "Metlika" ]
      }
    , { name = "Mežica"
      , code = ""
      , unofficialNames = [ "Mežica" ]
      }
    , { name = "Miren-Kostanjevica"
      , code = ""
      , unofficialNames = [ "Miren-Kostanjevica" ]
      }
    , { name = "Mislinja"
      , code = ""
      , unofficialNames = [ "Mislinja" ]
      }
    , { name = "Moravce"
      , code = ""
      , unofficialNames = [ "Moravce" ]
      }
    , { name = "Moravske Toplice"
      , code = ""
      , unofficialNames = [ "Moravske Toplice" ]
      }
    , { name = "Mozirje"
      , code = ""
      , unofficialNames = [ "Mozirje" ]
      }
    , { name = "Murska Sobota"
      , code = ""
      , unofficialNames = [ "Murska Sobota" ]
      }
    , { name = "Muta"
      , code = ""
      , unofficialNames = [ "Muta" ]
      }
    , { name = "Naklo"
      , code = ""
      , unofficialNames = [ "Naklo" ]
      }
    , { name = "Nazarje"
      , code = ""
      , unofficialNames = [ "Nazarje" ]
      }
    , { name = "Nova Gorica"
      , code = ""
      , unofficialNames = [ "Nova Gorica" ]
      }
    , { name = "Novo mesto"
      , code = ""
      , unofficialNames = [ "Novo mesto" ]
      }
    , { name = "Odranci"
      , code = ""
      , unofficialNames = [ "Odranci" ]
      }
    , { name = "Ormož"
      , code = ""
      , unofficialNames = [ "Ormož" ]
      }
    , { name = "Osilnica"
      , code = ""
      , unofficialNames = [ "Osilnica" ]
      }
    , { name = "Pesnica"
      , code = ""
      , unofficialNames = [ "Pesnica" ]
      }
    , { name = "Piran/Pirano"
      , code = ""
      , unofficialNames = [ "Piran/Pirano" ]
      }
    , { name = "Pivka"
      , code = ""
      , unofficialNames = [ "Pivka" ]
      }
    , { name = "Podcetrtek"
      , code = ""
      , unofficialNames = [ "Podcetrtek" ]
      }
    , { name = "Podvelka"
      , code = ""
      , unofficialNames = [ "Podvelka" ]
      }
    , { name = "Postojna"
      , code = ""
      , unofficialNames = [ "Postojna" ]
      }
    , { name = "Preddvor"
      , code = ""
      , unofficialNames = [ "Preddvor" ]
      }
    , { name = "Ptuj"
      , code = ""
      , unofficialNames = [ "Ptuj" ]
      }
    , { name = "Puconci"
      , code = ""
      , unofficialNames = [ "Puconci" ]
      }
    , { name = "Race-Fram"
      , code = ""
      , unofficialNames = [ "Race-Fram" ]
      }
    , { name = "Radece"
      , code = ""
      , unofficialNames = [ "Radece" ]
      }
    , { name = "Radenci"
      , code = ""
      , unofficialNames = [ "Radenci" ]
      }
    , { name = "Radlje ob Dravi"
      , code = ""
      , unofficialNames = [ "Radlje ob Dravi" ]
      }
    , { name = "Radovljica"
      , code = ""
      , unofficialNames = [ "Radovljica" ]
      }
    , { name = "Ravne na Koroškem"
      , code = ""
      , unofficialNames = [ "Ravne na Koroškem" ]
      }
    , { name = "Ribnica"
      , code = ""
      , unofficialNames = [ "Ribnica" ]
      }
    , { name = "Rogašovci"
      , code = ""
      , unofficialNames = [ "Rogašovci" ]
      }
    , { name = "Rogaška Slatina"
      , code = ""
      , unofficialNames = [ "Rogaška Slatina" ]
      }
    , { name = "Rogatec"
      , code = ""
      , unofficialNames = [ "Rogatec" ]
      }
    , { name = "Ruše"
      , code = ""
      , unofficialNames = [ "Ruše" ]
      }
    , { name = "Semic"
      , code = ""
      , unofficialNames = [ "Semic" ]
      }
    , { name = "Sevnica"
      , code = ""
      , unofficialNames = [ "Sevnica" ]
      }
    , { name = "Sežana"
      , code = ""
      , unofficialNames = [ "Sežana" ]
      }
    , { name = "Slovenj Gradec"
      , code = ""
      , unofficialNames = [ "Slovenj Gradec" ]
      }
    , { name = "Slovenska Bistrica"
      , code = ""
      , unofficialNames = [ "Slovenska Bistrica" ]
      }
    , { name = "Slovenske Konjice"
      , code = ""
      , unofficialNames = [ "Slovenske Konjice" ]
      }
    , { name = "Starše"
      , code = ""
      , unofficialNames = [ "Starše" ]
      }
    , { name = "Sveti Jurij"
      , code = ""
      , unofficialNames = [ "Sveti Jurij" ]
      }
    , { name = "Šencur"
      , code = ""
      , unofficialNames = [ "Šencur" ]
      }
    , { name = "Šentilj"
      , code = ""
      , unofficialNames = [ "Šentilj" ]
      }
    , { name = "Šentjernej"
      , code = ""
      , unofficialNames = [ "Šentjernej" ]
      }
    , { name = "Šentjur pri Celju"
      , code = ""
      , unofficialNames = [ "Šentjur pri Celju" ]
      }
    , { name = "Škocjan"
      , code = ""
      , unofficialNames = [ "Škocjan" ]
      }
    , { name = "Škofja Loka"
      , code = ""
      , unofficialNames = [ "Škofja Loka" ]
      }
    , { name = "Škofljica"
      , code = ""
      , unofficialNames = [ "Škofljica" ]
      }
    , { name = "Šmarje pri Jelšah"
      , code = ""
      , unofficialNames = [ "Šmarje pri Jelšah" ]
      }
    , { name = "Šmartno ob Paki"
      , code = ""
      , unofficialNames = [ "Šmartno ob Paki" ]
      }
    , { name = "Šoštanj"
      , code = ""
      , unofficialNames = [ "Šoštanj" ]
      }
    , { name = "Štore"
      , code = ""
      , unofficialNames = [ "Štore" ]
      }
    , { name = "Tolmin"
      , code = ""
      , unofficialNames = [ "Tolmin" ]
      }
    , { name = "Trbovlje"
      , code = ""
      , unofficialNames = [ "Trbovlje" ]
      }
    , { name = "Trebnje"
      , code = ""
      , unofficialNames = [ "Trebnje" ]
      }
    , { name = "Tržic"
      , code = ""
      , unofficialNames = [ "Tržic" ]
      }
    , { name = "Turnišce"
      , code = ""
      , unofficialNames = [ "Turnišce" ]
      }
    , { name = "Velenje"
      , code = ""
      , unofficialNames = [ "Velenje" ]
      }
    , { name = "Velike Lašce"
      , code = ""
      , unofficialNames = [ "Velike Lašce" ]
      }
    , { name = "Videm"
      , code = ""
      , unofficialNames = [ "Videm" ]
      }
    , { name = "Vipava"
      , code = ""
      , unofficialNames = [ "Vipava" ]
      }
    , { name = "Vitanje"
      , code = ""
      , unofficialNames = [ "Vitanje" ]
      }
    , { name = "Vodice"
      , code = ""
      , unofficialNames = [ "Vodice" ]
      }
    , { name = "Vojnik"
      , code = ""
      , unofficialNames = [ "Vojnik" ]
      }
    , { name = "Vrhnika"
      , code = ""
      , unofficialNames = [ "Vrhnika" ]
      }
    , { name = "Vuzenica"
      , code = ""
      , unofficialNames = [ "Vuzenica" ]
      }
    , { name = "Zagorje ob Savi"
      , code = ""
      , unofficialNames = [ "Zagorje ob Savi" ]
      }
    , { name = "Zavrc"
      , code = ""
      , unofficialNames = [ "Zavrc" ]
      }
    , { name = "Zrece"
      , code = ""
      , unofficialNames = [ "Zrece" ]
      }
    , { name = "Železniki"
      , code = ""
      , unofficialNames = [ "Železniki" ]
      }
    , { name = "Žiri"
      , code = ""
      , unofficialNames = [ "Žiri" ]
      }
    , { name = "Benedikt"
      , code = ""
      , unofficialNames = [ "Benedikt" ]
      }
    , { name = "Bistrica ob Sotli"
      , code = ""
      , unofficialNames = [ "Bistrica ob Sotli" ]
      }
    , { name = "Bloke"
      , code = ""
      , unofficialNames = [ "Bloke" ]
      }
    , { name = "Braslovce"
      , code = ""
      , unofficialNames = [ "Braslovce" ]
      }
    , { name = "Cankova"
      , code = ""
      , unofficialNames = [ "Cankova" ]
      }
    , { name = "Cerkvenjak"
      , code = ""
      , unofficialNames = [ "Cerkvenjak" ]
      }
    , { name = "Dobje"
      , code = ""
      , unofficialNames = [ "Dobje" ]
      }
    , { name = "Dobrna"
      , code = ""
      , unofficialNames = [ "Dobrna" ]
      }
    , { name = "Dobrovnik/Dobronak"
      , code = ""
      , unofficialNames = [ "Dobrovnik/Dobronak" ]
      }
    , { name = "Dolenjske Toplice"
      , code = ""
      , unofficialNames = [ "Dolenjske Toplice" ]
      }
    , { name = "Grad"
      , code = ""
      , unofficialNames = [ "Grad" ]
      }
    , { name = "Hajdina"
      , code = ""
      , unofficialNames = [ "Hajdina" ]
      }
    , { name = "Hoce-Slivnica"
      , code = ""
      , unofficialNames = [ "Hoce-Slivnica" ]
      }
    , { name = "Hodoš/Hodos"
      , code = ""
      , unofficialNames = [ "Hodoš/Hodos" ]
      }
    , { name = "Horjul"
      , code = ""
      , unofficialNames = [ "Horjul" ]
      }
    , { name = "Jezersko"
      , code = ""
      , unofficialNames = [ "Jezersko" ]
      }
    , { name = "Komenda"
      , code = ""
      , unofficialNames = [ "Komenda" ]
      }
    , { name = "Kostel"
      , code = ""
      , unofficialNames = [ "Kostel" ]
      }
    , { name = "Križevci"
      , code = ""
      , unofficialNames = [ "Križevci" ]
      }
    , { name = "Lovrenc na Pohorju"
      , code = ""
      , unofficialNames = [ "Lovrenc na Pohorju" ]
      }
    , { name = "Markovci"
      , code = ""
      , unofficialNames = [ "Markovci" ]
      }
    , { name = "Miklavž na Dravskem polju"
      , code = ""
      , unofficialNames = [ "Miklavž na Dravskem polju" ]
      }
    , { name = "Mirna Pec"
      , code = ""
      , unofficialNames = [ "Mirna Pec" ]
      }
    , { name = "Oplotnica"
      , code = ""
      , unofficialNames = [ "Oplotnica" ]
      }
    , { name = "Podlehnik"
      , code = ""
      , unofficialNames = [ "Podlehnik" ]
      }
    , { name = "Polzela"
      , code = ""
      , unofficialNames = [ "Polzela" ]
      }
    , { name = "Prebold"
      , code = ""
      , unofficialNames = [ "Prebold" ]
      }
    , { name = "Prevalje"
      , code = ""
      , unofficialNames = [ "Prevalje" ]
      }
    , { name = "Razkrižje"
      , code = ""
      , unofficialNames = [ "Razkrižje" ]
      }
    , { name = "Ribnica na Pohorju"
      , code = ""
      , unofficialNames = [ "Ribnica na Pohorju" ]
      }
    , { name = "Selnica ob Dravi"
      , code = ""
      , unofficialNames = [ "Selnica ob Dravi" ]
      }
    , { name = "Sodražica"
      , code = ""
      , unofficialNames = [ "Sodražica" ]
      }
    , { name = "Solcava"
      , code = ""
      , unofficialNames = [ "Solcava" ]
      }
    , { name = "Sveta Ana"
      , code = ""
      , unofficialNames = [ "Sveta Ana" ]
      }
    , { name = "Sveti Andraž v Slovenskih goricah"
      , code = ""
      , unofficialNames = [ "Sveti Andraž v Slovenskih goricah" ]
      }
    , { name = "Šempeter-Vrtojba"
      , code = ""
      , unofficialNames = [ "Šempeter-Vrtojba" ]
      }
    , { name = "Tabor"
      , code = ""
      , unofficialNames = [ "Tabor" ]
      }
    , { name = "Trnovska vas"
      , code = ""
      , unofficialNames = [ "Trnovska vas" ]
      }
    , { name = "Trzin"
      , code = ""
      , unofficialNames = [ "Trzin" ]
      }
    , { name = "Velika Polana"
      , code = ""
      , unofficialNames = [ "Velika Polana" ]
      }
    , { name = "Veržej"
      , code = ""
      , unofficialNames = [ "Veržej" ]
      }
    , { name = "Vransko"
      , code = ""
      , unofficialNames = [ "Vransko" ]
      }
    , { name = "Žalec"
      , code = ""
      , unofficialNames = [ "Žalec" ]
      }
    , { name = "Žetale"
      , code = ""
      , unofficialNames = [ "Žetale" ]
      }
    , { name = "Žirovnica"
      , code = ""
      , unofficialNames = [ "Žirovnica" ]
      }
    , { name = "Žužemberk"
      , code = ""
      , unofficialNames = [ "Žužemberk" ]
      }
    , { name = "Šmartno pri Litiji"
      , code = ""
      , unofficialNames = [ "Šmartno pri Litiji" ]
      }
    ]


{-| -}
svalbardAndJanMayenSubdivisions : List Subdivision
svalbardAndJanMayenSubdivisions =
    [ { name = "Svalbard"
      , code = ""
      , unofficialNames = [ "Svalbard" ]
      }
    , { name = "Jan Mayen"
      , code = ""
      , unofficialNames = [ "Jan Mayen" ]
      }
    ]


{-| -}
slovakiaSubdivisions : List Subdivision
slovakiaSubdivisions =
    [ { name = "Banskobystrický kraj"
      , code = ""
      , unofficialNames = [ "Banskobystrický kraj" ]
      }
    , { name = "Bratislavský kraj"
      , code = ""
      , unofficialNames = [ "Bratislavský kraj" ]
      }
    , { name = "Košický kraj"
      , code = ""
      , unofficialNames = [ "Košický kraj" ]
      }
    , { name = "Nitriansky kraj"
      , code = ""
      , unofficialNames = [ "Nitriansky kraj" ]
      }
    , { name = "Prešovský kraj"
      , code = ""
      , unofficialNames = [ "Prešovský kraj" ]
      }
    , { name = "Trnavský kraj"
      , code = ""
      , unofficialNames = [ "Trnavský kraj" ]
      }
    , { name = "Trenciansky kraj"
      , code = ""
      , unofficialNames = [ "Trenciansky kraj" ]
      }
    , { name = "Žilinský kraj"
      , code = ""
      , unofficialNames = [ "Žilinský kraj" ]
      }
    ]


{-| -}
sierraLeoneSubdivisions : List Subdivision
sierraLeoneSubdivisions =
    [ { name = "Eastern"
      , code = ""
      , unofficialNames = [ "Eastern" ]
      }
    , { name = "Northern"
      , code = ""
      , unofficialNames = [ "Northern" ]
      }
    , { name = "Southern"
      , code = ""
      , unofficialNames = [ "Southern" ]
      }
    , { name = "Western Area (Freetown)"
      , code = ""
      , unofficialNames = [ "Western Area (Freetown)" ]
      }
    ]


{-| -}
sanMarinoSubdivisions : List Subdivision
sanMarinoSubdivisions =
    [ { name = "Acquaviva"
      , code = ""
      , unofficialNames = [ "Acquaviva" ]
      }
    , { name = "Chiesanuova"
      , code = ""
      , unofficialNames = [ "Poggio di Chiesanuova" ]
      }
    , { name = "Domagnano"
      , code = ""
      , unofficialNames = [ "Domagnano" ]
      }
    , { name = "Faetano"
      , code = ""
      , unofficialNames = [ "Faetano" ]
      }
    , { name = "Fiorentino"
      , code = ""
      , unofficialNames = [ "Fiorentino" ]
      }
    , { name = "Borgo Maggiore"
      , code = ""
      , unofficialNames = [ "Borgo Maggiore" ]
      }
    , { name = "San Marino"
      , code = ""
      , unofficialNames = [ "Saint Marin" ]
      }
    , { name = "Montegiardino"
      , code = ""
      , unofficialNames = [ "Montegiardino" ]
      }
    , { name = "Serravalle"
      , code = ""
      , unofficialNames = [ "Serravalle" ]
      }
    ]


{-| -}
senegalSubdivisions : List Subdivision
senegalSubdivisions =
    [ { name = "Diourbel"
      , code = ""
      , unofficialNames = [ "Diourbel" ]
      }
    , { name = "Dakar"
      , code = ""
      , unofficialNames = [ "Dakar" ]
      }
    , { name = "Fatick"
      , code = ""
      , unofficialNames = [ "Fatick" ]
      }
    , { name = "Kolda"
      , code = ""
      , unofficialNames = [ "Kolda" ]
      }
    , { name = "Kaolack"
      , code = ""
      , unofficialNames = [ "Kaolack" ]
      }
    , { name = "Louga"
      , code = ""
      , unofficialNames = [ "Louga" ]
      }
    , { name = "Matam"
      , code = ""
      , unofficialNames = [ "Matam" ]
      }
    , { name = "Saint-Louis"
      , code = ""
      , unofficialNames = [ "Saint-Louis" ]
      }
    , { name = "Tambacounda"
      , code = ""
      , unofficialNames = [ "Tambacounda" ]
      }
    , { name = "Thiès"
      , code = ""
      , unofficialNames = [ "Thiès" ]
      }
    , { name = "Ziguinchor"
      , code = ""
      , unofficialNames = [ "Ziguinchor" ]
      }
    ]


{-| -}
somaliaSubdivisions : List Subdivision
somaliaSubdivisions =
    [ { name = "Awdal"
      , code = ""
      , unofficialNames = [ "Awdal" ]
      }
    , { name = "Bakool"
      , code = ""
      , unofficialNames = [ "Bakool" ]
      }
    , { name = "Banaadir"
      , code = ""
      , unofficialNames = [ "Banaadir" ]
      }
    , { name = "Bari"
      , code = ""
      , unofficialNames = [ "Bari" ]
      }
    , { name = "Bay"
      , code = ""
      , unofficialNames = [ "Bay" ]
      }
    , { name = "Galguduud"
      , code = ""
      , unofficialNames = [ "Galguduud" ]
      }
    , { name = "Gedo"
      , code = ""
      , unofficialNames = [ "Gedo" ]
      }
    , { name = "Hiiraan"
      , code = ""
      , unofficialNames = [ "Hiiraan" ]
      }
    , { name = "Jubbada Dhexe"
      , code = ""
      , unofficialNames = [ "Jubbada Dhexe" ]
      }
    , { name = "Jubbada Hoose"
      , code = ""
      , unofficialNames = [ "Jubbada Hoose" ]
      }
    , { name = "Mudug"
      , code = ""
      , unofficialNames = [ "Mudug" ]
      }
    , { name = "Nugaal"
      , code = ""
      , unofficialNames = [ "Nugaal" ]
      }
    , { name = "Sanaag"
      , code = ""
      , unofficialNames = [ "Sanaag" ]
      }
    , { name = "Shabeellaha Dhexe"
      , code = ""
      , unofficialNames = [ "Shabeellaha Dhexe" ]
      }
    , { name = "Shabeellaha Hoose"
      , code = ""
      , unofficialNames = [ "Shabeellaha Hoose" ]
      }
    , { name = "Sool"
      , code = ""
      , unofficialNames = [ "Sool" ]
      }
    , { name = "Togdheer"
      , code = ""
      , unofficialNames = [ "Togdheer" ]
      }
    , { name = "Woqooyi Galbeed"
      , code = ""
      , unofficialNames = [ "Woqooyi Galbeed" ]
      }
    ]


{-| -}
surinameSubdivisions : List Subdivision
surinameSubdivisions =
    [ { name = "Brokopondo"
      , code = ""
      , unofficialNames = [ "Brokopondo" ]
      }
    , { name = "Commewijne"
      , code = ""
      , unofficialNames = [ "Commewijne" ]
      }
    , { name = "Coronie"
      , code = ""
      , unofficialNames = [ "Coronie" ]
      }
    , { name = "Marowijne"
      , code = ""
      , unofficialNames = [ "Marowijne" ]
      }
    , { name = "Nickerie"
      , code = ""
      , unofficialNames = [ "Nickerie" ]
      }
    , { name = "Paramaribo"
      , code = ""
      , unofficialNames = [ "Paramaribo" ]
      }
    , { name = "Para"
      , code = ""
      , unofficialNames = [ "Para" ]
      }
    , { name = "Saramacca"
      , code = ""
      , unofficialNames = [ "Saramacca" ]
      }
    , { name = "Sipaliwini"
      , code = ""
      , unofficialNames = [ "Sipaliwini" ]
      }
    , { name = "Wanica"
      , code = ""
      , unofficialNames = [ "Wanica" ]
      }
    ]


{-| -}
southSudanSubdivisions : List Subdivision
southSudanSubdivisions =
    []


{-| -}
saoTomeAndPrincipeSubdivisions : List Subdivision
saoTomeAndPrincipeSubdivisions =
    [ { name = "Príncipe"
      , code = ""
      , unofficialNames = [ "Príncipe" ]
      }
    , { name = "São Tomé"
      , code = ""
      , unofficialNames = [ "São Tomé" ]
      }
    ]


{-| -}
elSalvadorSubdivisions : List Subdivision
elSalvadorSubdivisions =
    [ { name = "Ahuachapán"
      , code = ""
      , unofficialNames = [ "Ahuachapán" ]
      }
    , { name = "Cabañas"
      , code = ""
      , unofficialNames = [ "Cabañas" ]
      }
    , { name = "Chalatenango"
      , code = ""
      , unofficialNames = [ "Chalatenango" ]
      }
    , { name = "Cuscatlán"
      , code = ""
      , unofficialNames = [ "Cuscatlán" ]
      }
    , { name = "La Libertad"
      , code = ""
      , unofficialNames = [ "La Libertad" ]
      }
    , { name = "Morazán"
      , code = ""
      , unofficialNames = [ "Morazán" ]
      }
    , { name = "La Paz"
      , code = ""
      , unofficialNames = [ "La Paz" ]
      }
    , { name = "Santa Ana"
      , code = ""
      , unofficialNames = [ "Santa Ana" ]
      }
    , { name = "San Miguel"
      , code = ""
      , unofficialNames = [ "San Miguel" ]
      }
    , { name = "Sonsonate"
      , code = ""
      , unofficialNames = [ "Sonsonate" ]
      }
    , { name = "San Salvador"
      , code = ""
      , unofficialNames = [ "San Salvador" ]
      }
    , { name = "San Vicente"
      , code = ""
      , unofficialNames = [ "San Vicente" ]
      }
    , { name = "La Unión"
      , code = ""
      , unofficialNames = [ "La Unión" ]
      }
    , { name = "Usulután"
      , code = ""
      , unofficialNames = [ "Usulután" ]
      }
    ]


{-| -}
sintMaartenDutchPartSubdivisions : List Subdivision
sintMaartenDutchPartSubdivisions =
    []


{-| -}
syrianArabRepublicSubdivisions : List Subdivision
syrianArabRepublicSubdivisions =
    [ { name = "Dimashq"
      , code = ""
      , unofficialNames = [ "Dimashq", "Madīnat Dimašq", "Damaskus", "Damas" ]
      }
    , { name = "Dar'ā"
      , code = ""
      , unofficialNames = [ "Dara", "Darā", "Darʿa", "Deraa", "Dārayyā" ]
      }
    , { name = "Dayr az Zawr"
      , code = ""
      , unofficialNames = [ "Deir El-Zor", "Deir-ez-Zor" ]
      }
    , { name = "Al Ḩasakah"
      , code = ""
      , unofficialNames = [ "El Haseke", "Hassetche", "H̨asakah", "al-Hasakah" ]
      }
    , { name = "Ḩimş"
      , code = ""
      , unofficialNames = [ "Hims", "Homs" ]
      }
    , { name = "Ḩalab"
      , code = ""
      , unofficialNames = [ "Halab", "Haleb", "H̨alab", "Alep" ]
      }
    , { name = "Ḩamāh"
      , code = ""
      , unofficialNames = [ "Hama", "Hamah" ]
      }
    , { name = "Idlib"
      , code = ""
      , unofficialNames = [ "Idlib" ]
      }
    , { name = "Al Ladhiqiyah"
      , code = ""
      , unofficialNames = [ "Latakia", "Lattakia", "Lattaquié", "Lādhiqīyah", "al-Ladhiqiyah" ]
      }
    , { name = "Al Qunaytirah"
      , code = ""
      , unofficialNames = [ "Quneitra", "al-Qunaytirah" ]
      }
    , { name = "Ar Raqqah"
      , code = ""
      , unofficialNames = [ "Raqqah", "al-Rakka" ]
      }
    , { name = "Rif Dimashq"
      , code = ""
      , unofficialNames = [ "Dimashq", "Dimašq", "Damaskus", "Damas", "Damascus" ]
      }
    , { name = "As Suwayda'"
      , code = ""
      , unofficialNames = [ "as-Suwayda" ]
      }
    , { name = "Tartus"
      , code = ""
      , unofficialNames = [ "Tartoûs", "Tartus" ]
      }
    ]


{-| -}
eswatiniSubdivisions : List Subdivision
eswatiniSubdivisions =
    [ { name = "Hhohho"
      , code = ""
      , unofficialNames = [ "Hhohho" ]
      }
    , { name = "Lubombo"
      , code = ""
      , unofficialNames = [ "Lebombo" ]
      }
    , { name = "Manzini"
      , code = ""
      , unofficialNames = [ "Manzini" ]
      }
    , { name = "Shiselweni"
      , code = ""
      , unofficialNames = [ "Shiselweni" ]
      }
    ]


{-| -}
chadSubdivisions : List Subdivision
chadSubdivisions =
    [ { name = "Batha"
      , code = ""
      , unofficialNames = [ "Batha" ]
      }
    , { name = "Borkou-Ennedi-Tibesti"
      , code = ""
      , unofficialNames = [ "Borkou-Ennedi-Tibesti" ]
      }
    , { name = "Chari-Baguirmi"
      , code = ""
      , unofficialNames = [ "Chari-Baguirmi" ]
      }
    , { name = "Guéra"
      , code = ""
      , unofficialNames = [ "Guéra" ]
      }
    , { name = "Hadjer Lamis"
      , code = ""
      , unofficialNames = [ "Hadjer Lamis" ]
      }
    , { name = "Kanem"
      , code = ""
      , unofficialNames = [ "Kanem" ]
      }
    , { name = "Lac"
      , code = ""
      , unofficialNames = [ "Lac" ]
      }
    , { name = "Logone-Occidental"
      , code = ""
      , unofficialNames = [ "Logone-Occidental" ]
      }
    , { name = "Logone-Oriental"
      , code = ""
      , unofficialNames = [ "Logone-Oriental" ]
      }
    , { name = "Mandoul"
      , code = ""
      , unofficialNames = [ "Mandoul" ]
      }
    , { name = "Moyen-Chari"
      , code = ""
      , unofficialNames = [ "Moyen-Chari" ]
      }
    , { name = "Mayo-Kébbi-Est"
      , code = ""
      , unofficialNames = [ "Mayo-Kébbi-Est" ]
      }
    , { name = "Mayo-Kébbi-Ouest"
      , code = ""
      , unofficialNames = [ "Mayo-Kébbi-Ouest" ]
      }
    , { name = "Ndjamena"
      , code = ""
      , unofficialNames = [ "Ndjamena" ]
      }
    , { name = "Ouaddaï"
      , code = ""
      , unofficialNames = [ "Ouaddaï" ]
      }
    , { name = "Salamat"
      , code = ""
      , unofficialNames = [ "Salamat" ]
      }
    , { name = "Tandjilé"
      , code = ""
      , unofficialNames = [ "Tandjilé" ]
      }
    , { name = "Wadi Fira"
      , code = ""
      , unofficialNames = [ "Wadi Fira" ]
      }
    ]


{-| -}
frenchSouthernTerritoriesSubdivisions : List Subdivision
frenchSouthernTerritoriesSubdivisions =
    [ { name = "Ile Saint-Paul et Ile Amsterdam"
      , code = ""
      , unofficialNames = [ "Ile Saint-Paul et Ile Amsterdam" ]
      }
    , { name = "Crozet Islands"
      , code = ""
      , unofficialNames = [ "Crozet Islands" ]
      }
    , { name = "Kerguelen"
      , code = ""
      , unofficialNames = [ "Kerguelen" ]
      }
    , { name = "Iles Eparses"
      , code = ""
      , unofficialNames = [ "Iles Eparses" ]
      }
    ]


{-| -}
togoSubdivisions : List Subdivision
togoSubdivisions =
    [ { name = "Centre"
      , code = ""
      , unofficialNames = [ "Centre" ]
      }
    , { name = "Kara"
      , code = ""
      , unofficialNames = [ "Kara" ]
      }
    , { name = "Maritime (Région)"
      , code = ""
      , unofficialNames = [ "Maritime (Région)" ]
      }
    , { name = "Plateaux"
      , code = ""
      , unofficialNames = [ "Plateaux" ]
      }
    , { name = "Savannes"
      , code = ""
      , unofficialNames = [ "Savannes" ]
      }
    ]


{-| -}
thailandSubdivisions : List Subdivision
thailandSubdivisions =
    [ { name = "Krung Thep Maha Nakhon [Bangkok]"
      , code = ""
      , unofficialNames = [ "Krung Thep", "Bangkok", "BKK" ]
      }
    , { name = "Samut Prakan"
      , code = ""
      , unofficialNames = [ "Samut Prakan" ]
      }
    , { name = "Nonthaburi"
      , code = ""
      , unofficialNames = [ "Nonthaburi" ]
      }
    , { name = "Pathum Thani"
      , code = ""
      , unofficialNames = [ "Pathum Thani" ]
      }
    , { name = "Phra Nakhon Si Ayutthaya"
      , code = ""
      , unofficialNames = [ "Phra Nakhon Si Ayutthaya" ]
      }
    , { name = "Ang Thong"
      , code = ""
      , unofficialNames = [ "Ang Thong" ]
      }
    , { name = "Lop Buri"
      , code = ""
      , unofficialNames = [ "Lop Buri" ]
      }
    , { name = "Sing Buri"
      , code = ""
      , unofficialNames = [ "Sing Buri" ]
      }
    , { name = "Chai Nat"
      , code = ""
      , unofficialNames = [ "Chainat", "Jainat", "Jayanath" ]
      }
    , { name = "Saraburi"
      , code = ""
      , unofficialNames = [ "Saraburi" ]
      }
    , { name = "Chon Buri"
      , code = ""
      , unofficialNames = [ "Chon Buri" ]
      }
    , { name = "Rayong"
      , code = ""
      , unofficialNames = [ "Rayong" ]
      }
    , { name = "Chanthaburi"
      , code = ""
      , unofficialNames = [ "Chanthaburi" ]
      }
    , { name = "Trat"
      , code = ""
      , unofficialNames = [ "Trat" ]
      }
    , { name = "Chachoengsao"
      , code = ""
      , unofficialNames = [ "Chachoengsao" ]
      }
    , { name = "Prachin Buri"
      , code = ""
      , unofficialNames = [ "Prachin Buri" ]
      }
    , { name = "Nakhon Nayok"
      , code = ""
      , unofficialNames = [ "Nakhon Nayok" ]
      }
    , { name = "Sa Kaeo"
      , code = ""
      , unofficialNames = [ "Sa Kaeo" ]
      }
    , { name = "Nakhon Ratchasima"
      , code = ""
      , unofficialNames = [ "Nakhon Ratchasima" ]
      }
    , { name = "Buri Ram"
      , code = ""
      , unofficialNames = [ "Buri Ram" ]
      }
    , { name = "Surin"
      , code = ""
      , unofficialNames = [ "Surin" ]
      }
    , { name = "Si Sa Ket"
      , code = ""
      , unofficialNames = [ "Si Sa Ket" ]
      }
    , { name = "Ubon Ratchathani"
      , code = ""
      , unofficialNames = [ "Ubon Ratchathani" ]
      }
    , { name = "Yasothon"
      , code = ""
      , unofficialNames = [ "Yasothon" ]
      }
    , { name = "Chaiyaphum"
      , code = ""
      , unofficialNames = [ "Chaiyaphum" ]
      }
    , { name = "Amnat Charoen"
      , code = ""
      , unofficialNames = [ "Amnat Charoen" ]
      }
    , { name = "Nong Bua Lam Phu"
      , code = ""
      , unofficialNames = [ "Nong Bua Lam Phu" ]
      }
    , { name = "Khon Kaen"
      , code = ""
      , unofficialNames = [ "Khon Kaen" ]
      }
    , { name = "Udon Thani"
      , code = ""
      , unofficialNames = [ "Udon Thani" ]
      }
    , { name = "Loei"
      , code = ""
      , unofficialNames = [ "Loei" ]
      }
    , { name = "Nong Khai"
      , code = ""
      , unofficialNames = [ "Nong Khai" ]
      }
    , { name = "Maha Sarakham"
      , code = ""
      , unofficialNames = [ "Maha Sarakham" ]
      }
    , { name = "Roi Et"
      , code = ""
      , unofficialNames = [ "Roi Et" ]
      }
    , { name = "Kalasin"
      , code = ""
      , unofficialNames = [ "Kalasin" ]
      }
    , { name = "Sakon Nakhon"
      , code = ""
      , unofficialNames = [ "Sakon Nakhon" ]
      }
    , { name = "Nakhon Phanom"
      , code = ""
      , unofficialNames = [ "Nakhon Phanom" ]
      }
    , { name = "Mukdahan"
      , code = ""
      , unofficialNames = [ "Mukdahan" ]
      }
    , { name = "Chiang Mai"
      , code = ""
      , unofficialNames = [ "Chiangmai", "Chiengmai", "Kiangmai" ]
      }
    , { name = "Lamphun"
      , code = ""
      , unofficialNames = [ "Lamphun" ]
      }
    , { name = "Lampang"
      , code = ""
      , unofficialNames = [ "Lampang" ]
      }
    , { name = "Uttaradit"
      , code = ""
      , unofficialNames = [ "Uttaradit" ]
      }
    , { name = "Phrae"
      , code = ""
      , unofficialNames = [ "Phrae" ]
      }
    , { name = "Nan"
      , code = ""
      , unofficialNames = [ "Nan" ]
      }
    , { name = "Phayao"
      , code = ""
      , unofficialNames = [ "Phayao" ]
      }
    , { name = "Chiang Rai"
      , code = ""
      , unofficialNames = [ "Chianpai", "Chienrai", "Muang Chiang Rai" ]
      }
    , { name = "Mae Hong Son"
      , code = ""
      , unofficialNames = [ "Mae Hong Son" ]
      }
    , { name = "Nakhon Sawan"
      , code = ""
      , unofficialNames = [ "Nakhon Sawan" ]
      }
    , { name = "Uthai Thani"
      , code = ""
      , unofficialNames = [ "Uthai Thani" ]
      }
    , { name = "Kamphaeng Phet"
      , code = ""
      , unofficialNames = [ "Kamphaeng Phet" ]
      }
    , { name = "Tak"
      , code = ""
      , unofficialNames = [ "Tak" ]
      }
    , { name = "Sukhothai"
      , code = ""
      , unofficialNames = [ "Sakhothai" ]
      }
    , { name = "Phitsanulok"
      , code = ""
      , unofficialNames = [ "Phitsanulok" ]
      }
    , { name = "Phichit"
      , code = ""
      , unofficialNames = [ "Phichit" ]
      }
    , { name = "Phetchabun"
      , code = ""
      , unofficialNames = [ "Phetchabun" ]
      }
    , { name = "Ratchaburi"
      , code = ""
      , unofficialNames = [ "Ratchaburi" ]
      }
    , { name = "Kanchanaburi"
      , code = ""
      , unofficialNames = [ "Kanchanaburi" ]
      }
    , { name = "Suphan Buri"
      , code = ""
      , unofficialNames = [ "Suphan Buri" ]
      }
    , { name = "Nakhon Pathom"
      , code = ""
      , unofficialNames = [ "Nakhon Pathom" ]
      }
    , { name = "Samut Sakhon"
      , code = ""
      , unofficialNames = [ "Samut Sakhon" ]
      }
    , { name = "Samut Songkhram"
      , code = ""
      , unofficialNames = [ "Samut Songkhram" ]
      }
    , { name = "Phetchaburi"
      , code = ""
      , unofficialNames = [ "Phetchaburi" ]
      }
    , { name = "Prachuap Khiri Khan"
      , code = ""
      , unofficialNames = [ "Prachuap Khiri Khan" ]
      }
    , { name = "Nakhon Si Thammarat"
      , code = ""
      , unofficialNames = [ "Nakhon Si Thammarat" ]
      }
    , { name = "Krabi"
      , code = ""
      , unofficialNames = [ "Krabi" ]
      }
    , { name = "Phangnga"
      , code = ""
      , unofficialNames = [ "Phangnga" ]
      }
    , { name = "Phuket"
      , code = ""
      , unofficialNames = [ "Phuket" ]
      }
    , { name = "Surat Thani"
      , code = ""
      , unofficialNames = [ "Surat Thani" ]
      }
    , { name = "Ranong"
      , code = ""
      , unofficialNames = [ "Ranong" ]
      }
    , { name = "Chumphon"
      , code = ""
      , unofficialNames = [ "Chumphon" ]
      }
    , { name = "Songkhla"
      , code = ""
      , unofficialNames = [ "Songkhla" ]
      }
    , { name = "Satun"
      , code = ""
      , unofficialNames = [ "Satun" ]
      }
    , { name = "Trang"
      , code = ""
      , unofficialNames = [ "Trang" ]
      }
    , { name = "Phatthalung"
      , code = ""
      , unofficialNames = [ "Phatthalung" ]
      }
    , { name = "Pattani"
      , code = ""
      , unofficialNames = [ "Pattani" ]
      }
    , { name = "Yala"
      , code = ""
      , unofficialNames = [ "Yala" ]
      }
    , { name = "Narathiwat"
      , code = ""
      , unofficialNames = [ "Narathiwat" ]
      }
    , { name = "Phatthaya"
      , code = ""
      , unofficialNames = [ "Phatthaya" ]
      }
    ]


{-| -}
tajikistanSubdivisions : List Subdivision
tajikistanSubdivisions =
    [ { name = "Gorno-Badakhshan"
      , code = ""
      , unofficialNames = [ "Gorno-Badahşan" ]
      }
    , { name = "Khatlon"
      , code = ""
      , unofficialNames = [ "Hatlon" ]
      }
    , { name = "Sughd"
      , code = ""
      , unofficialNames = [ "Chudjand", "Hucand", "Hudžand", "Hücand", "Khodzent", "Khodzhent", "Khudzhand", "Leninabad" ]
      }
    ]


{-| -}
tokelauSubdivisions : List Subdivision
tokelauSubdivisions =
    [ { name = "Atafu"
      , code = ""
      , unofficialNames = [ "Atafu" ]
      }
    , { name = "Fakaofo"
      , code = ""
      , unofficialNames = [ "Fakaofo" ]
      }
    , { name = "Nukunonu"
      , code = ""
      , unofficialNames = [ "Nukunonu" ]
      }
    ]


{-| -}
timorLesteSubdivisions : List Subdivision
timorLesteSubdivisions =
    [ { name = "Aileu"
      , code = ""
      , unofficialNames = [ "Aileu" ]
      }
    , { name = "Ainaro"
      , code = ""
      , unofficialNames = [ "Ainaro" ]
      }
    , { name = "Baucau"
      , code = ""
      , unofficialNames = [ "Baukau" ]
      }
    , { name = "Bobonaro"
      , code = ""
      , unofficialNames = [ "Bobonaro" ]
      }
    , { name = "Cova Lima"
      , code = ""
      , unofficialNames = [ "Kova-Lima" ]
      }
    , { name = "Dili"
      , code = ""
      , unofficialNames = [ "Dili" ]
      }
    , { name = "Ermera"
      , code = ""
      , unofficialNames = [ "Ermera" ]
      }
    , { name = "Lautem"
      , code = ""
      , unofficialNames = [ "Lautem" ]
      }
    , { name = "Liquiça"
      , code = ""
      , unofficialNames = [ "Likisia" ]
      }
    , { name = "Manufahi"
      , code = ""
      , unofficialNames = [ "Manufahi" ]
      }
    , { name = "Manatuto"
      , code = ""
      , unofficialNames = [ "Manatuto" ]
      }
    , { name = "Oecussi"
      , code = ""
      , unofficialNames = [ "Ambeno", "Ambino", "Oecusse" ]
      }
    , { name = "Viqueque"
      , code = ""
      , unofficialNames = [ "Vikeke" ]
      }
    ]


{-| -}
turkmenistanSubdivisions : List Subdivision
turkmenistanSubdivisions =
    [ { name = "Ahal"
      , code = ""
      , unofficialNames = [ "Akhal" ]
      }
    , { name = "Balkan"
      , code = ""
      , unofficialNames = [ "Balkan" ]
      }
    , { name = "Dasoguz"
      , code = ""
      , unofficialNames = [ "Dashhovuz", "Dashhowuz", "Dashkhovuz", "Dashogus", "Dashoguz", "Daşhovuz", "Dašhovuz", "Tashauz", "Tašauz" ]
      }
    , { name = "Lebap"
      , code = ""
      , unofficialNames = [ "Lebap" ]
      }
    , { name = "Mary"
      , code = ""
      , unofficialNames = [ "Mary", "Merv" ]
      }
    ]


{-| -}
tunisiaSubdivisions : List Subdivision
tunisiaSubdivisions =
    [ { name = "Tunis"
      , code = ""
      , unofficialNames = [ "Toûnis", "Tūnis", "Tunis", "Tunis", "Túnez" ]
      }
    , { name = "L'Ariana"
      , code = ""
      , unofficialNames = [ "Ariano", "Iryanah", "Ariana" ]
      }
    , { name = "Ben Arous"
      , code = ""
      , unofficialNames = [ "Bin Arus", "Ben Arous" ]
      }
    , { name = "La Manouba"
      , code = ""
      , unofficialNames = [ "Manouba" ]
      }
    , { name = "Nabeul"
      , code = ""
      , unofficialNames = [ "Nabul", "Nabeul" ]
      }
    , { name = "Zaghouan"
      , code = ""
      , unofficialNames = [ "Zaghwan", "Zagwan", "Zaghouan" ]
      }
    , { name = "Bizerte"
      , code = ""
      , unofficialNames = [ "Banzart", "Benzert", "Bizerta", "Bizerte" ]
      }
    , { name = "Béja"
      , code = ""
      , unofficialNames = [ "Bajah", "Béja" ]
      }
    , { name = "Jendouba"
      , code = ""
      , unofficialNames = [ "Jundubah", "Jendouba" ]
      }
    , { name = "Le Kef"
      , code = ""
      , unofficialNames = [ "El Kef", "Le Kef" ]
      }
    , { name = "Siliana"
      , code = ""
      , unofficialNames = [ "Silyanah", "Siliana" ]
      }
    , { name = "Kairouan"
      , code = ""
      , unofficialNames = [ "al-Qayrawan", "Kairouan" ]
      }
    , { name = "Kasserine"
      , code = ""
      , unofficialNames = [ "Qasrayn", "Kasserine" ]
      }
    , { name = "Sidi Bouzid"
      , code = ""
      , unofficialNames = [ "Sidi Bu Zayd", "Sidi Bouzid" ]
      }
    , { name = "Sousse"
      , code = ""
      , unofficialNames = [ "Susah", "Sousse" ]
      }
    , { name = "Monastir"
      , code = ""
      , unofficialNames = [ "al-Munastir", "Monastir" ]
      }
    , { name = "Mahdia"
      , code = ""
      , unofficialNames = [ "Mahdia", "al-Mahdiyah", "Mehdia" ]
      }
    , { name = "Sfax"
      , code = ""
      , unofficialNames = [ "Safaqis", "Sfax" ]
      }
    , { name = "Gafsa"
      , code = ""
      , unofficialNames = [ "Gafsa" ]
      }
    , { name = "Tozeur"
      , code = ""
      , unofficialNames = [ "Tozeur" ]
      }
    , { name = "Kebili"
      , code = ""
      , unofficialNames = [ "Qabili", "Qabilī", "Qibili", "Kébili" ]
      }
    , { name = "Gabès"
      , code = ""
      , unofficialNames = [ "Qabis", "Gabès" ]
      }
    , { name = "Medenine"
      , code = ""
      , unofficialNames = [ "Madaniyin", "Medenine" ]
      }
    , { name = "Tataouine"
      , code = ""
      , unofficialNames = [ "Tatawin", "Tatouine" ]
      }
    ]


{-| -}
tongaSubdivisions : List Subdivision
tongaSubdivisions =
    [ { name = "'Eua"
      , code = ""
      , unofficialNames = [ "Middleburg Island", "ʿEua" ]
      }
    , { name = "Ha'apai"
      , code = ""
      , unofficialNames = [ "Ha'apai" ]
      }
    , { name = "Niuas"
      , code = ""
      , unofficialNames = [ "Niuas" ]
      }
    , { name = "Tongatapu"
      , code = ""
      , unofficialNames = [ "Tongatapu" ]
      }
    , { name = "Vava'u"
      , code = ""
      , unofficialNames = [ "Vava'u" ]
      }
    ]


{-| -}
turkeySubdivisions : List Subdivision
turkeySubdivisions =
    [ { name = "Adana"
      , code = ""
      , unofficialNames = [ "Seyhan" ]
      }
    , { name = "Adıyaman"
      , code = ""
      , unofficialNames = [ "Adıyaman" ]
      }
    , { name = "Afyon"
      , code = ""
      , unofficialNames = [ "Afyon" ]
      }
    , { name = "Ağrı"
      , code = ""
      , unofficialNames = [ "Ağrı" ]
      }
    , { name = "Amasya"
      , code = ""
      , unofficialNames = [ "Amasya" ]
      }
    , { name = "Ankara"
      , code = ""
      , unofficialNames = [ "Ankara" ]
      }
    , { name = "Antalya"
      , code = ""
      , unofficialNames = [ "Antalya" ]
      }
    , { name = "Artvin"
      , code = ""
      , unofficialNames = [ "Artvin" ]
      }
    , { name = "Aydın"
      , code = ""
      , unofficialNames = [ "Aydın" ]
      }
    , { name = "Balıkesir"
      , code = ""
      , unofficialNames = [ "Balıkesir" ]
      }
    , { name = "Bilecik"
      , code = ""
      , unofficialNames = [ "Bilecik" ]
      }
    , { name = "Bingöl"
      , code = ""
      , unofficialNames = [ "Bingöl" ]
      }
    , { name = "Bitlis"
      , code = ""
      , unofficialNames = [ "Bitlis" ]
      }
    , { name = "Bolu"
      , code = ""
      , unofficialNames = [ "Bolu" ]
      }
    , { name = "Burdur"
      , code = ""
      , unofficialNames = [ "Burdur" ]
      }
    , { name = "Bursa"
      , code = ""
      , unofficialNames = [ "Bursa" ]
      }
    , { name = "Çanakkale"
      , code = ""
      , unofficialNames = [ "Çanakkale" ]
      }
    , { name = "Çankırı"
      , code = ""
      , unofficialNames = [ "Çankırı" ]
      }
    , { name = "Çorum"
      , code = ""
      , unofficialNames = [ "Çorum" ]
      }
    , { name = "Denizli"
      , code = ""
      , unofficialNames = [ "Denizli" ]
      }
    , { name = "Diyarbakır"
      , code = ""
      , unofficialNames = [ "Diyarbakır" ]
      }
    , { name = "Edirne"
      , code = ""
      , unofficialNames = [ "Edirne" ]
      }
    , { name = "Elazığ"
      , code = ""
      , unofficialNames = [ "Elazığ" ]
      }
    , { name = "Erzincan"
      , code = ""
      , unofficialNames = [ "Erzincan" ]
      }
    , { name = "Erzurum"
      , code = ""
      , unofficialNames = [ "Erzurum" ]
      }
    , { name = "Eskişehir"
      , code = ""
      , unofficialNames = [ "Eskişehir" ]
      }
    , { name = "Gaziantep"
      , code = ""
      , unofficialNames = [ "Gaziantep" ]
      }
    , { name = "Giresun"
      , code = ""
      , unofficialNames = [ "Giresun" ]
      }
    , { name = "Gümüşhane"
      , code = ""
      , unofficialNames = [ "Gümüşhane" ]
      }
    , { name = "Hakkâri"
      , code = ""
      , unofficialNames = [ "Hakkâri" ]
      }
    , { name = "Hatay"
      , code = ""
      , unofficialNames = [ "Hatay" ]
      }
    , { name = "Isparta"
      , code = ""
      , unofficialNames = [ "Isparta" ]
      }
    , { name = "İçel"
      , code = ""
      , unofficialNames = [ "İçel" ]
      }
    , { name = "İstanbul"
      , code = ""
      , unofficialNames = [ "İstanbul" ]
      }
    , { name = "İzmir"
      , code = ""
      , unofficialNames = [ "İzmir" ]
      }
    , { name = "Kars"
      , code = ""
      , unofficialNames = [ "Kars" ]
      }
    , { name = "Kastamonu"
      , code = ""
      , unofficialNames = [ "Kastamonu" ]
      }
    , { name = "Kayseri"
      , code = ""
      , unofficialNames = [ "Kayseri" ]
      }
    , { name = "Kırklareli"
      , code = ""
      , unofficialNames = [ "Kirklareli" ]
      }
    , { name = "Kırşehir"
      , code = ""
      , unofficialNames = [ "Kırşehir" ]
      }
    , { name = "Kocaeli"
      , code = ""
      , unofficialNames = [ "Kocaeli" ]
      }
    , { name = "Konya"
      , code = ""
      , unofficialNames = [ "Konya" ]
      }
    , { name = "Kütahya"
      , code = ""
      , unofficialNames = [ "Kütahya" ]
      }
    , { name = "Malatya"
      , code = ""
      , unofficialNames = [ "Malatya" ]
      }
    , { name = "Manisa"
      , code = ""
      , unofficialNames = [ "Manisa" ]
      }
    , { name = "Kahramanmaraş"
      , code = ""
      , unofficialNames = [ "Kahramanmaraş", "Maraş" ]
      }
    , { name = "Mardin"
      , code = ""
      , unofficialNames = [ "Mardin" ]
      }
    , { name = "Muğla"
      , code = ""
      , unofficialNames = [ "Muğla" ]
      }
    , { name = "Muş"
      , code = ""
      , unofficialNames = [ "Muş" ]
      }
    , { name = "Nevşehir"
      , code = ""
      , unofficialNames = [ "Nevşehir" ]
      }
    , { name = "Niğde"
      , code = ""
      , unofficialNames = [ "Niğde" ]
      }
    , { name = "Ordu"
      , code = ""
      , unofficialNames = [ "Ordu" ]
      }
    , { name = "Rize"
      , code = ""
      , unofficialNames = [ "Rize" ]
      }
    , { name = "Sakarya"
      , code = ""
      , unofficialNames = [ "Sakarya" ]
      }
    , { name = "Samsun"
      , code = ""
      , unofficialNames = [ "Samsun" ]
      }
    , { name = "Siirt"
      , code = ""
      , unofficialNames = [ "Siirt" ]
      }
    , { name = "Sinop"
      , code = ""
      , unofficialNames = [ "Sinop" ]
      }
    , { name = "Sivas"
      , code = ""
      , unofficialNames = [ "Sivas" ]
      }
    , { name = "Tekirdağ"
      , code = ""
      , unofficialNames = [ "Tekirdağ" ]
      }
    , { name = "Tokat"
      , code = ""
      , unofficialNames = [ "Tokat" ]
      }
    , { name = "Trabzon"
      , code = ""
      , unofficialNames = [ "Trabzon" ]
      }
    , { name = "Tunceli"
      , code = ""
      , unofficialNames = [ "Tunceli" ]
      }
    , { name = "Şanlıurfa"
      , code = ""
      , unofficialNames = [ "Şanlıurfa" ]
      }
    , { name = "Uşak"
      , code = ""
      , unofficialNames = [ "Uşak" ]
      }
    , { name = "Van"
      , code = ""
      , unofficialNames = [ "Van" ]
      }
    , { name = "Yozgat"
      , code = ""
      , unofficialNames = [ "Yozgat" ]
      }
    , { name = "Zonguldak"
      , code = ""
      , unofficialNames = [ "Zonguldak" ]
      }
    , { name = "Aksaray"
      , code = ""
      , unofficialNames = [ "Aksaray" ]
      }
    , { name = "Bayburt"
      , code = ""
      , unofficialNames = [ "Bayburt" ]
      }
    , { name = "Karaman"
      , code = ""
      , unofficialNames = [ "Karaman" ]
      }
    , { name = "Kırıkkale"
      , code = ""
      , unofficialNames = [ "Kırıkkale" ]
      }
    , { name = "Batman"
      , code = ""
      , unofficialNames = [ "Batman" ]
      }
    , { name = "Şırnak"
      , code = ""
      , unofficialNames = [ "Şırnak" ]
      }
    , { name = "Bartın"
      , code = ""
      , unofficialNames = [ "Bartın" ]
      }
    , { name = "Ardahan"
      , code = ""
      , unofficialNames = [ "Ardahan" ]
      }
    , { name = "Iğdır"
      , code = ""
      , unofficialNames = [ "Iğdır" ]
      }
    , { name = "Yalova"
      , code = ""
      , unofficialNames = [ "Yalova" ]
      }
    , { name = "Karabük"
      , code = ""
      , unofficialNames = [ "Karabük" ]
      }
    , { name = "Kilis"
      , code = ""
      , unofficialNames = [ "Kilis" ]
      }
    , { name = "Osmaniye"
      , code = ""
      , unofficialNames = [ "Osmaniye" ]
      }
    , { name = "Düzce"
      , code = ""
      , unofficialNames = [ "Düzce" ]
      }
    ]


{-| -}
trinidadAndTobagoSubdivisions : List Subdivision
trinidadAndTobagoSubdivisions =
    [ { name = "Arima"
      , code = ""
      , unofficialNames = [ "Arima" ]
      }
    , { name = "Chaguanas"
      , code = ""
      , unofficialNames = [ "Chaguanas" ]
      }
    , { name = "Couva-Tabaquite-Talparo"
      , code = ""
      , unofficialNames = [ "Couva-Tabaquite-Talparo" ]
      }
    , { name = "Diego Martin"
      , code = ""
      , unofficialNames = [ "Diego Martin" ]
      }
    , { name = "Eastern Tobago"
      , code = ""
      , unofficialNames = [ "Eastern Tobago" ]
      }
    , { name = "Penal-Debe"
      , code = ""
      , unofficialNames = [ "Penal-Debe" ]
      }
    , { name = "Port of Spain"
      , code = ""
      , unofficialNames = [ "Port of Spain" ]
      }
    , { name = "Princes Town"
      , code = ""
      , unofficialNames = [ "Princes Town" ]
      }
    , { name = "Point Fortin"
      , code = ""
      , unofficialNames = [ "Point Fortin" ]
      }
    , { name = "Rio Claro-Mayaro"
      , code = ""
      , unofficialNames = [ "Rio Claro-Mayaro" ]
      }
    , { name = "San Fernando"
      , code = ""
      , unofficialNames = [ "San Fernando" ]
      }
    , { name = "Sangre Grande"
      , code = ""
      , unofficialNames = [ "Sangre Grande" ]
      }
    , { name = "Siparia"
      , code = ""
      , unofficialNames = [ "Siparia" ]
      }
    , { name = "San Juan-Laventille"
      , code = ""
      , unofficialNames = [ "San Juan-Laventille" ]
      }
    , { name = "Tunapuna-Piarco"
      , code = ""
      , unofficialNames = [ "Tunapuna-Piarco" ]
      }
    , { name = "Western Tobago"
      , code = ""
      , unofficialNames = [ "Western Tobago" ]
      }
    ]


{-| -}
tuvaluSubdivisions : List Subdivision
tuvaluSubdivisions =
    [ { name = "Funafuti"
      , code = ""
      , unofficialNames = [ "Funafuti" ]
      }
    , { name = "Niutao"
      , code = ""
      , unofficialNames = [ "Niutao" ]
      }
    , { name = "Nui"
      , code = ""
      , unofficialNames = [ "Nui" ]
      }
    , { name = "Nukufetau"
      , code = ""
      , unofficialNames = [ "Nukufetau" ]
      }
    , { name = "Nukulaelae"
      , code = ""
      , unofficialNames = [ "Nukulailai" ]
      }
    , { name = "Nanumea"
      , code = ""
      , unofficialNames = [ "Nanumea" ]
      }
    , { name = "Nanumanga"
      , code = ""
      , unofficialNames = [ "Nanumaga" ]
      }
    , { name = "Vaitupu"
      , code = ""
      , unofficialNames = [ "Vaitupu" ]
      }
    ]


{-| -}
taiwanProvinceOfChinaSubdivisions : List Subdivision
taiwanProvinceOfChinaSubdivisions =
    [ { name = "Changhua"
      , code = ""
      , unofficialNames = [ "Changhua" ]
      }
    , { name = "Chiayi Municipality"
      , code = ""
      , unofficialNames = [ "Chiai" ]
      }
    , { name = "Chiayi"
      , code = ""
      , unofficialNames = [ "Chiayi" ]
      }
    , { name = "Hsinchu"
      , code = ""
      , unofficialNames = [ "Hsinchu" ]
      }
    , { name = "Hsinchu Municipality"
      , code = ""
      , unofficialNames = [ "Hsinchu Municipality" ]
      }
    , { name = "Hualien"
      , code = ""
      , unofficialNames = [ "Hualian" ]
      }
    , { name = "Ilan"
      , code = ""
      , unofficialNames = [ "Ilan" ]
      }
    , { name = "Keelung Municipality"
      , code = ""
      , unofficialNames = [ "Chilung Shih" ]
      }
    , { name = "Kaohsiung Special Municipality"
      , code = ""
      , unofficialNames = [ "Kaohsiung Special Municipality" ]
      }
    , { name = "Kaohsiung"
      , code = ""
      , unofficialNames = [ "Kaohsiung" ]
      }
    , { name = "Miaoli"
      , code = ""
      , unofficialNames = [ "Miaoli" ]
      }
    , { name = "Nantou"
      , code = ""
      , unofficialNames = [ "Nantou" ]
      }
    , { name = "Penghu"
      , code = ""
      , unofficialNames = [ "Penghu" ]
      }
    , { name = "Pingtung"
      , code = ""
      , unofficialNames = [ "Pingtung" ]
      }
    , { name = "Taoyuan"
      , code = ""
      , unofficialNames = [ "Taoyuan" ]
      }
    , { name = "Tainan Municipality"
      , code = ""
      , unofficialNames = [ "Tainan Municipality" ]
      }
    , { name = "Tainan"
      , code = ""
      , unofficialNames = [ "Tainan" ]
      }
    , { name = "Taipei Special Municipality"
      , code = ""
      , unofficialNames = [ "Taipei Special Municipality" ]
      }
    , { name = "Taipei"
      , code = ""
      , unofficialNames = [ "Taipei" ]
      }
    , { name = "Taitung"
      , code = ""
      , unofficialNames = [ "Taidong" ]
      }
    , { name = "Taichung Municipality"
      , code = ""
      , unofficialNames = [ "Taichung Municipality" ]
      }
    , { name = "Taichung"
      , code = ""
      , unofficialNames = [ "Taichung" ]
      }
    , { name = "Yunlin"
      , code = ""
      , unofficialNames = [ "Yunlin" ]
      }
    ]


{-| -}
tanzaniaUnitedRepublicOfSubdivisions : List Subdivision
tanzaniaUnitedRepublicOfSubdivisions =
    [ { name = "Arusha"
      , code = ""
      , unofficialNames = [ "Arusha" ]
      }
    , { name = "Dar es Salaam"
      , code = ""
      , unofficialNames = [ "Daressalam" ]
      }
    , { name = "Dodoma"
      , code = ""
      , unofficialNames = [ "Dodoma" ]
      }
    , { name = "Iringa"
      , code = ""
      , unofficialNames = [ "Iringa" ]
      }
    , { name = "Kagera"
      , code = ""
      , unofficialNames = [ "Akagera", "Ziwa Magharibi" ]
      }
    , { name = "Kaskazini Pemba"
      , code = ""
      , unofficialNames = [ "Kaskazini Pemba" ]
      }
    , { name = "Kaskazini Unguja"
      , code = ""
      , unofficialNames = [ "Unguja" ]
      }
    , { name = "Kigoma"
      , code = ""
      , unofficialNames = [ "Kigoma" ]
      }
    , { name = "Kilimanjaro"
      , code = ""
      , unofficialNames = [ "Kilimanjaro" ]
      }
    , { name = "Kusini Pemba"
      , code = ""
      , unofficialNames = [ "Kusini Pemba" ]
      }
    , { name = "Kusini Unguja"
      , code = ""
      , unofficialNames = [ "Kusini Unguja" ]
      }
    , { name = "Lindi"
      , code = ""
      , unofficialNames = [ "Lindi" ]
      }
    , { name = "Mara"
      , code = ""
      , unofficialNames = [ "Mara" ]
      }
    , { name = "Mbeya"
      , code = ""
      , unofficialNames = [ "Mbeya" ]
      }
    , { name = "Mjini Magharibi"
      , code = ""
      , unofficialNames = [ "Mjini Magharibi" ]
      }
    , { name = "Morogoro"
      , code = ""
      , unofficialNames = [ "Morogoro" ]
      }
    , { name = "Mtwara"
      , code = ""
      , unofficialNames = [ "Mtware" ]
      }
    , { name = "Mwanza"
      , code = ""
      , unofficialNames = [ "Mwanza" ]
      }
    , { name = "Pwani"
      , code = ""
      , unofficialNames = [ "Coast" ]
      }
    , { name = "Rukwa"
      , code = ""
      , unofficialNames = [ "Rukwa" ]
      }
    , { name = "Ruvuma"
      , code = ""
      , unofficialNames = [ "Ruvuma" ]
      }
    , { name = "Shinyanga"
      , code = ""
      , unofficialNames = [ "Shinyanga" ]
      }
    , { name = "Singida"
      , code = ""
      , unofficialNames = [ "Singida" ]
      }
    , { name = "Tabora"
      , code = ""
      , unofficialNames = [ "Tabora" ]
      }
    , { name = "Tanga"
      , code = ""
      , unofficialNames = [ "Tanga" ]
      }
    , { name = "Manyara"
      , code = ""
      , unofficialNames = [ "Manyara" ]
      }
    ]


{-| -}
ukraineSubdivisions : List Subdivision
ukraineSubdivisions =
    [ { name = "Vinnyts'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Vinnica", "Vinnitsa", "Vinnytska", "Vinnytsya" ]
      }
    , { name = "Volyns'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Volyn", "Volynska" ]
      }
    , { name = "Luhans'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Lugansk", "Luhanska", "Luhansʿk", "Voroshilovgrad", "Vorošilovgrad" ]
      }
    , { name = "Dnipropetrovs'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Dnepropetrovsk", "Dnipropetrovsk", "Dnipropetrovska", "Dnjepropetrovsk" ]
      }
    , { name = "Donets'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Doneck", "Donetska", "Donetsʿka" ]
      }
    , { name = "Zhytomyrs'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Zhitomir", "Zhytomyrska" ]
      }
    , { name = "Zakarpats'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Transcarpathia", "Zakarpatska", "Zakarpatsʿka Oblast" ]
      }
    , { name = "Zaporiz'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Zaporizhzhya", "Zaporizka", "Zaporozhye", "Zaporožje" ]
      }
    , { name = "Ivano-Frankivs'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Ivano-Frankivsk", "Ivano-Frankivska", "Ivano-Frankovsk" ]
      }
    , { name = "Kyïv"
      , code = ""
      , unofficialNames = [ "Kyiv", "Kyyiv", "Kiev" ]
      }
    , { name = "Kyïvs'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Kyyivsʿka Oblast", "Kyyivsʿka Oblastʿ" ]
      }
    , { name = "Kirovohrads'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Kirovograd", "Kirovohrad", "Kirovohradska" ]
      }
    , { name = "Sevastopol'"
      , code = ""
      , unofficialNames = [ "Sebastopol", "Sevastopol" ]
      }
    , { name = "Respublika Krym"
      , code = ""
      , unofficialNames = [ "Crimea", "Krim" ]
      }
    , { name = "L'vivs'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Lvivska", "Lvov", "Lʿviv" ]
      }
    , { name = "Mykolaïvs'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Mykolayivsk", "Mykolayivska", "Nikolajev", "Nikolayev" ]
      }
    , { name = "Odes'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Odesa", "Odeska", "Odessa" ]
      }
    , { name = "Poltavs'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Poltava", "Poltavska" ]
      }
    , { name = "Rivnens'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Rivne", "Rivnenska", "Rovno", "Równe" ]
      }
    , { name = "Sums'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Sumska", "Sumy" ]
      }
    , { name = "Ternopil's'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Ternopil", "Ternopilska", "Ternopol" ]
      }
    , { name = "Kharkivs'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Harkov", "Kharkiv", "Kharkivska", "Kharkov" ]
      }
    , { name = "Khersons'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Herson", "Kherson", "Khersonska" ]
      }
    , { name = "Khmel'nyts'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Hmelnickij", "Khmelnitsky", "Khmelnytska", "Khmelnytskyy" ]
      }
    , { name = "Cherkas'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Cherkask", "Cherkassy" ]
      }
    , { name = "Chernihivs'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Chernigov", "Chernihiv", "Černigov" ]
      }
    , { name = "Chernivets'ka Oblast'"
      , code = ""
      , unofficialNames = [ "Cernăuţi", "Chernivtsi", "Chernivtsy", "Chernovtsy", "Czernowitz", "Tschernowitz", "Černovcy" ]
      }
    ]


{-| -}
ugandaSubdivisions : List Subdivision
ugandaSubdivisions =
    [ { name = "Kalangala"
      , code = ""
      , unofficialNames = [ "Kalangala" ]
      }
    , { name = "Kampala"
      , code = ""
      , unofficialNames = [ "Kampala" ]
      }
    , { name = "Kiboga"
      , code = ""
      , unofficialNames = [ "Kiboga" ]
      }
    , { name = "Luwero"
      , code = ""
      , unofficialNames = [ "Luwero" ]
      }
    , { name = "Masaka"
      , code = ""
      , unofficialNames = [ "Masaka" ]
      }
    , { name = "Mpigi"
      , code = ""
      , unofficialNames = [ "Mpigi" ]
      }
    , { name = "Mubende"
      , code = ""
      , unofficialNames = [ "Mubende" ]
      }
    , { name = "Mukono"
      , code = ""
      , unofficialNames = [ "Mukono" ]
      }
    , { name = "Nakasongola"
      , code = ""
      , unofficialNames = [ "Nakasongola" ]
      }
    , { name = "Rakai"
      , code = ""
      , unofficialNames = [ "Rakai" ]
      }
    , { name = "Sembabule"
      , code = ""
      , unofficialNames = [ "Sembabule" ]
      }
    , { name = "Kayunga"
      , code = ""
      , unofficialNames = [ "Kayunga" ]
      }
    , { name = "Wakiso"
      , code = ""
      , unofficialNames = [ "Wakiso" ]
      }
    , { name = "Mityana"
      , code = ""
      , unofficialNames = [ "Mityana" ]
      }
    , { name = "Nakaseke"
      , code = ""
      , unofficialNames = [ "Nakaseke" ]
      }
    , { name = "Lyantonde"
      , code = ""
      , unofficialNames = [ "Lyantonde" ]
      }
    , { name = "Bugiri"
      , code = ""
      , unofficialNames = [ "Bugiri" ]
      }
    , { name = "Busia"
      , code = ""
      , unofficialNames = [ "Busia" ]
      }
    , { name = "Iganga"
      , code = ""
      , unofficialNames = [ "Iganga" ]
      }
    , { name = "Jinja"
      , code = ""
      , unofficialNames = [ "Jinja" ]
      }
    , { name = "Kamuli"
      , code = ""
      , unofficialNames = [ "Kamuli" ]
      }
    , { name = "Kapchorwa"
      , code = ""
      , unofficialNames = [ "Kapchorwa" ]
      }
    , { name = "Katakwi"
      , code = ""
      , unofficialNames = [ "Katakwi" ]
      }
    , { name = "Kumi"
      , code = ""
      , unofficialNames = [ "Kumi" ]
      }
    , { name = "Mbale"
      , code = ""
      , unofficialNames = [ "Mbale" ]
      }
    , { name = "Pallisa"
      , code = ""
      , unofficialNames = [ "Pallisa" ]
      }
    , { name = "Soroti"
      , code = ""
      , unofficialNames = [ "Soroti" ]
      }
    , { name = "Tororo"
      , code = ""
      , unofficialNames = [ "Tororo" ]
      }
    , { name = "Kaberamaido"
      , code = ""
      , unofficialNames = [ "Kaberamaido" ]
      }
    , { name = "Mayuge"
      , code = ""
      , unofficialNames = [ "Mayuge" ]
      }
    , { name = "Sironko"
      , code = ""
      , unofficialNames = [ "Sironko" ]
      }
    , { name = "Amuria"
      , code = ""
      , unofficialNames = [ "Amuria" ]
      }
    , { name = "Budaka"
      , code = ""
      , unofficialNames = [ "Budaka" ]
      }
    , { name = "Bukwa"
      , code = ""
      , unofficialNames = [ "Bukwa" ]
      }
    , { name = "Butaleja"
      , code = ""
      , unofficialNames = [ "Butaleja" ]
      }
    , { name = "Kaliro"
      , code = ""
      , unofficialNames = [ "Kaliro" ]
      }
    , { name = "Manafwa"
      , code = ""
      , unofficialNames = [ "Manafwa" ]
      }
    , { name = "Namutumba"
      , code = ""
      , unofficialNames = [ "Namutumba" ]
      }
    , { name = "Bududa"
      , code = ""
      , unofficialNames = [ "Bududa" ]
      }
    , { name = "Bukedea"
      , code = ""
      , unofficialNames = [ "Bukedea" ]
      }
    , { name = "Adjumani"
      , code = ""
      , unofficialNames = [ "Adjumani" ]
      }
    , { name = "Apac"
      , code = ""
      , unofficialNames = [ "Apac" ]
      }
    , { name = "Arua"
      , code = ""
      , unofficialNames = [ "Arua" ]
      }
    , { name = "Gulu"
      , code = ""
      , unofficialNames = [ "Gulu" ]
      }
    , { name = "Kitgum"
      , code = ""
      , unofficialNames = [ "Kitgum" ]
      }
    , { name = "Kotido"
      , code = ""
      , unofficialNames = [ "Kotido" ]
      }
    , { name = "Lira"
      , code = ""
      , unofficialNames = [ "Lira" ]
      }
    , { name = "Moroto"
      , code = ""
      , unofficialNames = [ "Moroto" ]
      }
    , { name = "Moyo"
      , code = ""
      , unofficialNames = [ "Moyo" ]
      }
    , { name = "Nebbi"
      , code = ""
      , unofficialNames = [ "Nebbi" ]
      }
    , { name = "Nakapiripirit"
      , code = ""
      , unofficialNames = [ "Nakapiripirit" ]
      }
    , { name = "Pader"
      , code = ""
      , unofficialNames = [ "Pader" ]
      }
    , { name = "Yumbe"
      , code = ""
      , unofficialNames = [ "Yumbe" ]
      }
    , { name = "Amolatar"
      , code = ""
      , unofficialNames = [ "Amolatar" ]
      }
    , { name = "Kaabong"
      , code = ""
      , unofficialNames = [ "Kaabong" ]
      }
    , { name = "Koboko"
      , code = ""
      , unofficialNames = [ "Koboko" ]
      }
    , { name = "Abim"
      , code = ""
      , unofficialNames = [ "Abim" ]
      }
    , { name = "Dokolo"
      , code = ""
      , unofficialNames = [ "Dokolo" ]
      }
    , { name = "Amuru"
      , code = ""
      , unofficialNames = [ "Amuru" ]
      }
    , { name = "Maracha"
      , code = ""
      , unofficialNames = [ "Maracha" ]
      }
    , { name = "Oyam"
      , code = ""
      , unofficialNames = [ "Oyam" ]
      }
    , { name = "Bundibugyo"
      , code = ""
      , unofficialNames = [ "Bundibugyo" ]
      }
    , { name = "Bushenyi"
      , code = ""
      , unofficialNames = [ "Bushenyi" ]
      }
    , { name = "Hoima"
      , code = ""
      , unofficialNames = [ "Hoima" ]
      }
    , { name = "Kabale"
      , code = ""
      , unofficialNames = [ "Kabale" ]
      }
    , { name = "Kabarole"
      , code = ""
      , unofficialNames = [ "Kabarole" ]
      }
    , { name = "Kasese"
      , code = ""
      , unofficialNames = [ "Kasese" ]
      }
    , { name = "Kibaale"
      , code = ""
      , unofficialNames = [ "Kibaale" ]
      }
    , { name = "Kisoro"
      , code = ""
      , unofficialNames = [ "Kisoro" ]
      }
    , { name = "Masindi"
      , code = ""
      , unofficialNames = [ "Masindi" ]
      }
    , { name = "Mbarara"
      , code = ""
      , unofficialNames = [ "Mbarara" ]
      }
    , { name = "Ntungamo"
      , code = ""
      , unofficialNames = [ "Ntungamo" ]
      }
    , { name = "Rukungiri"
      , code = ""
      , unofficialNames = [ "Rukungiri" ]
      }
    , { name = "Kamwenge"
      , code = ""
      , unofficialNames = [ "Kamwenge" ]
      }
    , { name = "Kanungu"
      , code = ""
      , unofficialNames = [ "Kanungu" ]
      }
    , { name = "Kyenjojo"
      , code = ""
      , unofficialNames = [ "Kyenjojo" ]
      }
    , { name = "Ibanda"
      , code = ""
      , unofficialNames = [ "Ibanda" ]
      }
    , { name = "Isingiro"
      , code = ""
      , unofficialNames = [ "Isingiro" ]
      }
    , { name = "Kiruhura"
      , code = ""
      , unofficialNames = [ "Kiruhura" ]
      }
    , { name = "Buliisa"
      , code = ""
      , unofficialNames = [ "Buliisa" ]
      }
    ]


{-| -}
unitedStatesMinorOutlyingIslandsSubdivisions : List Subdivision
unitedStatesMinorOutlyingIslandsSubdivisions =
    [ { name = "Johnston Atoll"
      , code = ""
      , unofficialNames = [ "Johnston Atoll" ]
      }
    , { name = "Midway Islands"
      , code = ""
      , unofficialNames = [ "Midway Islands" ]
      }
    , { name = "Navassa Island"
      , code = ""
      , unofficialNames = [ "Navassa Island" ]
      }
    , { name = "Wake Island"
      , code = ""
      , unofficialNames = [ "Wake Island" ]
      }
    , { name = "Baker Island"
      , code = ""
      , unofficialNames = [ "Baker Island" ]
      }
    , { name = "Howland Island"
      , code = ""
      , unofficialNames = [ "Howland Island" ]
      }
    , { name = "Jarvis Island"
      , code = ""
      , unofficialNames = [ "Jarvis Island" ]
      }
    , { name = "Kingman Reef"
      , code = ""
      , unofficialNames = [ "Kingman Reef" ]
      }
    , { name = "Palmyra Atoll"
      , code = ""
      , unofficialNames = [ "Palmyra Atoll" ]
      }
    ]


{-| -}
unitedStatesOfAmericaSubdivisions : List Subdivision
unitedStatesOfAmericaSubdivisions =
    [ { name = "Armed Forces Americas"
      , code = ""
      , unofficialNames = [ "Armed Forces Americas" ]
      }
    , { name = "Armed Forces Europe"
      , code = ""
      , unofficialNames = [ "Armed Forces Europe" ]
      }
    , { name = "Alaska"
      , code = ""
      , unofficialNames = [ "Alaska" ]
      }
    , { name = "Alabama"
      , code = ""
      , unofficialNames = [ "Alabama" ]
      }
    , { name = "Armed Forces Pacific"
      , code = ""
      , unofficialNames = [ "Armed Forces Pacific" ]
      }
    , { name = "Arkansas"
      , code = ""
      , unofficialNames = [ "Arkansas" ]
      }
    , { name = "American Samoa"
      , code = ""
      , unofficialNames = [ "American Samoa" ]
      }
    , { name = "Arizona"
      , code = ""
      , unofficialNames = [ "Arizona" ]
      }
    , { name = "California"
      , code = ""
      , unofficialNames = [ "California" ]
      }
    , { name = "Colorado"
      , code = ""
      , unofficialNames = [ "Colorado" ]
      }
    , { name = "Connecticut"
      , code = ""
      , unofficialNames = [ "Connecticut" ]
      }
    , { name = "District of Columbia"
      , code = ""
      , unofficialNames = [ "District of Columbia" ]
      }
    , { name = "Delaware"
      , code = ""
      , unofficialNames = [ "Delaware" ]
      }
    , { name = "Florida"
      , code = ""
      , unofficialNames = [ "Florida" ]
      }
    , { name = "Georgia"
      , code = ""
      , unofficialNames = [ "Georgia" ]
      }
    , { name = "Guam"
      , code = ""
      , unofficialNames = [ "Guam" ]
      }
    , { name = "Hawaii"
      , code = ""
      , unofficialNames = [ "Hawaii" ]
      }
    , { name = "Iowa"
      , code = ""
      , unofficialNames = [ "Iowa" ]
      }
    , { name = "Idaho"
      , code = ""
      , unofficialNames = [ "Idaho" ]
      }
    , { name = "Illinois"
      , code = ""
      , unofficialNames = [ "Illinois" ]
      }
    , { name = "Indiana"
      , code = ""
      , unofficialNames = [ "Indiana" ]
      }
    , { name = "Kansas"
      , code = ""
      , unofficialNames = [ "Kansas" ]
      }
    , { name = "Kentucky"
      , code = ""
      , unofficialNames = [ "Kentucky" ]
      }
    , { name = "Louisiana"
      , code = ""
      , unofficialNames = [ "Louisiana" ]
      }
    , { name = "Massachusetts"
      , code = ""
      , unofficialNames = [ "Massachusetts" ]
      }
    , { name = "Maryland"
      , code = ""
      , unofficialNames = [ "Maryland" ]
      }
    , { name = "Maine"
      , code = ""
      , unofficialNames = [ "Maine" ]
      }
    , { name = "Michigan"
      , code = ""
      , unofficialNames = [ "Michigan" ]
      }
    , { name = "Minnesota"
      , code = ""
      , unofficialNames = [ "Minnesota" ]
      }
    , { name = "Missouri"
      , code = ""
      , unofficialNames = [ "Missouri" ]
      }
    , { name = "Northern Mariana Islands"
      , code = ""
      , unofficialNames = [ "Northern Mariana Islands" ]
      }
    , { name = "Mississippi"
      , code = ""
      , unofficialNames = [ "Mississippi" ]
      }
    , { name = "Montana"
      , code = ""
      , unofficialNames = [ "Montana" ]
      }
    , { name = "North Carolina"
      , code = ""
      , unofficialNames = [ "North Carolina" ]
      }
    , { name = "North Dakota"
      , code = ""
      , unofficialNames = [ "North Dakota" ]
      }
    , { name = "Nebraska"
      , code = ""
      , unofficialNames = [ "Nebraska" ]
      }
    , { name = "New Hampshire"
      , code = ""
      , unofficialNames = [ "New Hampshire" ]
      }
    , { name = "New Jersey"
      , code = ""
      , unofficialNames = [ "New Jersey" ]
      }
    , { name = "New Mexico"
      , code = ""
      , unofficialNames = [ "New Mexico" ]
      }
    , { name = "Nevada"
      , code = ""
      , unofficialNames = [ "Nevada" ]
      }
    , { name = "New York"
      , code = ""
      , unofficialNames = [ "New York" ]
      }
    , { name = "Ohio"
      , code = ""
      , unofficialNames = [ "Ohio" ]
      }
    , { name = "Oklahoma"
      , code = ""
      , unofficialNames = [ "Oklahoma" ]
      }
    , { name = "Oregon"
      , code = ""
      , unofficialNames = [ "Oregon" ]
      }
    , { name = "Pennsylvania"
      , code = ""
      , unofficialNames = [ "Pennsylvania" ]
      }
    , { name = "Puerto Rico"
      , code = ""
      , unofficialNames = [ "Puerto Rico" ]
      }
    , { name = "Rhode Island"
      , code = ""
      , unofficialNames = [ "Rhode Island" ]
      }
    , { name = "South Carolina"
      , code = ""
      , unofficialNames = [ "South Carolina" ]
      }
    , { name = "South Dakota"
      , code = ""
      , unofficialNames = [ "South Dakota" ]
      }
    , { name = "Tennessee"
      , code = ""
      , unofficialNames = [ "Tennessee" ]
      }
    , { name = "Texas"
      , code = ""
      , unofficialNames = [ "Texas" ]
      }
    , { name = "United States Minor Outlying Islands"
      , code = ""
      , unofficialNames = [ "United States Minor Outlying Islands" ]
      }
    , { name = "Utah"
      , code = ""
      , unofficialNames = [ "Utah" ]
      }
    , { name = "Virginia"
      , code = ""
      , unofficialNames = [ "Virginia" ]
      }
    , { name = "Virgin Islands, U.S."
      , code = ""
      , unofficialNames = [ "Virgin Islands, U.S." ]
      }
    , { name = "Vermont"
      , code = ""
      , unofficialNames = [ "Vermont" ]
      }
    , { name = "Washington"
      , code = ""
      , unofficialNames = [ "Washington" ]
      }
    , { name = "Wisconsin"
      , code = ""
      , unofficialNames = [ "Wisconsin" ]
      }
    , { name = "West Virginia"
      , code = ""
      , unofficialNames = [ "West Virginia" ]
      }
    , { name = "Wyoming"
      , code = ""
      , unofficialNames = [ "Wyoming" ]
      }
    ]


{-| -}
uruguaySubdivisions : List Subdivision
uruguaySubdivisions =
    [ { name = "Artigas"
      , code = ""
      , unofficialNames = [ "Artigas" ]
      }
    , { name = "Canelones"
      , code = ""
      , unofficialNames = [ "Canelones" ]
      }
    , { name = "Colonia"
      , code = ""
      , unofficialNames = [ "Colonia" ]
      }
    , { name = "Cerro Lago"
      , code = ""
      , unofficialNames = [ "Cerro Lago" ]
      }
    , { name = "Durazno"
      , code = ""
      , unofficialNames = [ "Durazno" ]
      }
    , { name = "Florida"
      , code = ""
      , unofficialNames = [ "FLorida" ]
      }
    , { name = "Flores"
      , code = ""
      , unofficialNames = [ "Flores" ]
      }
    , { name = "Lavalleja"
      , code = ""
      , unofficialNames = [ "Lavalleja" ]
      }
    , { name = "Maldonado"
      , code = ""
      , unofficialNames = [ "Maldonado" ]
      }
    , { name = "Montevideo"
      , code = ""
      , unofficialNames = [ "Montevideo" ]
      }
    , { name = "Paysandú"
      , code = ""
      , unofficialNames = [ "Paysandú" ]
      }
    , { name = "Río Negro"
      , code = ""
      , unofficialNames = [ "Río Negro" ]
      }
    , { name = "Rocha"
      , code = ""
      , unofficialNames = [ "Rocha" ]
      }
    , { name = "Rivera"
      , code = ""
      , unofficialNames = [ "Rivera" ]
      }
    , { name = "Salto"
      , code = ""
      , unofficialNames = [ "Salto" ]
      }
    , { name = "San José"
      , code = ""
      , unofficialNames = [ "San José" ]
      }
    , { name = "Soriano"
      , code = ""
      , unofficialNames = [ "Soriano" ]
      }
    , { name = "Tacuarembó"
      , code = ""
      , unofficialNames = [ "Tacuarembó" ]
      }
    , { name = "Treinta y Tres"
      , code = ""
      , unofficialNames = [ "Treinta y Tres" ]
      }
    ]


{-| -}
uzbekistanSubdivisions : List Subdivision
uzbekistanSubdivisions =
    [ { name = "Andijon"
      , code = ""
      , unofficialNames = [ "Andijon", "Andizhan", "Andižan" ]
      }
    , { name = "Buxoro"
      , code = ""
      , unofficialNames = [ "Boukhara", "Buchara", "Buhara", "Buhoro", "Bukhara", "Bukhoro" ]
      }
    , { name = "Farg‘ona"
      , code = ""
      , unofficialNames = [ "Farghona", "Fergana", "Ferghana", "Ferghona" ]
      }
    , { name = "Jizzax"
      , code = ""
      , unofficialNames = [ "Cizah", "Cizak", "Djizak", "Dzhizak", "Džizak", "Jizzakh" ]
      }
    , { name = "Namangan"
      , code = ""
      , unofficialNames = [ "Namangan", "Namaņgan" ]
      }
    , { name = "Navoiy"
      , code = ""
      , unofficialNames = [ "Navoi", "Navoj", "Navoy" ]
      }
    , { name = "Qashqadaryo"
      , code = ""
      , unofficialNames = [ "Kashkadar", "Kashkadaria", "Kashkadarya", "Kaskadar", "Qashqadar", "Qasqadar", "Qaşqadar", "Ķaşķadar" ]
      }
    , { name = "Qoraqalpog‘iston Respublikasi"
      , code = ""
      , unofficialNames = [ "Karakalpakistan", "Qoraqalpoghiston", "Qoraqalpogiston" ]
      }
    , { name = "Samarqand"
      , code = ""
      , unofficialNames = [ "Samarqand", "Samarķand", "Samarkand", "Samarkand" ]
      }
    , { name = "Sirdaryo"
      , code = ""
      , unofficialNames = [ "Sirdare", "Syrdarja", "Syrdarya" ]
      }
    , { name = "Surxondaryo"
      , code = ""
      , unofficialNames = [ "Surkhondar" ]
      }
    , { name = "Toshkent City"
      , code = ""
      , unofficialNames = [ "Toshkent City" ]
      }
    , { name = "Toshkent"
      , code = ""
      , unofficialNames = [ "Taškent", "Toshkent", "Toşkent", "Toshkent", "Taschkent", "Tachkent" ]
      }
    , { name = "Xorazm"
      , code = ""
      , unofficialNames = [ "Khorazm" ]
      }
    ]


{-| -}
saintVincentAndTheGrenadinesSubdivisions : List Subdivision
saintVincentAndTheGrenadinesSubdivisions =
    [ { name = "Charlotte"
      , code = ""
      , unofficialNames = [ "Charlotte" ]
      }
    , { name = "Saint Andrew"
      , code = ""
      , unofficialNames = [ "Saint Andrew" ]
      }
    , { name = "Saint David"
      , code = ""
      , unofficialNames = [ "Saint David" ]
      }
    , { name = "Saint George"
      , code = ""
      , unofficialNames = [ "Saint George" ]
      }
    , { name = "Saint Patrick"
      , code = ""
      , unofficialNames = [ "Saint Patrick" ]
      }
    , { name = "Grenadines"
      , code = ""
      , unofficialNames = [ "Grenadines" ]
      }
    ]


{-| -}
venezuelaBolivarianRepublicOfSubdivisions : List Subdivision
venezuelaBolivarianRepublicOfSubdivisions =
    [ { name = "Distrito Federal"
      , code = ""
      , unofficialNames = [ "Distrito Federal" ]
      }
    , { name = "Anzoátegui"
      , code = ""
      , unofficialNames = [ "Anzoátegui" ]
      }
    , { name = "Apure"
      , code = ""
      , unofficialNames = [ "Apure" ]
      }
    , { name = "Aragua"
      , code = ""
      , unofficialNames = [ "Aragua" ]
      }
    , { name = "Barinas"
      , code = ""
      , unofficialNames = [ "Barinas" ]
      }
    , { name = "Bolívar"
      , code = ""
      , unofficialNames = [ "Bolívar" ]
      }
    , { name = "Carabobo"
      , code = ""
      , unofficialNames = [ "Carabobo" ]
      }
    , { name = "Cojedes"
      , code = ""
      , unofficialNames = [ "Cojedes" ]
      }
    , { name = "Falcón"
      , code = ""
      , unofficialNames = [ "Falcón" ]
      }
    , { name = "Guárico"
      , code = ""
      , unofficialNames = [ "Guárico" ]
      }
    , { name = "Lara"
      , code = ""
      , unofficialNames = [ "Lara" ]
      }
    , { name = "Mérida"
      , code = ""
      , unofficialNames = [ "Mérida" ]
      }
    , { name = "Miranda"
      , code = ""
      , unofficialNames = [ "Miranda" ]
      }
    , { name = "Monagas"
      , code = ""
      , unofficialNames = [ "Monagas" ]
      }
    , { name = "Nueva Esparta"
      , code = ""
      , unofficialNames = [ "Nueva Esparta" ]
      }
    , { name = "Portuguesa"
      , code = ""
      , unofficialNames = [ "Portuguesa" ]
      }
    , { name = "Sucre"
      , code = ""
      , unofficialNames = [ "Sucre" ]
      }
    , { name = "Táchira"
      , code = ""
      , unofficialNames = [ "Táchira" ]
      }
    , { name = "Trujillo"
      , code = ""
      , unofficialNames = [ "Trujillo" ]
      }
    , { name = "Yaracuy"
      , code = ""
      , unofficialNames = [ "Yaracuy" ]
      }
    , { name = "Zulia"
      , code = ""
      , unofficialNames = [ "Zulia" ]
      }
    , { name = "Dependencias Federales"
      , code = ""
      , unofficialNames = [ "Dependencias Federales" ]
      }
    , { name = "Vargas"
      , code = ""
      , unofficialNames = [ "Vargas" ]
      }
    , { name = "Delta Amacuro"
      , code = ""
      , unofficialNames = [ "Delta Amacuro" ]
      }
    , { name = "Amazonas"
      , code = ""
      , unofficialNames = [ "Amazonas" ]
      }
    ]


{-| -}
virginIslandsUSSubdivisions : List Subdivision
virginIslandsUSSubdivisions =
    [ { name = "Saint Croix"
      , code = ""
      , unofficialNames = [ "Saint Croix" ]
      }
    , { name = "Saint John"
      , code = ""
      , unofficialNames = [ "Saint John" ]
      }
    , { name = "Saint Thomas"
      , code = ""
      , unofficialNames = [ "Saint Thomas" ]
      }
    ]


{-| -}
vietNamSubdivisions : List Subdivision
vietNamSubdivisions =
    [ { name = "Ho Chi Minh"
      , code = ""
      , unofficialNames = [ "Sai Gon" ]
      }
    , { name = "Ha Noi"
      , code = ""
      , unofficialNames = [ "Ha Noi, thu do" ]
      }
    , { name = "Can Tho"
      , code = ""
      , unofficialNames = [ "Can Tho" ]
      }
    , { name = "Da Nang"
      , code = ""
      , unofficialNames = [ "Da Nang, thanh pho" ]
      }
    , { name = "Hai Phong"
      , code = ""
      , unofficialNames = [ "Hai Phong, thanh pho" ]
      }
    , { name = "An Giang"
      , code = ""
      , unofficialNames = [ "An Giang" ]
      }
    , { name = "Ba Ria - Vung Tau"
      , code = ""
      , unofficialNames = [ "Ba Ria - Vung Tau" ]
      }
    , { name = "Bac Giang"
      , code = ""
      , unofficialNames = [ "Bac Giang" ]
      }
    , { name = "Bac Can"
      , code = ""
      , unofficialNames = [ "Bac Can" ]
      }
    , { name = "Bac Lieu"
      , code = ""
      , unofficialNames = [ "Bac Lieu" ]
      }
    , { name = "Bac Ninh"
      , code = ""
      , unofficialNames = [ "Bac Ninh" ]
      }
    , { name = "Ben Tre"
      , code = ""
      , unofficialNames = [ "Ben Tre" ]
      }
    , { name = "Binh Dinh"
      , code = ""
      , unofficialNames = [ "Binh Dinh" ]
      }
    , { name = "Binh Duong"
      , code = ""
      , unofficialNames = [ "Binh Duong" ]
      }
    , { name = "Binh Phuoc"
      , code = ""
      , unofficialNames = [ "Binh Phuoc" ]
      }
    , { name = "Binh Thuan"
      , code = ""
      , unofficialNames = [ "Binh Thuan" ]
      }
    , { name = "Ca Mau"
      , code = ""
      , unofficialNames = [ "Ca Mau" ]
      }
    , { name = "Cao Bang"
      , code = ""
      , unofficialNames = [ "Cao Bang" ]
      }
    , { name = "Dac Lac"
      , code = ""
      , unofficialNames = [ "Dac Lac" ]
      }
    , { name = "Dak Nong"
      , code = ""
      , unofficialNames = [ "Dak Nong" ]
      }
    , { name = "Dien Bien"
      , code = ""
      , unofficialNames = [ "Dien Bien" ]
      }
    , { name = "Dong Nai"
      , code = ""
      , unofficialNames = [ "Dong Nai" ]
      }
    , { name = "Dong Thap"
      , code = ""
      , unofficialNames = [ "Dong Thap" ]
      }
    , { name = "Gia Lai"
      , code = ""
      , unofficialNames = [ "Gia Lai" ]
      }
    , { name = "Ha Giang"
      , code = ""
      , unofficialNames = [ "Ha Giang" ]
      }
    , { name = "Ha Nam"
      , code = ""
      , unofficialNames = [ "Ha Nam" ]
      }
    , { name = "Ha Tinh"
      , code = ""
      , unofficialNames = [ "Ha Tinh" ]
      }
    , { name = "Hai Duong"
      , code = ""
      , unofficialNames = [ "Hai Duong" ]
      }
    , { name = "Hau Giang"
      , code = ""
      , unofficialNames = [ "Hau Giang" ]
      }
    , { name = "Hoa Binh"
      , code = ""
      , unofficialNames = [ "Hoa Binh" ]
      }
    , { name = "Hung Yen"
      , code = ""
      , unofficialNames = [ "Hung Yen" ]
      }
    , { name = "Khanh Hoa"
      , code = ""
      , unofficialNames = [ "Khanh Hoa" ]
      }
    , { name = "Kien Giang"
      , code = ""
      , unofficialNames = [ "Kien Giang" ]
      }
    , { name = "Kon Tum"
      , code = ""
      , unofficialNames = [ "Kon Tum" ]
      }
    , { name = "Lai Chau"
      , code = ""
      , unofficialNames = [ "Lai Chau" ]
      }
    , { name = "Lam Dong"
      , code = ""
      , unofficialNames = [ "Lam Dong" ]
      }
    , { name = "Lang Son"
      , code = ""
      , unofficialNames = [ "Lang Son" ]
      }
    , { name = "Lao Cai"
      , code = ""
      , unofficialNames = [ "Lao Cai" ]
      }
    , { name = "Long An"
      , code = ""
      , unofficialNames = [ "Long An" ]
      }
    , { name = "Nam Dinh"
      , code = ""
      , unofficialNames = [ "Nam Dinh" ]
      }
    , { name = "Nghe An"
      , code = ""
      , unofficialNames = [ "Nghe An" ]
      }
    , { name = "Ninh Binh"
      , code = ""
      , unofficialNames = [ "Ninh Binh" ]
      }
    , { name = "Ninh Thuan"
      , code = ""
      , unofficialNames = [ "Ninh Thuan" ]
      }
    , { name = "Phu Tho"
      , code = ""
      , unofficialNames = [ "Phu Tho" ]
      }
    , { name = "Phu Yen"
      , code = ""
      , unofficialNames = [ "Phu Yen" ]
      }
    , { name = "Quang Binh"
      , code = ""
      , unofficialNames = [ "Quang Binh" ]
      }
    , { name = "Quang Nam"
      , code = ""
      , unofficialNames = [ "Quang Nam" ]
      }
    , { name = "Quang Ngai"
      , code = ""
      , unofficialNames = [ "Quang Ngai" ]
      }
    , { name = "Quang Ninh"
      , code = ""
      , unofficialNames = [ "Quang Ninh" ]
      }
    , { name = "Quang Tri"
      , code = ""
      , unofficialNames = [ "Quang Tri" ]
      }
    , { name = "Soc Trang"
      , code = ""
      , unofficialNames = [ "Soc Trang" ]
      }
    , { name = "Son La"
      , code = ""
      , unofficialNames = [ "Son La" ]
      }
    , { name = "Tay Ninh"
      , code = ""
      , unofficialNames = [ "Tay Ninh" ]
      }
    , { name = "Thai Binh"
      , code = ""
      , unofficialNames = [ "Thai Binh" ]
      }
    , { name = "Thai Nguyen"
      , code = ""
      , unofficialNames = [ "Central Highlands" ]
      }
    , { name = "Thanh Hoa"
      , code = ""
      , unofficialNames = [ "Thanh Hoa" ]
      }
    , { name = "Thua Thien-Hue"
      , code = ""
      , unofficialNames = [ "Thua Thien-Hue" ]
      }
    , { name = "Tien Giang"
      , code = ""
      , unofficialNames = [ "Tien Giang" ]
      }
    , { name = "Tra Vinh"
      , code = ""
      , unofficialNames = [ "Tra Vinh" ]
      }
    , { name = "Tuyen Quang"
      , code = ""
      , unofficialNames = [ "Tuyen Quang" ]
      }
    , { name = "Vinh Long"
      , code = ""
      , unofficialNames = [ "Vinh Long" ]
      }
    , { name = "Vinh Phuc"
      , code = ""
      , unofficialNames = [ "Vinh Phuc" ]
      }
    , { name = "Yen Bai"
      , code = ""
      , unofficialNames = [ "Yen Bai" ]
      }
    ]


{-| -}
vanuatuSubdivisions : List Subdivision
vanuatuSubdivisions =
    [ { name = "Malampa"
      , code = ""
      , unofficialNames = [ "Ambrim", "Ambrym", "Malakula", "Malekula", "Mallicollo", "Paama" ]
      }
    , { name = "Pénama"
      , code = ""
      , unofficialNames = [ "Ambae-Maewo", "Aoba-Maewo", "Omba-Aurora", "Omba-Maewo", "Pentecost" ]
      }
    , { name = "Sanma"
      , code = ""
      , unofficialNames = [ "Santo-Malo" ]
      }
    , { name = "Shéfa"
      , code = ""
      , unofficialNames = [ "Sandwich Island", "Vaté", "Éfaté" ]
      }
    , { name = "Taféa"
      , code = ""
      , unofficialNames = [ "Taféa" ]
      }
    , { name = "Torba"
      , code = ""
      , unofficialNames = [ "Banks-Torres" ]
      }
    ]


{-| -}
wallisAndFutunaSubdivisions : List Subdivision
wallisAndFutunaSubdivisions =
    []


{-| -}
samoaSubdivisions : List Subdivision
samoaSubdivisions =
    [ { name = "A'ana"
      , code = ""
      , unofficialNames = [ "A'ana" ]
      }
    , { name = "Aiga-i-le-Tai"
      , code = ""
      , unofficialNames = [ "Aiga-i-le-Tai" ]
      }
    , { name = "Atua"
      , code = ""
      , unofficialNames = [ "Atua" ]
      }
    , { name = "Fa'asaleleaga"
      , code = ""
      , unofficialNames = [ "Fa'asaleleaga" ]
      }
    , { name = "Gaga'emauga"
      , code = ""
      , unofficialNames = [ "Gaga'emauga" ]
      }
    , { name = "Gagaifomauga"
      , code = ""
      , unofficialNames = [ "Gagaifomauga" ]
      }
    , { name = "Palauli"
      , code = ""
      , unofficialNames = [ "Palauli" ]
      }
    , { name = "Satupa'itea"
      , code = ""
      , unofficialNames = [ "Satupa'itea" ]
      }
    , { name = "Tuamasaga"
      , code = ""
      , unofficialNames = [ "Tuamasaga" ]
      }
    , { name = "Va'a-o-Fonoti"
      , code = ""
      , unofficialNames = [ "Va'a-o-Fonoti" ]
      }
    , { name = "Vaisigano"
      , code = ""
      , unofficialNames = [ "Vaisigano" ]
      }
    ]


{-| -}
yemenSubdivisions : List Subdivision
yemenSubdivisions =
    [ { name = "Abyan"
      , code = ""
      , unofficialNames = [ "Abyan" ]
      }
    , { name = "ʿAdan"
      , code = ""
      , unofficialNames = [ "Adan", "ʿAdan", "Aden", "Aden", "Adén" ]
      }
    , { name = "'Amran"
      , code = ""
      , unofficialNames = [ "'Amran" ]
      }
    , { name = "Al Bayḑā’"
      , code = ""
      , unofficialNames = [ "Al Baida" ]
      }
    , { name = "Ad¸ D¸ali'"
      , code = ""
      , unofficialNames = [ "Ad¸ D¸ali'" ]
      }
    , { name = "Dhamar"
      , code = ""
      , unofficialNames = [ "Dhamar", "Dhomar", "Đomar" ]
      }
    , { name = "Hadramawt"
      , code = ""
      , unofficialNames = [ "Hadramout" ]
      }
    , { name = "Hajjah"
      , code = ""
      , unofficialNames = [ "Hajjah" ]
      }
    , { name = "Al Ḩudaydah"
      , code = ""
      , unofficialNames = [ "Hodeida", "Hodeidah", "Hodeïah", "H̨udaydah", "al-Hudaydah" ]
      }
    , { name = "Ibb"
      , code = ""
      , unofficialNames = [ "Ibb" ]
      }
    , { name = "Al Jawf"
      , code = ""
      , unofficialNames = [ "Al Jawf" ]
      }
    , { name = "Laḩij"
      , code = ""
      , unofficialNames = [ "Lahej", "Lahj" ]
      }
    , { name = "Ma'rib"
      , code = ""
      , unofficialNames = [ "Marab", "Mareb" ]
      }
    , { name = "Al Mahrah"
      , code = ""
      , unofficialNames = [ "Al Mahrah" ]
      }
    , { name = "Al Mahwit"
      , code = ""
      , unofficialNames = [ "Al Mahwit" ]
      }
    , { name = "Sa`dah"
      , code = ""
      , unofficialNames = [ "Saʿadah" ]
      }
    , { name = "Shabwah"
      , code = ""
      , unofficialNames = [ "Shabwah" ]
      }
    , { name = "Sanʿā"
      , code = ""
      , unofficialNames = [ "Sana", "Sanaa", "Sanaʿa", "Sanaʿa City", "Sanʿaʿ" ]
      }
    , { name = "Taʿizz"
      , code = ""
      , unofficialNames = [ "Taiz" ]
      }
    ]


{-| -}
mayotteSubdivisions : List Subdivision
mayotteSubdivisions =
    [ { name = "Acoua"
      , code = ""
      , unofficialNames = [ "Acoua" ]
      }
    , { name = "Bandraboua"
      , code = ""
      , unofficialNames = [ "Bandraboua" ]
      }
    , { name = "Bandrele"
      , code = ""
      , unofficialNames = [ "Bandrele" ]
      }
    , { name = "Boueni"
      , code = ""
      , unofficialNames = [ "Boueni" ]
      }
    , { name = "Chiconi"
      , code = ""
      , unofficialNames = [ "Chiconi" ]
      }
    , { name = "Chirongui"
      , code = ""
      , unofficialNames = [ "Chirongui" ]
      }
    , { name = "Dembeni"
      , code = ""
      , unofficialNames = [ "Dembeni" ]
      }
    , { name = "Dzaoudzi"
      , code = ""
      , unofficialNames = [ "Dzaoudzi" ]
      }
    , { name = "Kani-Keli"
      , code = ""
      , unofficialNames = [ "Kani-Keli" ]
      }
    , { name = "Koungou"
      , code = ""
      , unofficialNames = [ "Koungou" ]
      }
    , { name = "Mamoudzou"
      , code = ""
      , unofficialNames = [ "Mamoudzou" ]
      }
    , { name = "Mtsamboro"
      , code = ""
      , unofficialNames = [ "Mtsamboro" ]
      }
    , { name = "M'Tsangamouji"
      , code = ""
      , unofficialNames = [ "M'Tsangamouji" ]
      }
    , { name = "Ouangani"
      , code = ""
      , unofficialNames = [ "Ouangani" ]
      }
    , { name = "Pamandzi"
      , code = ""
      , unofficialNames = [ "Pamandzi" ]
      }
    , { name = "Sada"
      , code = ""
      , unofficialNames = [ "Sada" ]
      }
    , { name = "Tsingoni"
      , code = ""
      , unofficialNames = [ "Tsingoni" ]
      }
    ]


{-| -}
southAfricaSubdivisions : List Subdivision
southAfricaSubdivisions =
    [ { name = "Eastern Cape"
      , code = ""
      , unofficialNames = [ "Oos Kaap" ]
      }
    , { name = "Free State"
      , code = ""
      , unofficialNames = [ "Foreistata", "Vrystaat" ]
      }
    , { name = "Gauteng"
      , code = ""
      , unofficialNames = [ "Pretoria-Witwatersrand-Vereeniging" ]
      }
    , { name = "Limpopo"
      , code = ""
      , unofficialNames = [ "Limpopo" ]
      }
    , { name = "Mpumalanga"
      , code = ""
      , unofficialNames = [ "eMpumalanga" ]
      }
    , { name = "Northern Cape"
      , code = ""
      , unofficialNames = [ "Northern Cape" ]
      }
    , { name = "Kwazulu-Natal"
      , code = ""
      , unofficialNames = [ "Kwazulu-Natal" ]
      }
    , { name = "North-West"
      , code = ""
      , unofficialNames = [ "North-West" ]
      }
    , { name = "Western Cape"
      , code = ""
      , unofficialNames = [ "Wes Kaap" ]
      }
    ]


{-| -}
zambiaSubdivisions : List Subdivision
zambiaSubdivisions =
    [ { name = "Western"
      , code = ""
      , unofficialNames = [ "Western" ]
      }
    , { name = "Central"
      , code = ""
      , unofficialNames = [ "Central" ]
      }
    , { name = "Eastern"
      , code = ""
      , unofficialNames = [ "Eastern" ]
      }
    , { name = "Luapula"
      , code = ""
      , unofficialNames = [ "Luapula" ]
      }
    , { name = "Northern"
      , code = ""
      , unofficialNames = [ "Northern" ]
      }
    , { name = "North-Western"
      , code = ""
      , unofficialNames = [ "North-Western" ]
      }
    , { name = "Southern"
      , code = ""
      , unofficialNames = [ "Southern" ]
      }
    , { name = "Copperbelt"
      , code = ""
      , unofficialNames = [ "Copperbelt" ]
      }
    , { name = "Lusaka"
      , code = ""
      , unofficialNames = [ "Lusaka" ]
      }
    ]


{-| -}
zimbabweSubdivisions : List Subdivision
zimbabweSubdivisions =
    [ { name = "Bulawayo"
      , code = ""
      , unofficialNames = [ "Bulawayo" ]
      }
    , { name = "Harare"
      , code = ""
      , unofficialNames = [ "Harare" ]
      }
    , { name = "Manicaland"
      , code = ""
      , unofficialNames = [ "Manicaland" ]
      }
    , { name = "Mashonaland Central"
      , code = ""
      , unofficialNames = [ "Mashonaland Central" ]
      }
    , { name = "Mashonaland East"
      , code = ""
      , unofficialNames = [ "Mashonaland East" ]
      }
    , { name = "Midlands"
      , code = ""
      , unofficialNames = [ "Midlands" ]
      }
    , { name = "Matabeleland North"
      , code = ""
      , unofficialNames = [ "Matabeleland North" ]
      }
    , { name = "Matabeleland South"
      , code = ""
      , unofficialNames = [ "Matabeleland South" ]
      }
    , { name = "Masvingo"
      , code = ""
      , unofficialNames = [ "Masvingo" ]
      }
    , { name = "Mashonaland West"
      , code = ""
      , unofficialNames = [ "Mashonaland West" ]
      }
    ]
