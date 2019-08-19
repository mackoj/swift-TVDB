//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TVDBEpisodeLanguageInfo: APIModel {

    public let episodeName: String?

    public let overview: String?

    public init(episodeName: String? = nil, overview: String? = nil) {
        self.episodeName = episodeName
        self.overview = overview
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        episodeName = try container.decodeIfPresent("episodeName")
        overview = try container.decodeIfPresent("overview")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(episodeName, forKey: "episodeName")
        try container.encodeIfPresent(overview, forKey: "overview")
    }

}
