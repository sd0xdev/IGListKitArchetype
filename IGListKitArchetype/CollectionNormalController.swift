//
//  ViewController.swift
//  IGListKitArchetype
//
//  Created by 陳囿豪 on 2019/6/2.
//  Copyright © 2019 yasuoyuhao. All rights reserved.
//

import UIKit
import SwifterSwift

class CollectionNormalController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let postData: [PostPageProtocol] = PostData.postData
    
    private let cellId = "cellId"
    private let focusCellId = "focusCellId"
    private let imageCellId = "imageCellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        view.backgroundColor = .white
        
        setupCollectionView()
    }
    
    fileprivate func setupCollectionView() {
        collectionView.backgroundColor = .white
        collectionView.alwaysBounceVertical = true
        collectionView.register(UserInfoViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(UserFocusViewCell.self, forCellWithReuseIdentifier: focusCellId)
        collectionView.register(UserImageViewCell.self, forCellWithReuseIdentifier: imageCellId)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return postData.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let section = indexPath.section
        
        // 判斷資料模型種類
        // 貼文類
        if let postViewModel = postData[section] as? PostViewModel {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! UserInfoViewCell
            cell.updateWith(object: postViewModel)
            
            return cell
            
        } else if let postImageViewModel = postData[section] as? PostImageViewModel {
            
            // 主要照片類別
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: imageCellId, for: indexPath) as! UserImageViewCell
            cell.updateWith(object: postImageViewModel)
            
            return cell
        } else if let focusViewModel = postData[section] as? FocusViewModel {
            
            // 關注類
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: focusCellId, for: indexPath) as! UserFocusViewCell
            cell.updateWith(object: focusViewModel)
            
            return cell
        }
        
        let cell = UICollectionViewCell()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if postData[indexPath.section] is PostViewModel {
            return CGSize(width: view.frame.width, height: 50)
        } else if postData[indexPath.section] is PostImageViewModel {
            return CGSize(width: view.frame.width, height: 400)
        } else if postData[indexPath.section] is FocusViewModel {
            return CGSize(width: view.frame.width, height: 100)
        }
        
        return CGSize.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

