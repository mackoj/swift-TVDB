//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TVDB.Languages {

    /** All available languages. These language abbreviations can be used in the `Accept-Language` header for routes that return translation records. */
    public enum GetLanguages {

        public static let service = APIService<Response>(id: "getLanguages", tag: "Languages", method: "GET", path: "/languages", hasBody: false, securityRequirement: SecurityRequirement(type: "jwtToken", scopes: []))

        public final class Request: APIRequest<Response> {

            public init() {
                super.init(service: GetLanguages.service)
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = TVDBLanguageData

            /** An array of language objects. */
            case status200(TVDBLanguageData)

            /** Returned if your JWT token is missing or expired */
            case status401(TVDBNotAuthorized)

            public var success: TVDBLanguageData? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: TVDBNotAuthorized? {
                switch self {
                case .status401(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<TVDBLanguageData, TVDBNotAuthorized> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .status401(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status401: return 401
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status401: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(TVDBLanguageData.self, from: data))
                case 401: self = try .status401(decoder.decode(TVDBNotAuthorized.self, from: data))
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
