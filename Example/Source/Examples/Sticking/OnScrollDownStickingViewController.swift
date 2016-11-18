//
//  OnScrollDownStickingViewController.swift
//  BrickApp
//
//  Created by Ruben Cagnie on 5/31/16.
//  Copyright © 2016 Wayfair. All rights reserved.
//

import UIKit
import BrickKit

class OnScrollDownStickingViewController: BaseSectionBrickViewController {

    override class var title: String {
        return "On Scroll Down"
    }
    override class var subTitle: String {
        return "Reveal the sticky header on scroll down"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        behavior = OnScrollDownStickyLayoutBehavior(dataSource: self)
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print(self.collectionView?.contentInset)
    }

}

extension OnScrollDownStickingViewController: StickyLayoutBehaviorDataSource {
    func stickyLayoutBehavior(behavior: StickyLayoutBehavior, shouldStickItemAtIndexPath indexPath: NSIndexPath, withIdentifier identifier: String, inCollectionViewLayout collectionViewLayout: UICollectionViewLayout) -> Bool {
        return identifier == BrickIdentifiers.titleLabel
    }
}
