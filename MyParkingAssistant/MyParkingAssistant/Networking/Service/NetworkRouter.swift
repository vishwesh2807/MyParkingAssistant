//
//  NetworkRouter.swift
//  MyParkingAssistant
//
//  Created by Aatreya on 08/11/18.
//  Copyright © 2018 LogicAnalyzers. All rights reserved.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?, _ response: URLResponse?, _ error: Error?) -> ()

protocol NetworkRouter: class {
    
    associatedtype EndPoint: EndPointType
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
