# IGListKitArchetype

<img src="https://img.shields.io/badge/platform-iOS-blue.svg?style=flat" alt="Platform iOS" /> <a href="https://developer.apple.com/swift"><img src="https://img.shields.io/badge/swift5-compatible-4BC51D.svg?style=flat" alt="Swift 5 compatible" /></a>

比較原生 CollectionView 與 IGListKit 使用上與業務耦合差異性

## How to Get Start

1. cd to dir
2. run `pod install`

## 源碼說明

* CollectionNormalController 為一般原生情況下 CollectionView 使用方式
* CollectionIGListKitController 為 IGListKit 使用方式

* UserInfoViewCell - 負責顯示用戶大頭貼、名稱、與更多
        * 對應 View Model - PostViewModel

* UserImageViewCell - 負責顯示用戶貼文圖片
        * 對應 View Model - PostImageViewModel

* UserFocusViewCell - 負責顯示推薦關注
        * 對應 View Model - FocusViewModel

* PostData - 模擬資料來源
