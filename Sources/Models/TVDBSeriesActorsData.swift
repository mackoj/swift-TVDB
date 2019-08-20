//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public struct TVDBSeriesActorsData: APIModel {

    public let id: Int

    public let image: String?

    public let imageAdded: String?

    public let imageAuthor: Int?

    public let lastUpdated: String?

    public let name: String?

    public let role: String?

    public let seriesId: Int?

    public let sortOrder: Int?

    public init(id: Int, image: String? = nil, imageAdded: String? = nil, imageAuthor: Int? = nil, lastUpdated: String? = nil, name: String? = nil, role: String? = nil, seriesId: Int? = nil, sortOrder: Int? = nil) {
        self.id = id
        self.image = image
        self.imageAdded = imageAdded
        self.imageAuthor = imageAuthor
        self.lastUpdated = lastUpdated
        self.name = name
        self.role = role
        self.seriesId = seriesId
        self.sortOrder = sortOrder
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        id = try container.decodeIfPresent("id")
        image = try container.decodeIfPresent("image")
        imageAdded = try container.decodeIfPresent("imageAdded")
        imageAuthor = try container.decodeIfPresent("imageAuthor")
        lastUpdated = try container.decodeIfPresent("lastUpdated")
        name = try container.decodeIfPresent("name")
        role = try container.decodeIfPresent("role")
        seriesId = try container.decodeIfPresent("seriesId")
        sortOrder = try container.decodeIfPresent("sortOrder")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(image, forKey: "image")
        try container.encodeIfPresent(imageAdded, forKey: "imageAdded")
        try container.encodeIfPresent(imageAuthor, forKey: "imageAuthor")
        try container.encodeIfPresent(lastUpdated, forKey: "lastUpdated")
        try container.encodeIfPresent(name, forKey: "name")
        try container.encodeIfPresent(role, forKey: "role")
        try container.encodeIfPresent(seriesId, forKey: "seriesId")
        try container.encodeIfPresent(sortOrder, forKey: "sortOrder")
    }

}
