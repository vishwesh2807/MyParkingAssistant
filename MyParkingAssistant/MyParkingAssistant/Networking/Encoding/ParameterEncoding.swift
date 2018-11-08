//
//  ParameterEncoding.swift
//  MyParkingAssistant
//
//  Created by Aatreya on 08/11/18.
//  Copyright © 2018 LogicAnalyzers. All rights reserved.
//

import Foundation

public typealias Parameters = [String:Any]

public protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}

public enum NetworkError: String, Error {
    
    case parametersNil = "Parameters were nil"
    case encodingFailed = "Parameter encoding failed"
    case missingURL = "URL is nil"
}
