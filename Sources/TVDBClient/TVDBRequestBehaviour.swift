//
//  TVDBRequestBehaviour.swift
//  TVDBSwiftUI
//
//  Created by Jeffrey Macko on 19/08/2019.
//  Copyright © 2019 Jeffrey Macko. All rights reserved.
//

import Foundation
import TVDB

struct TVDBRequestBehaviour : RequestBehaviour {
  func modifyRequest(request: AnyRequest, urlRequest: URLRequest) -> URLRequest {
    var newURLRequest = urlRequest
    if let JWTtoken = UserDefaults.standard.JWTtoken {
      newURLRequest.addValue("Bearer \(JWTtoken)", forHTTPHeaderField: "Authorization")
    }
    newURLRequest.addValue("en", forHTTPHeaderField: "Accept-Language")
    return newURLRequest
  }
  
  func beforeSend(request: AnyRequest) {
    if let requestURL = try? request.createURLRequest(baseURL: "https://api.thetvdb.com") {
      let fullURL = requestURL.url?.absoluteString ?? ""
      print(fullURL)
    }
  }
}
