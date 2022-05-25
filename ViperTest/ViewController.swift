//
//  ViewController.swift
//  ViperTest
//
//  Created by Евгений Березенцев on 25.05.2022.
//

import UIKit

protocol ViewInputProtocol: AnyObject {
    func setLabelText(with text: String)
}

protocol ViewOutputProtocol {
    func buttonDidtapped()
    init(view: ViewInputProtocol)
}

class ViewController: UIViewController, ViewInputProtocol {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: ViewOutputProtocol!
    
    private let configurator: ConfiguratorInputProtocol = Configurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
    }
    
    func setLabelText(with text: String) {
        greetingLabel.text = text
    }

    @IBAction func buttonDidTapped() {
        presenter.buttonDidtapped()
    }
    
}

