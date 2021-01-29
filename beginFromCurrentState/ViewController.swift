//
//  ViewController.swift
//  beginFromCurrentState
//
//  Created by Zedd on 2021/01/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    
  
    @IBOutlet weak var myButtonCenterY: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let barButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(interuptAnimation))
        self.navigationItem.rightBarButtonItem = barButton
    }

    @objc
    func interuptAnimation() {
        self.myButtonCenterY.constant = 0
        UIView.animate(withDuration: 1, delay: 0, options: [.beginFromCurrentState], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        self.myButtonCenterY.constant = -(self.view.frame.height / 2 - 44)
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
}

