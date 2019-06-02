//
//  HeaderViewModel.swift
//  IGListKitArchetype
//
//  Created by 陳囿豪 on 2019/6/2.
//  Copyright © 2019 yasuoyuhao. All rights reserved.
//

import Foundation
import IGListKit

protocol PostPageProtocol: ListDiffable {
    var identifier: UUID { get }
}

class PostViewModel: PostPageProtocol {
    
    let identifier = UUID.init()
    let headerImage: String
    let headerTitle: String
    let headerRightButtonTitle: String
    
    init(headerImage: String, headerTitle: String , headerRightButtonTitle: String) {
        self.headerImage = headerImage
        self.headerTitle = headerTitle
        self.headerRightButtonTitle = headerRightButtonTitle
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return identifier as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? PostViewModel else {
            return false
        }
        return self.identifier == object.identifier
    }
}

class PostImageViewModel: PostPageProtocol {
    
    let identifier = UUID.init()
    let mainImage: String
    
    init(mainImage: String) {
        self.mainImage = mainImage
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return identifier as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? PostImageViewModel else {
            return false
        }
        return self.identifier == object.identifier
    }
}

class FocusViewModel: PostPageProtocol {
    
    let identifier = UUID.init()
    let headerImage: String
    let headerTitle: String
    let headerRightButtonTitle: String
    
    init(headerImage: String, headerTitle: String , headerRightButtonTitle: String) {
        self.headerImage = headerImage
        self.headerTitle = headerTitle
        self.headerRightButtonTitle = headerRightButtonTitle
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return identifier as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        guard let object = object as? FocusViewModel else {
            return false
        }
        return self.identifier == object.identifier
    }
}
