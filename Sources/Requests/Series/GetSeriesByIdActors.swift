//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TVDB.Series {

    /** Returns actors for the given series id */
    public enum GetSeriesByIdActors {

        public static let service = APIService<Response>(id: "getSeriesByIdActors", tag: "Series", method: "GET", path: "/series/{id}/actors", hasBody: false, securityRequirement: SecurityRequirement(type: "jwtToken", scopes: []))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** ID of the series */
                public var id: Int

                public init(id: Int) {
                    self.id = id
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetSeriesByIdActors.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: Int) {
                let options = Options(id: id)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = TVDBSeriesActors

            /** An array of actor objects for the given series id. */
            case status200(TVDBSeriesActors)

            /** Returned if your JWT token is missing or expired */
            case status401(TVDBNotAuthorized)

            /** Returned if the given series ID does not exist */
            case status404(TVDBNotFound)

            public var success: TVDBSeriesActors? {
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
                case 200: self = try .status200(decoder.decode(TVDBSeriesActors.self, from: data))
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
