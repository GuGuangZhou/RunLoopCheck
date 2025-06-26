//
//  ViewController.swift
//  runLoop
//
//  Created by jiangShuiQing 的MacBok on 2025/6/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        RunLoopMonitor.shareInstance.start()
        
        let button = UIButton(frame: CGRect(x: 150, y: 200, width: 100, height: 100))
        button.backgroundColor = .red
        button.setTitle("test", for: .normal)
        button.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)

        view.addSubview(button)
    }
    
    @objc func btnClicked() {
        DispatchQueue.global().async {
            let symbals = Backtrace.backtraceAllThread()
            print(symbals)
        }

        animals()
    }
    
    func animals() {
        tiger()
    }
    
    func tiger() {
        simba()
    }
    
    func simba() {
        while true {
        }
    }
}

