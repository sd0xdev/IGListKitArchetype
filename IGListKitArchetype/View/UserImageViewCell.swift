//
//  UserImageViewCell.swift
//  IGListKitArchetype
//
//  Created by 陳囿豪 on 2019/6/2.
//  Copyright © 2019 yasuoyuhao. All rights reserved.
//

import UIKit

class UserImageViewCell: UICollectionViewCell, ViewModelUpdatable {
    
    typealias viewModel = PostImageViewModel
    func updateWith(object: PostImageViewModel) {
        mainImageView.image = UIImage(named: object.mainImage)
    }
    
    lazy var mainImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainImageView)
        mainImageView.fillSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
