//
//  UICollectionView+Reuse.swift
//  LessonFour
//
//  Created by Hao Cui  on 2020/4/30.
//  Copyright © 2020 Hao Cui . All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func registerByNib<T: UICollectionViewCell>(_ cellClass: T.Type) {
        let nibName = String(describing: cellClass)
        let bundle = Bundle(for: cellClass)
        let nib = UINib(nibName: nibName, bundle: bundle)
        register(nib, forCellWithReuseIdentifier: nibName)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        let identifier = String(describing: T.self)
        guard let cell = dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? T else {
            fatalError("unknow cell")
        }
        return cell
    }
}
