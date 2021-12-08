//
//  MainViewController.swift
//  ViewModels-UIKit-iOS
//
//  Created by Ivan Lé Hjelmeland on 08/12/2021.
//

import UIKit

class MainViewController: UIViewController {

    private let viewModel: MainViewModel
    private weak var coordinator: Coordinator?
    
    // Requires > iOS 13, if instansiating storyboard
    init?(viewModel: MainViewModel, coordinator: Coordinator, coder: NSCoder) {
        self.viewModel = viewModel
        self.coordinator = coordinator
        super.init(coder: coder)
    }
    
    // Will actually never run, but we need it still.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

