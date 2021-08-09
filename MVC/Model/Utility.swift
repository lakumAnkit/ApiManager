//
//  Utility.swift
//  AlamoApiRequestDemo
//
//  Created by vishal lakum on 26/07/21.
//

import Foundation
import SwiftyJSON

typealias ApiSucBlock = (_ model:JSON) -> Void
typealias ApiFailBlock = (_ error:Error) -> Void
