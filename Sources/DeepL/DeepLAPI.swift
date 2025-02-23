import Foundation
import Papyrus

@API
protocol DeepL {
    @URLForm
    @POST("/translate")
    func translateText(_ request: Body<TranslateTextRequest>) async throws -> TranslateTextResponse
}
