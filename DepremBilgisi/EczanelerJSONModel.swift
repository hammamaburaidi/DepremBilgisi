// JSON MODEL ( JASON PARSING)

import Foundation

struct EczanelerJSONModel: Decodable {
    var data: Data
}

struct Data: Codable {
    let city: Cites
    
    enum CodingKeys: String, CodingKey {
        case city = "0"
    }
}

struct Cites: Codable {
    var cityName: String
    var area: [Area]
    
    enum CodingKeys: String, CodingKey {
        case cityName = "CityName"
        case area = "area"
    }
}

struct Area: Codable {
    var areaName : String
    var pharmacy: [Pharmacy]
}

struct Pharmacy: Codable {
    var name: String
    var phone: String
    var address: String
}
