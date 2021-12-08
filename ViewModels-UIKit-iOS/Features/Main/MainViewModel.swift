//
//  MainViewModel.swift
//  ViewModels-UIKit-iOS
//
//  Created by Ivan Lé Hjelmeland on 08/12/2021.
//

import Foundation

class MainViewModel {
    
    private let service: ServiceProvider

    init(service: ServiceProvider) {
        self.service = service
    }
    
    func doSomethingStupid() {
        service.doSomething()
    }
    
}
