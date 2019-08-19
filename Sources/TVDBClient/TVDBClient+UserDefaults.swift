//
//  TVDBClient+UserDefaults.swift
//  TVDBSwiftUI
//
//  Created by Jeffrey Macko on 19/08/2019.
//  Copyright © 2019 Jeffrey Macko. All rights reserved.
//

import Foundation

extension UserDefaults {
  var JWTtoken : String? {
    get {
      if let val = string(forKey: #function) { return val }
      return nil
    }
    set {
      set(newValue, forKey: #function)
      self.synchronize()
    }
  }
}
