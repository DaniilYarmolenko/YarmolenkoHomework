//
//  YarmolenkoHomeworkVC.swift
//  YarmolenkoHomework
//
//  Created by Даниил Ярмоленко on 30.11.2022.
//

import Foundation
import UIKit


public class YarmolenkoHomeworkVC: UIViewController {

    public var squareView: UIView {
            return view
        }
    
    internal var label = UILabel()
    override public func viewDidLoad() {
        view.backgroundColor = .purple
        setUpLabel()
    }
    func setUpLabel() {
        view.addSubview(label)
        label.text = "Yarmolenko Daniil"
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 24)
        label.textColor = .white
    }
    override public func viewDidLayoutSubviews() {
        addConstraints()
        animateLabels()
    }
    func animateLabels() {
        let angle = CGFloat.pi * 2
        self.label.rotate()
        self.label.scaleX(x: 2.0)
        self.label.scaleY(y: 2.0)
//        UIView.animateKeyframes(withDuration: 2, delay: 0, options: [.autoreverse, .repeat]) {
//            for i in 0..<4 {
//                UIView.addKeyframe(withRelativeStartTime: 0.25 * Double(i),
//                    relativeDuration: 0.25) {
//                        let angle = CGFloat.pi / 2 * CGFloat(i + 1)
//                    self.label.transform = CGAffineTransform(rotationAngle: angle)
//                    let scale = 1.0 + Double(i)*0.25
//                    self.label.transform = CGAffineTransform(scaleX: scale, y: scale)
//                }
//            }
//
//        }
         }
    func addConstraints() {
        self.label.translatesAutoresizingMaskIntoConstraints = false
        self.label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
}
extension UILabel{
    func rotate(value: NSNumber = NSNumber(value: Double.pi * 2)) {
        let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.toValue = NSNumber(value: Double.pi * 2)
        rotation.duration = 2
        rotation.isCumulative = true
        rotation.repeatCount = Float.greatestFiniteMagnitude
        self.layer.add(rotation, forKey: "rotationAnimation")
    }
    func scaleX(x: Double, duration: Double = 2.0, repeatCount: Float = Float.greatestFiniteMagnitude, autoreverse: Bool = true) {
        let scaleX : CABasicAnimation = CABasicAnimation(keyPath: "transform.scale.x")
        scaleX.toValue = x
        scaleX.duration = duration
        scaleX.autoreverses = autoreverse
        scaleX.repeatCount = repeatCount
        self.layer.add(scaleX, forKey: "scaleXAnimaation")
    }
    func scaleY(y: Double, duration: Double = 2.0, repeatCount: Float = Float.greatestFiniteMagnitude, autoreverse: Bool = true) {
        let scaleY : CABasicAnimation = CABasicAnimation(keyPath: "transform.scale.y")
        scaleY.toValue = y
        scaleY.duration = duration
        scaleY.autoreverses = autoreverse
        scaleY.repeatCount = repeatCount
        self.layer.add(scaleY, forKey: "scaleYAnimaation")
    }
}
