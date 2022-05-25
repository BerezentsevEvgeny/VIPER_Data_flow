//
//  Interactor.swift
//  ViperTest
//
//  Created by Евгений Березенцев on 25.05.2022.
//

import Foundation

protocol InteractorInputProtocol {
    func prepareGreeting()
    init(presenter: InteractorOutputProtocol)
}

protocol InteractorOutputProtocol: AnyObject {
    func prepareGreetingText(with greetingData: GreetingData)
}


class Interactor: InteractorInputProtocol {
    
    unowned var presenter: InteractorOutputProtocol
    
    required init(presenter: InteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func prepareGreeting() {
        let greetingData = GreetingData(name: "Jonn", surname: "Deer")
        presenter.prepareGreetingText(with: greetingData)
    }
    
    
}
