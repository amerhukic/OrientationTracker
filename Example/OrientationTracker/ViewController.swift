//
//  ViewController.swift
//  OrientationTracker
//

import UIKit
import OrientationTracker

class ViewController: UIViewController {

    @IBOutlet weak var centerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(rotateView), name: OrientationTracker.deviceOrientationChangedNotification, object: nil)
    }
    
    @objc func rotateView() {
        DispatchQueue.main.async {
            UIView.animate(withDuration: 1) {
                self.centerView.transform = OrientationTracker.shared.affineTransform
            }
        }
    }
    
}

