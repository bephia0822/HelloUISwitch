//
//  ViewController.swift
//  HelloUISwitch
//
//  Created by Sophia Wang on 2021/3/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBAction func makeAChange(_ sender: UISwitch) {
        if sender.isOn == true{
            print("It's on")
            view.backgroundColor = .white
        }else{
            print("It's off")
            view.backgroundColor = .black
        }
    }
    
    @objc func codeSwitchChange(_ sender:UISwitch){
        //use itOn to check the status of the switch
        if sender.isOn == true{
            print("It's on")
            view.backgroundColor = .white
        }else{
            print("It's off")
            view.backgroundColor = .black
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mySwitch.isOn = false       //設定開關一開始是關起來的
        makeAChange(mySwitch)
        
        //generate a switch using code
        let codeSwitch = UISwitch(frame: CGRect(x: view.frame.midX - 51/2, y: view.frame.maxY - 100, width: 51, height: 31))
        view.addSubview(codeSwitch)
        codeSwitch.isOn = true
        codeSwitch.addTarget(self, action: #selector(ViewController.codeSwitchChange(_:)), for: .valueChanged)
    }


}

