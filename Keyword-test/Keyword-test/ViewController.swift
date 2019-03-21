//
//  ViewController.swift
//  Keyword-test
//
//  Created by Hao Huynh on 3/21/19.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    var keyWords = [HotKeyword]()
    let keyword_url = "https://tiki-mobile.s3-ap-southeast-1.amazonaws.com/ios/keywords.json"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request(keyword_url).responseJSON { response in
            let json = response.data
            
            if let jsonObj = try? JSONSerialization.jsonObject(with: json!, options: .allowFragments) as? NSDictionary {
                if let kwArray = jsonObj!.value(forKey: "keywords") as? NSArray {

                    for keyword in kwArray {
                        guard let kwDict = keyword as? NSDictionary else {
                            return
                        }
                        print(kwDict)
                    }
                }
        }
    }
    }
}

