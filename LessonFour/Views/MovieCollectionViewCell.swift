//
//  MovieCollectionViewCell.swift
//  LessonFour
//
//  Created by Hao Cui  on 2020/4/29.
//  Copyright © 2020 Hao Cui . All rights reserved.
//

import UIKit


class MovieCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var previewImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.gray.cgColor
        contentView.layer.cornerRadius = 6
    }
    
    func config(with movie: Movie) {
        nameLabel.text = movie.title
    }
}
