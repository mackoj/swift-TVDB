//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TVDBLanguage: APIModel {

    public let abbreviation: String?

    public let englishName: String?

    public let id: Int?

    public let name: String?

    public init(abbreviation: String? = nil, englishName: String? = nil, id: Int? = nil, name: String? = nil) {
        self.abbreviation = abbreviation
        self.englishName = englishName
        self.id = id
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        abbreviation = try container.decodeIfPresent("abbreviation")
        englishName = try container.decodeIfPresent("englishName")
        id = try container.decodeIfPresent("id")
        name = try container.decodeIfPresent("name")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(abbreviation, forKey: "abbreviation")
        try container.encodeIfPresent(englishName, forKey: "englishName")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(name, forKey: "name")
    }

}
