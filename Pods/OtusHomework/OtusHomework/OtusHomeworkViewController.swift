//
//  OtusHomeworkViewController.swift
//  OtusHomework
//
//  Created by Гладковский Николай Сергеевич on 28.11.2022.
//

import Foundation
import UIKit
import SnapKit

public protocol HasOtusHomeworkView: AnyObject {
    var squareView: UIView { get }
}

public class OtusHomeworkViewController: UIViewController, HasOtusHomeworkView {
    public var squareView: UIView {
        return view
    }
    
    public override func viewDidLoad() {
        view.backgroundColor = .orange
        let studentLabel = UILabel()
        studentLabel.font = .systemFont(ofSize: 48, weight: .ultraLight)
        studentLabel.text = "Николай Гладковский"
        studentLabel.textColor = .white
        studentLabel.textAlignment = .center
        studentLabel.numberOfLines = 0
        view.addSubview(studentLabel)
        
        studentLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
