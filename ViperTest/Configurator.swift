//
//  Configurator.swift
//  ViperTest
//
//  Created by Евгений Березенцев on 25.05.2022.
//

import Foundation
import UIKit

protocol ConfiguratorInputProtocol {
    func configure(with viewController: ViewController)
}

class Configurator: ConfiguratorInputProtocol {
    func configure(with viewController: ViewController) {
    
        let presenter = Presenter(view: viewController)
        let interactor = Interactor(presenter: presenter)
        let router = Router(viewController: viewController)
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        
    }
}
