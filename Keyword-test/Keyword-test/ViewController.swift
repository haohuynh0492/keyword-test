//
//  ViewController.swift
//  Keyword-test
//
//  Created by Hao Huynh on 3/21/19.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       getData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

func getData() {
    var itemArray = [KeyWords]()
    let keyword_url = "https://tiki-mobile.s3-ap-southeast-1.amazonaws.com/ios/keywords.json"
    Alamofire.request(keyword_url).responseObject { (response: DataResponse<HotItems>) in
        
        let itemResponse = response.result.value

        if let keyWords = itemResponse?.keyWords {
            for item in keyWords {
                itemArray.append(item)
//                print(item.keyword ?? "")
//                print(item.icon ?? "")
            }
        }

    }
    
}
//extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return
//    }
    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        return
//    }

//}
