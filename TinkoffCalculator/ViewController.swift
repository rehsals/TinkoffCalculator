//
//  ViewController.swift
//  TinkoffCalculator
//
//  Created by i.myakotin on 30.11.2023.
//

import UIKit

class ViewController: UIViewController {

    let buttons = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "C", "x", "/", "+", "-"]

    override func viewDidLoad() {
        super.viewDidLoad()

        for (index, b) in buttons.enumerated() {
            let uiButton = UIButton(frame: CGRect(origin: CGPoint(x: 50, y: 50 +  index * 50), size: CGSize(width: 50, height: 50)))
            uiButton.setTitle(b, for: .normal)

            view.addSubview(uiButton)
        }
    }
}

