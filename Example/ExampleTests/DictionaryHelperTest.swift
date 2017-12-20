//
//  DictionaryHelperTest.swift
//  ExampleTests
//
//  Created by Alfredo Martinez on 12/20/17.
//  Copyright © 2017 Alfredo Martinez. All rights reserved.
//

import XCTest
import Nimble
import Tasha

class DictionaryHelperTest: XCTestCase {
    
    func test_array_can_be_transform_to_json() {
        
        let body = ["key": "value" as Any]
        
        let response = Helper.toJSON(payload: body)
        
        expect(response).toNot(beNil())
    }
    
    func test_multidimensional_array_can_be_transform_to_json() {
        
        var parent = [[String: Any]]()
        let body = ["key": "value" as Any]
        
        parent.append(body)
        
        let response = Helper.toJSON(payload: parent)
        
        expect(response).toNot(beNil())
    }
    
    func test_json_can_be_transform_to_dictionary() {
        
        let body = ["key": "value" as Any]
        
        let response = Helper.toJSON(payload: body)
        
        expect(response).toNot(beNil())
        
        let map = Helper.toDictionaty(data: response!)
        let keyValue = map?.value(forKey: "key") as? String
        
        expect(keyValue).to(equal("value"))
    }
    
}
