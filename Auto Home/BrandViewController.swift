//
//  BrandViewController.swift
//  Auto Home
//
//  Created by Jay Zhang on 3/15/21.
//

import UIKit

class BrandViewController: UIViewController {
    let container = UIView()
    let table1 = UIImageView(image: UIImage(named: "table1"))
    let table2 = UIImageView(image: UIImage(named: "table2"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let w = view.bounds.width - 100
        let h = view.bounds.height - 650
        container.frame = CGRect(x: 50, y: 50, width: w, height: h)
        view.addSubview(container)
        
        table1.frame = CGRect(x: 0, y: 0, width: w, height: h)
        table2.frame = table1.frame
        
        container.addSubview(table2)
        
        // Set up swipe gesture recognizers
        let upSwipeRecognizer = UISwipeGestureRecognizer(target: self, action:
            #selector(BrandViewController.handleUpSwipe))
        upSwipeRecognizer.numberOfTouchesRequired = 1
        upSwipeRecognizer.direction = .up
        view.addGestureRecognizer(upSwipeRecognizer)
        
        let downSwipeRecognizer = UISwipeGestureRecognizer(target: self, action:
            #selector(BrandViewController.handleDownSwipe))
        downSwipeRecognizer.numberOfTouchesRequired = 1
        downSwipeRecognizer.direction = .down
        view.addGestureRecognizer(downSwipeRecognizer)
        
        let horizontalSwipeRecognizer = UISwipeGestureRecognizer(target: self, action:
            #selector(BrandViewController.handleHorizontalSwipe))
        horizontalSwipeRecognizer.numberOfTouchesRequired = 1
        horizontalSwipeRecognizer.direction = [ .left, .right ]
        view.addGestureRecognizer(horizontalSwipeRecognizer)
        
        let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action:
            #selector(BrandViewController.handlePinch))
        view.addGestureRecognizer(pinchGestureRecognizer)
    }
    
    @objc
    func handleUpSwipe(_ sender: UISwipeGestureRecognizer) {
        let view1 = table1.superview != nil ? table1 : table2
        let view2 = table1.superview != nil ? table2 : table1
        UIView.transition(from: view1, to: view2,
                          duration: 2.0, options: .transitionCurlUp,
                          completion: nil)
    }
    
    @objc
    func handleDownSwipe(_ sender: UISwipeGestureRecognizer) {
        let view1 = table1.superview != nil ? table1 : table2
        let view2 = table1.superview != nil ? table2 : table1
        UIView.transition(from: view1, to: view2,
                          duration: 2.0, options: .transitionCurlDown,
                          completion: nil)
    }
    
    @objc
    func handleHorizontalSwipe(_ sender: UISwipeGestureRecognizer) {
        let view1 = table1.superview != nil ? table1 : table2
        let view2 = table1.superview != nil ? table2 : table1
        UIView.transition(with: self.container, duration: 2.0,
                          options: .transitionCrossDissolve,
                          animations: {
                            view1.removeFromSuperview()
                            self.container.addSubview(view2)
        }, completion: nil)
    }
    
    @objc
    func handlePinch(_ sender: UIPinchGestureRecognizer) {
        let s = sender.scale
        container.transform = CGAffineTransform(a: s, b: 0, c: 0, d: s, tx: 0, ty: 0)
    }
}
