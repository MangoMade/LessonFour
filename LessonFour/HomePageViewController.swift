//
//  ViewController.swift
//  LessonFour
//
//  Created by Hao Cui  on 2020/4/30.
//  Copyright © 2020 Hao Cui . All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

    private enum Constant {
        static let margin: CGFloat = 16
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        
        
    }

    private func registerCell() {
        collectionView.registerByNib(MovieCollectionViewCell.self)
    }
}

extension HomePageViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MovieCollectionViewCell = collectionView.dequeueReusableCell(for: indexPath)
        
        return cell
    }
}

extension HomePageViewController: UICollectionViewDelegate {
    
}

extension HomePageViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (UIScreen.main.bounds.width - Constant.margin * 3) / 2
        return CGSize(width: width, height: 240)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(
            top: Constant.margin,
            left: Constant.margin,
            bottom: Constant.margin,
            right: Constant.margin
        )
    }
}
