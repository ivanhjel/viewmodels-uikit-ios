//
//  Service.swift
//  ViewModels-UIKit-iOS
//
//  Created by Ivan Lé Hjelmeland on 08/12/2021.
//

import Foundation

protocol ServiceProvider {
    func doSomething()
}

final class Service {
    
    private let url: URL
    
    init(url: URL) {
        self.url = url
    }
    
}

extension Service: ServiceProvider {
    func doSomething() {
        print("Did something.")
    }
}
