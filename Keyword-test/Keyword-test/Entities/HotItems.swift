//
//  HotItems.swift
//  Keyword-test
//
//  Created by Hao Huynh on 3/21/19.
//

import ObjectMapper

class HotItems: Mappable {
    var keyWords: [KeyWords]?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        keyWords <- map["keywords"]
    }
}

class KeyWords: Mappable {
    var keyword: String?
    var icon: String?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        keyword <- map["keyword"]
        icon <- map["icon"]
    }
}
