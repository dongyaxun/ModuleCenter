//
//  ModuleCenter.swift
//  ModuleCenter
//
//  Created by Mr.Dong on 2021/1/14.
//

import URLNavigator

public let scheme = "mocha"

public protocol Module {
    
    static var shared: Self { get }
    
    static func initialize(navigator: NavigatorType)
}

extension Module {
    
    public static var name: String {
        return String(describing: shared)
    }
    
    public static var pattern: String {
        return "\(scheme)://\(name)"
    }
}

public struct ModuleCenter {
    
    public static let shared = ModuleCenter()
    
    private init() {
        navigator = Navigator()
    }
    
    private let navigator: NavigatorType
    
    public func register<T>(_ module: T.Type) where T: Module {
        T.initialize(navigator: navigator)
    }
}
