//
//  ViewController.swift
//  MFPagingViewExample
//  GitHub: https://github.com/wwx1991/MFPagingView
//  Created by iOS on 2018/6/6.
//  Copyright © 2018年 GM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button1.layer.shadowOffset = CGSize(width: 1, height: 1)
        button1.layer.shadowOpacity = 0.6
        button1.layer.shadowColor = UIColor.gray.cgColor
        
        button2.layer.shadowOffset = CGSize(width: 1, height: 1)
        button2.layer.shadowOpacity = 0.6
        button2.layer.shadowColor = UIColor.gray.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button1DidClick(_ sender: Any) {
        navigationController?.pushViewController(VCOne(), animated: true)
    }
    
    @IBAction func button2DidClick(_ sender: Any) {
        navigationController?.pushViewController(VCTwo(), animated: true)
    }
}

