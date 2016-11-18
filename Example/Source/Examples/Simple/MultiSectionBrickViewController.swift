//
//  MultiSectionBrickViewController.swift
//  BrickKit
//
//  Created by Ruben Cagnie on 6/14/16.
//  Copyright © 2016 Wayfair LLC. All rights reserved.
//

import UIKit
import BrickKit

class MultiSectionBrickViewController: BrickApp.BaseBrickController {
    
    override class var title: String {
        return "Multi Sections"
    }
    
    override class var subTitle: String {
        return "Example that shows the power of using sections in sections"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.registerBrickClass(LabelBrick.self)

        let configureCell: (cell: LabelBrickCell) -> Void = { cell in
            cell.configure()
        }

        let section = BrickSection(bricks: [
            LabelBrick(width: .Ratio(ratio: 0.5), backgroundColor: .brickGray1, text: "BRICK", configureCellBlock: configureCell),
            BrickSection(width: .Ratio(ratio: 0.5) , backgroundColor: .brickGray1, bricks: [
                LabelBrick(backgroundColor: .brickGray3, text: "BRICK\nBRICK", configureCellBlock: configureCell),
                LabelBrick(backgroundColor: .brickGray3, text: "BRICK", configureCellBlock: configureCell),
                LabelBrick(backgroundColor: .brickGray3, text: "BRICK", configureCellBlock: configureCell),
                ], inset: 10),
            BrickSection(backgroundColor: .brickGray1, bricks: [
                BrickSection(width: .Ratio(ratio: 1/3), backgroundColor: .brickGray3, bricks: [
                    LabelBrick(backgroundColor: .brickGray5, text: "BRICK", configureCellBlock: configureCell),
                    LabelBrick(backgroundColor: .brickGray5, text: "BRICK", configureCellBlock: configureCell),
                    ], inset: 5),
                BrickSection(width: .Ratio(ratio: 2/3), backgroundColor: .brickGray3, bricks: [
                    LabelBrick(backgroundColor: .brickGray5, text: "BRICK", configureCellBlock: configureCell),
                    LabelBrick(backgroundColor: .brickGray5, text: "BRICK", configureCellBlock: configureCell),
                    LabelBrick(backgroundColor: .brickGray5, text: "BRICK", configureCellBlock: configureCell),
                    ], inset: 15),
                ], inset: 5, edgeInsets: UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)),
            BrickSection(width: .Ratio(ratio: 0.5) , backgroundColor: .brickGray1, bricks: [
                LabelBrick(backgroundColor: .brickGray3, text: "BRICK", configureCellBlock: configureCell),
                LabelBrick(backgroundColor: .brickGray3, text: "BRICK", configureCellBlock: configureCell),
                ], inset: 10),
            LabelBrick(width: .Ratio(ratio: 0.5), backgroundColor: .brickGray1, text: "BRICK", configureCellBlock: configureCell),
            LabelBrick("THIS ONE", backgroundColor: .brickGray1, text: "BRICK", configureCellBlock: configureCell),
            ], inset: 10, edgeInsets: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))

//        let section = BrickSection(bricks: [
//            LabelBrick(height: .Fixed(size: 50), backgroundColor: .brickGray1, text: "BRICK", configureCellBlock: configureCell),
//            BrickSection(backgroundColor: .brickGray2, bricks: [
//                BrickSection(width: .Ratio(ratio: 1), backgroundColor: .brickGray4, bricks: [
//                    LabelBrick(height: .Fixed(size: 50), backgroundColor: .brickGray5, text: "BRICK", configureCellBlock: configureCell),
////                    LabelBrick(backgroundColor: .brickGray5, text: "BRICK", configureCellBlock: configureCell),
//                    ]),
//                ]),
//            ])

        self.setSection(section)
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        print("VIEW DID APPEAR")
        for indexPath in brickCollectionView.indexPathsForVisibleItems() {
            print(brickCollectionView.layoutAttributesForItemAtIndexPath(indexPath))
        }
    }
    
}
