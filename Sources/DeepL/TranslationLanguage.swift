import Foundation

/**
 AR - Arabic

 BG - Bulgarian

 CS - Czech

 DA - Danish

 DE - German

 EL - Greek

 EN - English (unspecified variant for backward compatibility; please select EN-GB or EN-US instead)

 EN-GB - English (British)

 EN-US - English (American)

 ES - Spanish

 ET - Estonian

 FI - Finnish

 FR - French

 HU - Hungarian

 ID - Indonesian

 IT - Italian

 JA - Japanese

 KO - Korean

 LT - Lithuanian

 LV - Latvian

 NB - Norwegian Bokmål

 NL - Dutch

 PL - Polish

 PT - Portuguese (unspecified variant for backward compatibility; please select PT-BR or PT-PT instead)

 PT-BR - Portuguese (Brazilian)

 PT-PT - Portuguese (all Portuguese variants excluding Brazilian Portuguese)

 RO - Romanian

 RU - Russian

 SK - Slovak

 SL - Slovenian

 SV - Swedish

 TR - Turkish

 UK - Ukrainian

 ZH - Chinese (unspecified variant for backward compatibility; please select ZH-HANS or ZH-HANT instead)

 ZH-HANS - Chinese (simplified)

 ZH-HANT - Chinese (traditional)
 */
public enum TranslationLanguage: String, Codable {
    case arabic = "AR"
    case bulgarian = "BG"
    case czech = "CS"
    case danish = "DA"
    case german = "DE"
    case greek = "EL"
    case english = "EN"
    case englishBritish = "EN-GB"
    case englishAmerican = "EN-US"
    case spanish = "ES"
    case estonian = "ET"
    case finnish = "FI"
    case french = "FR"
    case hungarian = "HU"
    case indonesian = "ID"
    case italian = "IT"
    case japanese = "JA"
    case korean = "KO"
    case lithuanian = "LT"
    case latvian = "LV"
    case norwegianBokmal = "NB"
    case dutch = "NL"
    case polish = "PL"
    case portuguese = "PT"
    case portugueseBrazilian = "PT-BR"
    case portuguesePortugal = "PT-PT"
    case romanian = "RO"
    case russian = "RU"
    case slovak = "SK"
    case slovenian = "SL"
    case swedish = "SV"
    case turkish = "TR"
    case ukrainian = "UK"
    case chinese = "ZH"
    case chineseSimplified = "ZH-HANS"
    case chineseTraditional = "ZH-HANT"
}
