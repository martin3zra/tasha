//
//  DictonaryHelper + Ext.swift
//  Tasha
//
//  Created by Alfredo Martinez on 12/18/17.
//

import Foundation

extension Helper {
    
    // MARK: - Convert Data to NSDictionary
    
    public static func toDictionaty(data: Data) -> NSDictionary? {
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? NSDictionary
            
            if let parseJSON = json {
                
                return parseJSON
            }
        } catch let error as NSError {
            
            print("error: \(error)")
        }
        
        return nil
    }
    
    // MARK: - Convert Array [String: Any] to JSON
    
    public static func toJSON(payload: [String: Any]) -> Data? {
        
        if let data = try? JSONSerialization.data(withJSONObject: payload, options: .prettyPrinted) {
            
            return data
        }
        
        return nil
    }
    
    // MARK: - Conver Multidimensional Array [[String: Any]] to JSON
    
    public static func toJSON(payload: [[String: Any]]) -> Data? {
        
        if let data = try? JSONSerialization.data(withJSONObject: payload, options: .prettyPrinted) {
            
            return data
        }
        
        return nil
    }
}
