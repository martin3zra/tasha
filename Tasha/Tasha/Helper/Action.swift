//
//  Action.swift
//  iOSBoilerplate
//
//  Created by Alfredo Martinez on 12/18/17.
//

import Foundation

/// handle custom user actions.
public final class Action: NSObject {
    
    private let _action: () -> ()
    
    /**
      Initilize action.
     - action: clousure to perform custom action
    */
    public init(action: @escaping () -> ()) {
        _action = action
        super.init()
    }
    
    public func action() {
        
        _action()
    }
}
