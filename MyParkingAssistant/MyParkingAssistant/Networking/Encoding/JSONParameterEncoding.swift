//
//  JSONParameterEncoding.swift
//  MyParkingAssistant
//
//  Created by Aatreya on 08/11/18.
//  Copyright © 2018 LogicAnalyzers. All rights reserved.
//

import Foundation

public struct JSONParameterEncoding: ParameterEncoder {
    
    public static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        
        do {
            
            let jsonAsData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody = jsonAsData
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }
            
        } catch {
            
            throw NetworkError.encodingFailed
        }
    }
}
