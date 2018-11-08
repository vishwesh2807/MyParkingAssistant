//
//  EndPointType.swift
//  MyParkingAssistant
//
//  Created by Aatreya on 08/11/18.
//  Copyright © 2018 LogicAnalyzers. All rights reserved.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders { get }
}
