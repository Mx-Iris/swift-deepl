import Foundation

public struct TranslateTextRequest: Encodable {
    public enum Formality: String, Codable {
        case `default`
        case more
        case less
        case preferMore = "prefer_more"
        case preferLess = "prefer_less"
    }

    public enum SplitSentences: String, Codable {
        case never = "0"
        case always = "1"
        case nonewlines
    }

    public enum ModelType: String, Codable {
        case latencyOptimized = "latency_optimized"
        case qualityOptimized = "quality_optimized"
        case preferQualityOptimized = "prefer_quality_optimized"
    }

    public enum TagHandling: String, Codable {
        case xml
        case html
    }

    private enum CodingKeys: String, CodingKey {
        case text
        case sourceLanguage = "source_lang"
        case targetLanguage = "target_lang"
        case context
        case modelType = "model_type"
        case splitSentences = "split_sentences"
        case preserveFormatting = "preserve_formatting"
        case formality
        case glossaryID = "glossary_id"
        case showBilledCharacters = "show_billed_characters"
        case tagHandling = "tag_handling"
        case outlineDetection = "outline_detection"
        case nonSplittingTags = "non_splitting_tags"
        case splittingTags = "splitting_tags"
        case ignoreTags = "ignore_tags"
    }

    public let text: String
    public let sourceLanguage: TranslationLanguage?
    public let targetLanguage: TranslationLanguage
    public let context: String?
    public let modelType: ModelType?
    public let splitSentences: SplitSentences?
    public let preserveFormatting: Bool?
    public let formality: Formality?
    public let glossaryID: String?
    public let showBilledCharacters: Bool?
    public let tagHandling: TagHandling?
    public let outlineDetection: Bool?
    public let nonSplittingTags: [String]?
    public let splittingTags: [String]?
    public let ignoreTags: [String]?

    public init(
        text: String,
        sourceLanguage: TranslationLanguage? = nil,
        targetLanguage: TranslationLanguage,
        context: String? = nil,
        modelType: ModelType? = nil,
        splitSentences: SplitSentences? = nil,
        preserveFormatting: Bool? = nil,
        formality: Formality? = nil,
        glossaryID: String? = nil,
        showBilledCharacters: Bool? = nil,
        tagHandling: TagHandling? = nil,
        outlineDetection: Bool? = nil,
        nonSplittingTags: [String]? = nil,
        splittingTags: [String]? = nil,
        ignoreTags: [String]? = nil
    ) {
        self.text = text
        self.sourceLanguage = sourceLanguage
        self.targetLanguage = targetLanguage
        self.context = context
        self.modelType = modelType
        self.splitSentences = splitSentences
        self.preserveFormatting = preserveFormatting
        self.formality = formality
        self.glossaryID = glossaryID
        self.showBilledCharacters = showBilledCharacters
        self.tagHandling = tagHandling
        self.outlineDetection = outlineDetection
        self.nonSplittingTags = nonSplittingTags
        self.splittingTags = splittingTags
        self.ignoreTags = ignoreTags
    }
}

public struct TranslateTextResponse: Decodable {
    public struct Translation: Decodable {
        public let detectedSourceLanguage: TranslationLanguage
        public let text: String
        public let billedCharacters: Int?
        public let modelTypeUsed: TranslateTextRequest.ModelType?

        private enum CodingKeys: String, CodingKey {
            case detectedSourceLanguage = "detected_source_language"
            case text
            case billedCharacters = "billed_characters"
            case modelTypeUsed = "model_type_used"
        }
    }

    public let translations: [Translation]
}
