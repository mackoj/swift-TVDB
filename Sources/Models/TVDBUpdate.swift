//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TVDBUpdate: APIModel {

    public let id: Int

    public let lastUpdated: Int?

    public init(id: Int, lastUpdated: Int? = nil) {
        self.id = id
        self.lastUpdated = lastUpdated
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decode("id")
        lastUpdated = try container.decodeIfPresent("lastUpdated")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(id, forKey: "id")
        try container.encodeIfPresent(lastUpdated, forKey: "lastUpdated")
    }

}
