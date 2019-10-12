//
//  ReusableView.swift
//  PeschCore
//
//  Created by Eugène Peschard on 10/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

import Foundation

/// `reuseIdentifier` provider protocol
/// When adopted, the object will have a `reuseIdentifier` static property which can be used for dequeuing views.
/// Using this makes redundant creating constants for reusable views since the cell class is already unique and can be used for that.
protocol ReusableView {
    static var reuseIdentifier: String { get }
}

extension ReusableView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
