import Foundation
import Papyrus

public final class Client {
    public enum Version {
        case free
        case pro
        
        var baseURL: String {
            switch self {
            case .free:
                return "https://api-free.deepl.com/v2"
            case .pro:
                return "https://api.deepl.com/v2"
            }
        }
    }
    
    private let version: Version
    private let apiKey: String
    private let provider: Provider
    private let api: DeepLAPI
    
    public init(version: Version, apiKey: String) {
        self.version = version
        self.apiKey = apiKey
        self.provider = Provider(baseURL: version.baseURL)
            .modifyRequests { builder in
                builder.addAuthorization(.init(value: "DeepL-Auth-Key \(apiKey)"))
            }
        self.api = DeepLAPI(provider: provider)
    }
    
    public func translateText(_ request: TranslateTextRequest) async throws -> TranslateTextResponse {
        try await api.translateText(request)
    }
}
