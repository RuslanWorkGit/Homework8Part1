//
//  Logger.swift
//  Lesson8HW
//

//

import Foundation

protocol PrinterDelegate: AnyObject {
    
    func printer(text: String)
     
}

class Printer {
    
    weak var delegate: PrinterDelegate?
    
    private var timer: Timer?
    private var seconds: Int = 0
    
    func startPrinting() {
        
        stop()
        
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(timerAction),
            userInfo: nil,
            repeats: true
        )
        
        
    }
    
   
    
    func stop() {
        timer?.invalidate()
    }
    
    @objc private func timerAction() {
        
        let secondsText = "\(seconds) секунд"
        delegate?.printer(text: secondsText)
        
        seconds += 1
        
        
    }
    

}
