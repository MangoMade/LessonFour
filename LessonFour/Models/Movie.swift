//
//  Movie.swift
//  LessonFour
//
//  Created by Hao Cui  on 2020/4/29.
//  Copyright © 2020 Hao Cui . All rights reserved.
//

import Foundation
import UIKit

//{
//    "subjects": [
//        {
//            "title": "\u91d1\u7985\u964d\u9b54",
//            "images": {
//                "small": "https://img9.doubanio.com\/view\/photo\/s_ratio_poster\/public\/p2564190636.jpg",
//                "large": "https://img9.doubanio.com\/view\/photo\/s_ratio_poster\/public\/p2564190636.jpg",
//                "medium": "https://img9.doubanio.com\/view\/photo\/s_ratio_poster\/public\/p2564190636.jpg"
//            },
//            "id": "34768418"
//        }
//    ]
//}

struct MovieList: Codable {
    let subjects: [Movie]
}

struct Movie: Codable {
    let title: String
    let images: MovieImages
    let id: String
}

struct MovieImages: Codable {
    let urlString: String
    
    enum CodingKeys: String, CodingKey {
        case urlString = "medium"
    }
}
