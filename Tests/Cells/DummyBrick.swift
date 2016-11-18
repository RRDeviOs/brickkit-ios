//
//  DummyBrickCell.swift
//  BrickApp
//
//  Created by Ruben Cagnie on 5/25/16.
//  Copyright © 2016 Wayfair. All rights reserved.
//

@testable import BrickKit

class DummyBrick: Brick {
    var border: CGFloat = 1
}

class DummyBrickCell: BrickCell, Bricklike {
    typealias BrickType = DummyBrick

    var isCurrentlyFocused = false

    override func updateContent() {
        super.updateContent()

        self.contentView.layer.borderWidth = brick.border
    }

    override func heightForBrickView(withWidth width: CGFloat) -> CGFloat {
        let height = super.heightForBrickView(withWidth: width)
        return height
    }

}
