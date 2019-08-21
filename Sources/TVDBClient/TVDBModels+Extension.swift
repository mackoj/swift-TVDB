//
//  TVDBSeries+Extension.swift
//  TVDBSwiftUI
//
//  Created by Jeffrey Macko on 19/08/2019.
//  Copyright © 2019 Jeffrey Macko. All rights reserved.
//

import Foundation

extension TVDBSeries {
  public var bannerImageURL : URL? {
    get {
      if let banner = banner {
        return URL(string: "https://www.thetvdb.com/banners/\(banner)")
      }
      return nil
    }
  }
}

extension TVDBSeriesActorsData {
  public var imageURL : URL? {
    get {
      if let image = image {
        return URL(string: "https://www.thetvdb.com/banners/\(image)")
      }
      return nil
    }
  }
}

extension TVDBSeriesSearchResult {
  public var bannerImageURL : URL? {
    get {
      if let banner = banner {
        return URL(string: "https://www.thetvdb.com/banners/\(banner)")
      }
      return nil
    }
  }
}
