//
//  SelfSizingTable.swift
//  Syed_Restaurant
//
//  Created by Bilal Ahmad on 03/12/2021.
//

import Foundation
import UIKit


class SelfSizedTableView: UITableView {
    override var contentSize:CGSize {
            didSet {
                invalidateIntrinsicContentSize()
            }
        }

        override var intrinsicContentSize: CGSize {
            layoutIfNeeded()
            return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
        }}


class TableViewAdjustedHeight: UITableView {
    override var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return self.contentSize
    }
override var contentSize: CGSize {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
    }
override func reloadData() {
        super.reloadData()
        self.invalidateIntrinsicContentSize()
    }
}
