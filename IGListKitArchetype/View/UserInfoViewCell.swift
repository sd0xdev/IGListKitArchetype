//
//  UserInfoViewCell.swift
//  IGListKitArchetype
//
//  Created by 陳囿豪 on 2019/6/2.
//  Copyright © 2019 yasuoyuhao. All rights reserved.
//

import UIKit

protocol ViewModelUpdatable {
    associatedtype viewModel
    func updateWith(object: viewModel)
}

class UserInfoViewCell: UICollectionViewCell, ViewModelUpdatable {
    
    typealias viewModel = PostViewModel
    func updateWith(object: PostViewModel) {
        mainImageView.image = UIImage(named: object.headerImage)
        titleLabel.text = object.headerTitle
        rightButton.setTitle(object.headerRightButtonTitle, for: .normal)
    }
    
    lazy var mainImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 30 / 2
        iv.layer.masksToBounds = true
        
        iv.anchor(top: nil, leading: nil, bottom: nil, trailing: nil, size: CGSize(width: 30, height: 30))
        
        return iv
    }()
    
    lazy var titleLabel: UILabel = {
        let iv = UILabel(text: "", style: .subheadline)
        
        return iv
    }()
    
    lazy var rightButton: UIButton = {
        let iv = UIButton(type: .system)
        iv.anchor(top: nil, leading: nil, bottom: nil, trailing: nil, size: CGSize(width: 30, height: 20))
        
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let stackView = UIStackView(arrangedSubviews: [mainImageView, titleLabel, rightButton], axis: .horizontal, spacing: 8, alignment: .center)
        
        addSubview(stackView)
        stackView.fillSuperview(padding: UIEdgeInsets(top: 4, left: 16, bottom: 4, right: 8))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
