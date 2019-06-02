//
//  UserFocusViewCell.swift
//  IGListKitArchetype
//
//  Created by 陳囿豪 on 2019/6/2.
//  Copyright © 2019 yasuoyuhao. All rights reserved.
//

import UIKit

class UserFocusViewCell: UICollectionViewCell, ViewModelUpdatable {
    
    typealias viewModel = FocusViewModel
    func updateWith(object: FocusViewModel) {
        mainImageView.image = UIImage(named: object.headerImage)
        titleLabel.text = object.headerTitle
        rightButton.setTitle(object.headerRightButtonTitle, for: .normal)
    }
    
    lazy var mainImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 50 / 2
        iv.layer.masksToBounds = true
        
        iv.anchor(top: nil, leading: nil, bottom: nil, trailing: nil, size: CGSize(width: 50, height: 50))
        
        return iv
    }()
    
    lazy var titleLabel: UILabel = {
        let iv = UILabel(text: "", style: .headline)
        
        return iv
    }()
    
    lazy var rightButton: UIButton = {
        let iv = UIButton(type: .system)
        iv.layer.borderWidth = 1
        iv.layer.borderColor = iv.titleColor(for: .normal)?.cgColor
        iv.layer.cornerRadius = 4
        iv.anchor(top: nil, leading: nil, bottom: nil, trailing: nil, size: CGSize(width: 50, height: 30))
        
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let stackView = UIStackView(arrangedSubviews: [mainImageView, titleLabel, rightButton], axis: .horizontal, spacing: 8, alignment: .center)
        
        addSubview(stackView)
        stackView.fillSuperview(padding: UIEdgeInsets(top: 4, left: 24, bottom: 4, right: 32))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
