//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TVDBLinks: APIModel {

    public let first: Int?

    public let last: Int?

    public let next: Int?

    public let previous: Int?

    public init(first: Int? = nil, last: Int? = nil, next: Int? = nil, previous: Int? = nil) {
        self.first = first
        self.last = last
        self.next = next
        self.previous = previous
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        first = try container.decodeIfPresent("first")
        last = try container.decodeIfPresent("last")
        next = try container.decodeIfPresent("next")
        previous = try container.decodeIfPresent("previous")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(first, forKey: "first")
        try container.encodeIfPresent(last, forKey: "last")
        try container.encodeIfPresent(next, forKey: "next")
        try container.encodeIfPresent(previous, forKey: "previous")
    }

}
