//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TVDBSeries: APIModel {

    public let added: String?

    public let airsDayOfWeek: String?

    public let airsTime: String?

    public let aliases: [String]?

    public let banner: String?

    public let firstAired: String?

    public let genre: [String]?

    public let id: Int

    public let imdbId: String?

    public let lastUpdated: Int?

    public let network: String?

    public let networkId: String?

    public let overview: String?

    public let rating: String?

    public let runtime: String?

    public let seriesId: String?

    public let seriesName: String?

    public let siteRating: Double?

    public let siteRatingCount: Int?

    public let slug: String?

    public let status: String?

    public let zap2itId: String?

    public init(added: String? = nil, airsDayOfWeek: String? = nil, airsTime: String? = nil, aliases: [String]? = nil, banner: String? = nil, firstAired: String? = nil, genre: [String]? = nil, id: Int, imdbId: String? = nil, lastUpdated: Int? = nil, network: String? = nil, networkId: String? = nil, overview: String? = nil, rating: String? = nil, runtime: String? = nil, seriesId: String? = nil, seriesName: String? = nil, siteRating: Double? = nil, siteRatingCount: Int? = nil, slug: String? = nil, status: String? = nil, zap2itId: String? = nil) {
        self.added = added
        self.airsDayOfWeek = airsDayOfWeek
        self.airsTime = airsTime
        self.aliases = aliases
        self.banner = banner
        self.firstAired = firstAired
        self.genre = genre
        self.id = id
        self.imdbId = imdbId
        self.lastUpdated = lastUpdated
        self.network = network
        self.networkId = networkId
        self.overview = overview
        self.rating = rating
        self.runtime = runtime
        self.seriesId = seriesId
        self.seriesName = seriesName
        self.siteRating = siteRating
        self.siteRatingCount = siteRatingCount
        self.slug = slug
        self.status = status
        self.zap2itId = zap2itId
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        added = try container.decodeIfPresent("added")
        airsDayOfWeek = try container.decodeIfPresent("airsDayOfWeek")
        airsTime = try container.decodeIfPresent("airsTime")
        aliases = try container.decodeArrayIfPresent("aliases")
        banner = try container.decodeIfPresent("banner")
        firstAired = try container.decodeIfPresent("firstAired")
        genre = try container.decodeArrayIfPresent("genre")
        id = try container.decodeIfPresent("id")
        imdbId = try container.decodeIfPresent("imdbId")
        lastUpdated = try container.decodeIfPresent("lastUpdated")
        network = try container.decodeIfPresent("network")
        networkId = try container.decodeIfPresent("networkId")
        overview = try container.decodeIfPresent("overview")
        rating = try container.decodeIfPresent("rating")
        runtime = try container.decodeIfPresent("runtime")
        seriesId = try container.decodeIfPresent("seriesId")
        seriesName = try container.decodeIfPresent("seriesName")
        siteRating = try container.decodeIfPresent("siteRating")
        siteRatingCount = try container.decodeIfPresent("siteRatingCount")
        slug = try container.decodeIfPresent("slug")
        status = try container.decodeIfPresent("status")
        zap2itId = try container.decodeIfPresent("zap2itId")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(added, forKey: "added")
        try container.encodeIfPresent(airsDayOfWeek, forKey: "airsDayOfWeek")
        try container.encodeIfPresent(airsTime, forKey: "airsTime")
        try container.encodeIfPresent(aliases, forKey: "aliases")
        try container.encodeIfPresent(banner, forKey: "banner")
        try container.encodeIfPresent(firstAired, forKey: "firstAired")
        try container.encodeIfPresent(genre, forKey: "genre")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(imdbId, forKey: "imdbId")
        try container.encodeIfPresent(lastUpdated, forKey: "lastUpdated")
        try container.encodeIfPresent(network, forKey: "network")
        try container.encodeIfPresent(networkId, forKey: "networkId")
        try container.encodeIfPresent(overview, forKey: "overview")
        try container.encodeIfPresent(rating, forKey: "rating")
        try container.encodeIfPresent(runtime, forKey: "runtime")
        try container.encodeIfPresent(seriesId, forKey: "seriesId")
        try container.encodeIfPresent(seriesName, forKey: "seriesName")
        try container.encodeIfPresent(siteRating, forKey: "siteRating")
        try container.encodeIfPresent(siteRatingCount, forKey: "siteRatingCount")
        try container.encodeIfPresent(slug, forKey: "slug")
        try container.encodeIfPresent(status, forKey: "status")
        try container.encodeIfPresent(zap2itId, forKey: "zap2itId")
    }

}
