//
//  PostData.swift
//  IGListKitArchetype
//
//  Created by 陳囿豪 on 2019/6/2.
//  Copyright © 2019 yasuoyuhao. All rights reserved.
//

import Foundation

class PostData {
    static let postData: [PostPageProtocol] = [
        PostViewModel(headerImage: "IMG_1164", headerTitle: "美少女布蕾", headerRightButtonTitle: "..."),
        PostImageViewModel(mainImage: "IMG_2134"),
        PostViewModel(headerImage: "IMG_2164", headerTitle: "美少女小咪", headerRightButtonTitle: "..."),
        PostImageViewModel(mainImage: "IMG_1605"),
        FocusViewModel(headerImage: "IMG_2044", headerTitle: "地表最可愛", headerRightButtonTitle: "關注"),
        PostViewModel(headerImage: "IMG_2164", headerTitle: "美少女布布", headerRightButtonTitle: "..."),
        PostImageViewModel(mainImage: "IMG_1452"),
        PostViewModel(headerImage: "IMG_1164", headerTitle: "美少女阿咪", headerRightButtonTitle: "..."),
        PostImageViewModel(mainImage: "IMG_1578"),
        FocusViewModel(headerImage: "IMG_1205", headerTitle: "地表最可愛", headerRightButtonTitle: "關注"),
        PostViewModel(headerImage: "IMG_2164", headerTitle: "美少女喵", headerRightButtonTitle: "..."),
        PostImageViewModel(mainImage: "IMG_1351"),
    ]
}
