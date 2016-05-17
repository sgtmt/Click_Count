//
//  ViewController.swift
//  click_Count
//
//  Created by 長沢　遼 on 2016/05/17.
//  Copyright © 2016年 Sgtmt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var a:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
        
    }
    @IBOutlet weak var count_number: UILabel!
    
    func downColor(){
        if a<=0 {
            count_number.textColor = UIColor.redColor()
        }else{
            count_number.textColor = UIColor.blackColor()
        }
    }
    func ten_count(){
        if a%10==0 {
            count_number.textColor = UIColor.blueColor()
        }else{
            count_number.textColor = UIColor.blackColor()
        }
    }

    @IBAction func count_plus(sender: AnyObject) {
        a+=1
        ten_count()
        count_number.text = String(a)
    }
    @IBAction func count_down(sender: AnyObject) {
        a-=1
        downColor()
        count_number.text = String(a)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

