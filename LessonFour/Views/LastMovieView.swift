//
//  LastMovieView.swift
//  LessonFour
//
//  Created by Hao Cui  on 2020/4/30.
//  Copyright © 2020 Hao Cui . All rights reserved.
//

import UIKit
//import SnapKit
//
//class LastMovieView: UIView {
//    
//    private let label = UILabel()
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        commonInit()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    private func commonInit() {
//        label.text = "无"
//        addSubview(label)
//        label.snp.makeConstraints { (make) in
//            make.top.equalTo(self).offset(4)
//            make.left.equalTo(self).offset(10)
//            make.right.equalTo(self).offset(-10)
//            make.bottom.equalTo(self).offset(-4)
//        }
//        backgroundColor = UIColor.lightGray.withAlphaComponent(0.8)
//        layer.borderColor = UIColor.black.cgColor
//        layer.borderWidth = 1
//        layer.cornerRadius = 10
//    }
//    
//    func update(name: String) {
//        self.label.text = name
//    }
//}
