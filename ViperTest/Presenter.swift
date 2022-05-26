//
//  Presenter.swift
//  ViperTest
//
//  Created by Евгений Березенцев on 25.05.2022.
//

import Foundation

struct GreetingData {
    var name: String
    var surname: String
}

class Presenter: ViewOutputProtocol, InteractorOutputProtocol {
    
    unowned let view: ViewInputProtocol
    var interactor: InteractorInputProtocol!
    var router: RouterInputProtocol!
    
    required init(view: ViewInputProtocol) {
        self.view = view
    }
    
    func buttonDidtapped() {
        interactor.provideGreeting()
    }
    
    func recieveGreetingData(with greetingData: GreetingData) {
        let greetingToPresent = "Hello, \(greetingData.name) \(greetingData.surname) !"
        view.setLabelText(with: greetingToPresent)
    }
    
}
