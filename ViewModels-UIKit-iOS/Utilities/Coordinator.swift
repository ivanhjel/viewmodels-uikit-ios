//
//  Coordinator.swift
//  ViewModels-UIKit-iOS
//
//  Created by Ivan Lé Hjelmeland on 08/12/2021.
//

import Foundation
import UIKit

final class Coordinator: UINavigationController {
    
    private let container: AppContainer
    
    init(container: AppContainer) {
        self.container = container
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func start() {
        self.pushViewController(makeViewController(), animated: false)
    }
    
    func showDetailsViewController() {
        self.pushViewController(makeDetailsViewController(), animated: true)
    }
    
    func presentDetailsViewController() {
        self.present(makeDetailsViewController(), animated: true, completion: nil)
    }
    
    func makeViewController() -> MainViewController {
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MainViewController") { coder in
            MainViewController(viewModel: MainViewModel(service: self.container.service), coordinator: self, coder: coder)!
        }
    }
    
    func makeDetailsViewController() -> DetailsViewController {
        UIStoryboard(name: "Details", bundle: nil).instantiateViewController(identifier: "DetailsViewController") { coder in
            DetailsViewController(viewModel: DetailsViewModel(service: self.container.service), coordinator: self, coder: coder)!
        }
    }
    
}
