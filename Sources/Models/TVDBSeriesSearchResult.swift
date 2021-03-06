//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TVDBSeriesSearchResult: APIModel {

    public let aliases: [String]?

    public let banner: String?

    public let firstAired: String?

    public let id: Int

    public let network: String?

    public let overview: String?

    public let seriesName: String?

    public let slug: String?

    public let status: String?

    public init(aliases: [String]? = nil, banner: String? = nil, firstAired: String? = nil, id: Int, network: String? = nil, overview: String? = nil, seriesName: String? = nil, slug: String? = nil, status: String? = nil) {
        self.aliases = aliases
        self.banner = banner
        self.firstAired = firstAired
        self.id = id
        self.network = network
        self.overview = overview
        self.seriesName = seriesName
        self.slug = slug
        self.status = status
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        aliases = try container.decodeArrayIfPresent("aliases")
        banner = try container.decodeIfPresent("banner")
        firstAired = try container.decodeIfPresent("firstAired")
        id = try container.decode("id")
        network = try container.decodeIfPresent("network")
        overview = try container.decodeIfPresent("overview")
        seriesName = try container.decodeIfPresent("seriesName")
        slug = try container.decodeIfPresent("slug")
        status = try container.decodeIfPresent("status")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(aliases, forKey: "aliases")
        try container.encodeIfPresent(banner, forKey: "banner")
        try container.encodeIfPresent(firstAired, forKey: "firstAired")
        try container.encode(id, forKey: "id")
        try container.encodeIfPresent(network, forKey: "network")
        try container.encodeIfPresent(overview, forKey: "overview")
        try container.encodeIfPresent(seriesName, forKey: "seriesName")
        try container.encodeIfPresent(slug, forKey: "slug")
        try container.encodeIfPresent(status, forKey: "status")
    }

}
