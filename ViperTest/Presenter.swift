//
//  Presenter.swift
//  ViperTest
//
//  Created by Евгений Березенцев on 25.05.2022.
//

import Foundation


class Presenter: ViewOutputProtocol, InteractorOutputProtocol {
    
    unowned var view: ViewInputProtocol
    var interactor: InteractorInputProtocol!
    var router: RouterInputProtocol!
    
    required init(view: ViewInputProtocol) {
        self.view = view
    }
    
    func buttonDidtapped() {
        interactor.prepareGreeting()
    }
    
    func prepareGreetingText(with greetingData: GreetingData) {
        let greetingToPresent = "Hello, \(greetingData.name) \(greetingData.surname) !"
        view.setLabelText(with: greetingToPresent)
    }
    
}
