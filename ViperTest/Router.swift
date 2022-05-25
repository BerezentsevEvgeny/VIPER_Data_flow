//
//  Router.swift
//  ViperTest
//
//  Created by Евгений Березенцев on 25.05.2022.
//

import Foundation

protocol RouterInputProtocol {
    init(viewController: ViewController)
}

class Router: RouterInputProtocol {
    
    unowned let viewController: ViewController
    
    required init(viewController: ViewController) {
        self.viewController = viewController
    }
}
