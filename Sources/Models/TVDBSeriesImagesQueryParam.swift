//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TVDBSeriesImagesQueryParam: APIModel {

    public let keyType: String?

    public let languageId: String?

    public let resolution: [String]?

    public let subKey: [String]?

    public init(keyType: String? = nil, languageId: String? = nil, resolution: [String]? = nil, subKey: [String]? = nil) {
        self.keyType = keyType
        self.languageId = languageId
        self.resolution = resolution
        self.subKey = subKey
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        keyType = try container.decodeIfPresent("keyType")
        languageId = try container.decodeIfPresent("languageId")
        resolution = try container.decodeArrayIfPresent("resolution")
        subKey = try container.decodeArrayIfPresent("subKey")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(keyType, forKey: "keyType")
        try container.encodeIfPresent(languageId, forKey: "languageId")
        try container.encodeIfPresent(resolution, forKey: "resolution")
        try container.encodeIfPresent(subKey, forKey: "subKey")
    }

}
