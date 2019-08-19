//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TVDBSeriesActors: APIModel {

    public let data: [TVDBSeriesActorsData]?

    public let errors: TVDBJSONErrors?

    public init(data: [TVDBSeriesActorsData]? = nil, errors: TVDBJSONErrors? = nil) {
        self.data = data
        self.errors = errors
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeArrayIfPresent("data")
        errors = try container.decodeIfPresent("errors")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(data, forKey: "data")
        try container.encodeIfPresent(errors, forKey: "errors")
    }

}
