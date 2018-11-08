//
//  HTTPTask.swift
//  MyParkingAssistant
//
//  Created by Aatreya on 08/11/18.
//  Copyright © 2018 LogicAnalyzers. All rights reserved.
//

import Foundation

public typealias HTTPHeaders = [String:String]

public enum HTTPTask {
    
    case request
    
    case requestParameters(bodyParameters: Parameters?,
        urlParameters: Parameters?)
    
    case requestParametersAndHeaders(bodyParameters: Parameters?,
        urlParameters: Parameters?,
        additionHeaders: HTTPHeaders?)
}
