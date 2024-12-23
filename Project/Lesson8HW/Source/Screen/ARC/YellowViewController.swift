//
//  YellowViewController.swift
//  Lesson8HW
//

//

import UIKit

class YellowViewController: UIViewController {
    
    var printer: Printer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        printer = Printer()
        printer.delegate = self
        printer.startPrinting()
        
        
        setupUI()
    }
    
    func textToPrint() -> String {
        return "🚖 - жовте таксі у дорозі"
    }
    
    deinit {
        print("Yellow screen deinit")
    }
}

//MARK: - Private
private extension YellowViewController {
    
    func setupUI() {
        view.backgroundColor = .lightYellow
        
        let taxiLabel = UILabel()
        taxiLabel.text = "🚖"
        taxiLabel.font = .systemFont(ofSize: 200.0)
        
        view.addSubview(taxiLabel)
        
        taxiLabel.translatesAutoresizingMaskIntoConstraints = false
        taxiLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        taxiLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}

extension YellowViewController: PrinterDelegate {
    //let textToPrint = textToPrint()
    
    func printer(text: String) {
        print("\(textToPrint()) - \(text)")
    }
    
    
}
