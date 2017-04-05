//
//  GroupTableSeparatorFix.swift
//  GroupTableSeparatorFix
//
//  Created by DianQK on 27/03/2017.
//  Copyright © 2017 dianqk. All rights reserved.
//

import UIKit.UITableViewCell

public class GroupTableSeparatorFix {

    private static let removeFirstAndLastSeparatorLine: () = {
        let method = class_getInstanceMethod(UITableViewCell.self, #selector(UITableViewCell.layoutSubviews))
        let otherMethod = class_getInstanceMethod(UITableViewCell.self, #selector(UITableViewCell.fix_layoutSubviews))
        method_exchangeImplementations(method, otherMethod)
        return
    }()

    public class func removeFirstAndLastSeparatorLine(_: Void = ()) {
        _ = removeFirstAndLastSeparatorLine
    }

}

extension UITableViewCell {

    public var shouldRemoveFirstAndLastSeparatorLine: Bool {
        return true
    }

    fileprivate dynamic func fix_layoutSubviews() {
        guard shouldRemoveFirstAndLastSeparatorLine else {
            self.fix_layoutSubviews()
            return
        }
        if separatorInset.left == 0.0 {
            separatorInset.left = 0.001
        }
        self.fix_layoutSubviews()
        for view in self.subviews where view != self.contentView {
            view.isHidden = view.frame.origin.x == 0 && view.frame.origin.y != -0.5
        }
    }
    
}
