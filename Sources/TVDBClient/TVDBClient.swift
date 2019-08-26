//
//  Client.swift
//  TVDBSwiftUI
//
//  Created by Jeffrey Macko on 19/08/2019.
//  Copyright © 2019 Jeffrey Macko. All rights reserved.
//

import Foundation


/// Documentation of the API
/// https://api.thetvdb.com/swagger
public final class TVDBClient {
  let apiClient : APIClient = APIClient(baseURL: "https://api.thetvdb.com", behaviours: [TVDBRequestBehaviour()])
  
  let apikey: String
  let userkey: String
  let username: String
  
  public init(apikey: String, uniqueID: String, username: String) {
    self.apikey = apikey
    self.userkey = uniqueID
    self.username = username
  }
  
  private func getLoginTokenRequest(_ completion : (() -> ())?) -> CancellableRequest? {
    let body = TVDBAuth(apikey: self.apikey, userkey: self.userkey, username: self.username)
    let getLoginTokenRequest = TVDB.Authentication.PostLogin.Request(body: body)
    
    return apiClient.makeRequest(getLoginTokenRequest) { apiResponse in
      if let obj = try? apiResponse.result.get(), let token = obj.success?.token {
        print("Token")
        print("-----")
        print(token)
        print("-----")
        UserDefaults.standard.JWTtoken = token
      }
      completion?()
    }
  }
  
  private func addAsyncToken<T>(request: APIRequest<T>, completion: @escaping (APIResponse<T>) -> Void) -> CancellableRequest? {
    return getLoginTokenRequest {
      _ = self.makeRequest(request: request, completion: completion)
    }
  }
  
  public func makeRequest<T>(request: APIRequest<T>, completion: @escaping (APIResponse<T>) -> Void) -> CancellableRequest?  {
    let burrito : (APIResponse<T>) -> Void = { apiResponse in
      if apiResponse.urlResponse?.statusCode == 401 {
        _ = self.addAsyncToken(request: request, completion: completion)
        return
      }
      completion(apiResponse)
    }
//    if UserDefaults.standard.JWTtoken == nil {
//      return self.addAsyncToken(request: request, completion: burrito)
//    }
    return apiClient.makeRequest(request, complete: burrito)
  }  
}
