//
//  Interactor.swift
//  ViperTest
//
//  Created by Евгений Березенцев on 25.05.2022.
//

import Foundation

protocol InteractorInputProtocol {
    func provideGreeting()
    init(presenter: InteractorOutputProtocol)
}

protocol InteractorOutputProtocol: AnyObject {
    func recieveGreetingData(with greetingData: GreetingData)
}

class Interactor: InteractorInputProtocol {
    
    unowned let presenter: InteractorOutputProtocol
    
    required init(presenter: InteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func provideGreeting() {
        let greetingData = GreetingData(name: "John", surname: "Deer")
        presenter.recieveGreetingData(with: greetingData)
    }
    
    
}
