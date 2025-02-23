import Testing
@testable import DeepL
import Papyrus

let client = Client(version: .pro, apiKey: apiKey)

@Test func example() async throws {
    do {
        let response = try await client.translateText(.init(text: "Hello World!", targetLanguage: .chineseSimplified))
        print(response)
    } catch {
        if let error = error as? PapyrusError {
            print(error.message)
        }
    }
    
}
