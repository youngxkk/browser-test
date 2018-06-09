//
//  ViewController.swift
//  browser
//
//  Created by youngxkk on 2018/6/9.
//  Copyright © 2018 youngxkk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!

    @IBAction func button(_ sender: UIButton) {
        print("test")
        
        labelText.text = "test"
        
        //设置你要浏览的网页地址
        let urll = NSURL(string: "http://www.apple.com");
        
        let requestt = NSURLRequest(url: urll! as URL);
        webView.loadRequest(requestt as URLRequest)
        
    }
        //重要，需要打开info.plist文件,添加字典App Transport Security Settings，并在其下增加一个Bool类型的键Allow Arbitrary Loads，其值设置为YES，只有这样才行。

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

