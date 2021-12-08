//
//  AppContainer.swift
//  ViewModels-UIKit-iOS
//
//  Created by Ivan Lé Hjelmeland on 08/12/2021.
//

import Foundation

final class AppContainer {
    
    let service: ServiceProvider
    
    init() {
        self.service = Service(url: URL(string: "https://www.vg.no")!)
    }
    
}
