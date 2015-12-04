//
//  ViewController.swift
//  TextViewBug
//
//  Created by Diego Sanchez on 04/12/2015.
//  Copyright © 2015 Badoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var inputTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextView = UITextView(frame: CGRect(x: 0, y: 0, width: 30, height: 44))
        inputTextView.text = "Type something here..."
        inputTextView.autoresizingMask = .FlexibleHeight
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.becomeFirstResponder()
    }

    override func canBecomeFirstResponder() -> Bool {
        return true
    }

    override var inputAccessoryView: UIView? {
        return inputTextView
    }

}

