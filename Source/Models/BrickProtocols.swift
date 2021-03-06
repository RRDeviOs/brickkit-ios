//
//  BrickProtocols.swift
//  BrickKit
//
//  Created by Justin Anderson on 9/15/16.
//  Copyright © 2016 Wayfair LLC. All rights reserved.
//

import Foundation

/// Convenience datasource for a BrickViewController
public protocol BrickRegistrationDataSource {
    func registerBricks()
}

/// DataSource that is used to see how many times a brick is repeated. This can be set in a `BrickSection`
public protocol BrickRepeatCountDataSource: class {
    func repeatCount(for identifier: String, with collectionIndex: Int, collectionIdentifier: String) -> Int
}

/// This can be used to hide/show bricks. This can be set on a `BrickLayout` 
public protocol HideBehaviorDataSource: class {
    func hideBehaviorDataSource(shouldHideItemAtIndexPath indexPath: NSIndexPath, withIdentifier identifier: String, inCollectionViewLayout collectionViewLayout: UICollectionViewLayout) -> Bool
}

#if os(tvOS)
public protocol FocusableBrickCell {
    
    /// Called on tvOS when focus is given to the brick
    ///
    /// - returns: if should focus
    func willFocus() -> Bool
    
    /// Called on tvOS when about to remove focus from to the brick
    ///
    /// - returns: if brick should lose focus
    func willUnfocus() -> Bool
}
#endif
