//
//  CollectionIGListKitController.swift
//  IGListKitArchetype
//
//  Created by 陳囿豪 on 2019/6/2.
//  Copyright © 2019 yasuoyuhao. All rights reserved.
//

import IGListKit

//MARK:- MainViewController
class CollectionIGListKitController: UIViewController {
    
    let layout = UICollectionViewFlowLayout()
    lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    
    let updater = ListAdapterUpdater()
    lazy var adapter = ListAdapter(updater: updater, viewController: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adapter.dataSource = self
        adapter.collectionView = collectionView
        
        view.addSubview(collectionView)
        collectionView.fillToSuperview()
        
        collectionView.backgroundColor = .white
    }
}

//MARK:- ListAdapterDataSource
extension CollectionIGListKitController: ListAdapterDataSource {
    // 資料來源
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return PostData.postData
    }
    
    // 返回合適的 ListSectionController
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        
        if object is PostViewModel {
            return UserInfoViewController()
        } else if object is PostImageViewModel {
            return UserImageViewController()
        } else if object is FocusViewModel {
            return FocusViewModelViewController()
        }
        
        return ListSectionController()
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}

//MARK:- UserInfoView
class UserInfoViewController: ListSectionController {
    
    var currentUserInfo: PostViewModel?
    
    override func didUpdate(to object: Any) {
        guard let userInfo = object as? PostViewModel else {
            return
        }
        currentUserInfo = userInfo
    }
    
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 50)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext!.dequeueReusableCell(of: UserInfoViewCell.self, for: self, at: index) as! UserInfoViewCell
        
        if let currentUserInfo = currentUserInfo {
            cell.updateWith(object: currentUserInfo)
        }
        
        return cell
    }
}

//MARK:- UserImageView
class UserImageViewController: ListSectionController {
    
    var currentUserImage: PostImageViewModel?
    
    override func didUpdate(to object: Any) {
        guard let userImage = object as? PostImageViewModel else {
            return
        }
        currentUserImage = userImage
    }
    
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 400)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext!.dequeueReusableCell(of: UserImageViewCell.self, for: self, at: index) as! UserImageViewCell
        if let currentUserImage = currentUserImage {
            cell.updateWith(object: currentUserImage)
        }
        
        return cell
    }
}

//MARK:- FocusViewModelView
class FocusViewModelViewController: ListSectionController {
    
    var currentFocus: FocusViewModel?
    
    override func didUpdate(to object: Any) {
        guard let focus = object as? FocusViewModel else {
            return
        }
        currentFocus = focus
    }
    
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 100)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext!.dequeueReusableCell(of: UserFocusViewCell.self, for: self, at: index) as! UserFocusViewCell
        
        if let currentFocus = currentFocus {
            cell.updateWith(object: currentFocus)
        }
        
        return cell
    }
}
