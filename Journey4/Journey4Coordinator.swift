//
//  Journey4Coordinator.swift
//  Journey4
//
//  Created by Gustavo Araujo Santos on 26/07/24.
//

import Foundation
import UIKit
import Core

public class Journey4Coordinator: CoordinatorProtocol {
    
    public weak var finishDelegate: (any CoordinatorFinishDelegate)?
    public var navigationController: UINavigationController
    public var childCoordinators: [any CoordinatorProtocol] = []
    public var parentCoordinator: (any CoordinatorProtocol)?
    public var type: CoordinatorType = .journey4
    
    public required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("\(Swift.type(of: self)) deinit")
    }
    
    public func start() {
        let viewModel = Journey4ViewModel()
        viewModel.delegate = self
        let viewController = Journey4ViewController(viewModel: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
}

extension Journey4Coordinator: Journey4ViewModelDelegate {
    func finishJourney() {
        finish()
    }
}
