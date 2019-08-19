//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TVDB.Users {

    /** This route deletes a given rating of a given type. */
    public enum DeleteUserRatingsByItemTypeByItemId {

        public static let service = APIService<Response>(id: "deleteUserRatingsByItemTypeByItemId", tag: "Users", method: "DELETE", path: "/user/ratings/{itemType}/{itemId}", hasBody: false, securityRequirement: SecurityRequirement(type: "jwtToken", scopes: []))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Item to update. Can be either 'series', 'episode', or 'image' */
                public var itemType: String

                /** ID of the ratings record that you wish to modify */
                public var itemId: Int

                public init(itemType: String, itemId: Int) {
                    self.itemType = itemType
                    self.itemId = itemId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: DeleteUserRatingsByItemTypeByItemId.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(itemType: String, itemId: Int) {
                let options = Options(itemType: itemType, itemId: itemId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "itemType" + "}", with: "\(self.options.itemType)").replacingOccurrences(of: "{" + "itemId" + "}", with: "\(self.options.itemId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = TVDBUserRatingsDataNoLinks

            /** Returns OK if the delete was successful */
            case status200(TVDBUserRatingsDataNoLinks)

            /** Returned if your JWT token is missing or expired */
            case status401(TVDBNotAuthorized)

            /** Returned if no rating is found that matches your given parameters */
            case status404(TVDBNotFound)

            public var success: TVDBUserRatingsDataNoLinks? {
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
                case 200: self = try .status200(decoder.decode(TVDBUserRatingsDataNoLinks.self, from: data))
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
