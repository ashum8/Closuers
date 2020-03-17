//
//  Unwrap.swift
//  Project Name: CapturedScent2
//
//  Created by Rakesh Sharma on 25/04/19.
//  
//  Copyright © 2019 Qamar Mansuri. All rights reserved.
//


import Foundation
import UIKit

//MARK:- PROTOCOL
protocol OptionalType { init() }

//MARK:- EXTENSIONS
extension String: OptionalType {}
extension Int: OptionalType {}
extension CGFloat: OptionalType {}
extension Double: OptionalType {}
extension Bool: OptionalType {}
extension Float: OptionalType {}
extension CGRect: OptionalType {}
extension UIImage: OptionalType {}
extension IndexPath: OptionalType {}
extension Array : OptionalType {}
extension Date: OptionalType{}



prefix operator /

//unwrapping values
prefix func /<T: OptionalType>( value: T?) -> T {
    guard let validValue = value else { return T() }
    return validValue
}


