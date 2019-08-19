//
//  TVDBSeries+Extension.swift
//  TVDBSwiftUI
//
//  Created by Jeffrey Macko on 19/08/2019.
//  Copyright © 2019 Jeffrey Macko. All rights reserved.
//

import Foundation
import TVDB

extension TVDBSeries {
  var bannerImageURL : URL? {
    get {
      if let banner = banner {
        return URL(string: "https://www.thetvdb.com/banners/\(banner)")
      }
      return nil
    }
  }
}

extension TVDBSeriesActorsData {
  var imageURL : URL? {
    get {
      if let image = image {
        return URL(string: "https://www.thetvdb.com/banners/\(image)")
      }
      return nil
    }
  }
}
