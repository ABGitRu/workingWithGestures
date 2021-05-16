//
//  ViewController.swift
//  workingWithGestures
//
//  Created by Mac on 16.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let scaleDefault: CGFloat = 1
    
    @IBAction func panGesture(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        if let view = sender.view {
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        }
        sender.setTranslation(CGPoint.zero, in: view)
    }
    @IBAction func rotationGesture(_ sender: UIRotationGestureRecognizer) {
        if let view = sender.view {
            view.transform = view.transform.rotated(by: sender.rotation)
        }
        sender.rotation = .zero
    }
    @IBAction func pinchGesture(_ sender: UIPinchGestureRecognizer) {
        if let view = sender.view {
            view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
        }
        sender.scale = scaleDefault
    }
    
    
}

