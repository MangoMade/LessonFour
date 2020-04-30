//
//  API.swift
//  LessonFour
//
//  Created by Hao Cui  on 2020/4/29.
//  Copyright © 2020 Hao Cui . All rights reserved.
//

import Foundation
import Alamofire


struct API {
    //"https://douban.uieee.com/v2/movie/coming_soon"
    
    static func comingSoonMovies(_ compeletion: @escaping((Result<MovieList, Error>) -> Void)) {
        let url = "https://douban.uieee.com/v2/movie/coming_soon"
        AF.request(url).responseData { (response) in
            switch response.result {
            case .success(let data):
                do {
                    let obj = try JSONDecoder().decode(MovieList.self, from: data)
                    compeletion(.success(obj))
                } catch {
                    compeletion(.failure(error))
                }
            case .failure(let error):
                compeletion(.failure(error))
            }
        }
    }
}
