//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TVDB.Search {

    /** Allows the user to search for a series based on the following parameters. */
    public enum GetSearchSeries {

        public static let service = APIService<Response>(id: "getSearchSeries", tag: "Search", method: "GET", path: "/search/series", hasBody: false, securityRequirement: SecurityRequirement(type: "jwtToken", scopes: []))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Name of the series to search for. */
                public var name: String?

                /** IMDB id of the series */
                public var imdbId: String?

                /** Zap2it ID of the series to search for. */
                public var zap2itId: String?

                /** Slug from site URL of series (https://www.thetvdb.com/series/$SLUG) */
                public var slug: String?

                /** Records are returned with the Episode name and Overview in the desired language, if it exists. If there is no translation for the given language, then the record is still returned but with empty values for the translated fields. */
                public var acceptLanguage: String?

                public init(name: String? = nil, imdbId: String? = nil, zap2itId: String? = nil, slug: String? = nil, acceptLanguage: String? = nil) {
                    self.name = name
                    self.imdbId = imdbId
                    self.zap2itId = zap2itId
                    self.slug = slug
                    self.acceptLanguage = acceptLanguage
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetSearchSeries.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(name: String? = nil, imdbId: String? = nil, zap2itId: String? = nil, slug: String? = nil, acceptLanguage: String? = nil) {
                let options = Options(name: name, imdbId: imdbId, zap2itId: zap2itId, slug: slug, acceptLanguage: acceptLanguage)
                self.init(options: options)
            }

            public override var queryParameters: [String: Any] {
                var params: [String: Any] = [:]
                if let name = options.name {
                  params["name"] = name
                }
                if let imdbId = options.imdbId {
                  params["imdbId"] = imdbId
                }
                if let zap2itId = options.zap2itId {
                  params["zap2itId"] = zap2itId
                }
                if let slug = options.slug {
                  params["slug"] = slug
                }
                return params
            }

            override var headerParameters: [String: String] {
                var headers: [String: String] = [:]
                if let acceptLanguage = options.acceptLanguage {
                  headers["Accept-Language"] = acceptLanguage
                }
                return headers
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = TVDBSeriesSearchResults

            /** An array of results that match the provided query. */
            case status200(TVDBSeriesSearchResults)

            /** Returned if your JWT token is missing or expired */
            case status401(TVDBNotAuthorized)

            /** Returned if no records are found that match your query. */
            case status404(TVDBNotFound)

            public var success: TVDBSeriesSearchResults? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .status401(let response): return response
                case .status404(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status401: return 401
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status401: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(TVDBSeriesSearchResults.self, from: data))
                case 401: self = try .status401(decoder.decode(TVDBNotAuthorized.self, from: data))
                case 404: self = try .status404(decoder.decode(TVDBNotFound.self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
