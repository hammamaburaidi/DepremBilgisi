// JSON MODEL ( JASON PARSING)

import Foundation

struct DepremJSONModel: Decodable {
    var result: [Result]
}

struct Result: Decodable, Hashable {
    var title: String
    var date: String
    var mag: Float
    var depth: Double
    var lat: Double
    var lng: Double
}
