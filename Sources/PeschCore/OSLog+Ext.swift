//
//  OSLog+Ext.swift
//  PeschCore
//
//  Created by Eugène Peschard on 10/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

import os.log
import Foundation

extension OSLog {

    private static var mainBundleId = Bundle.main.bundleIdentifier!

    static let viewCycle = OSLog(subsystem: mainBundleId,
                                 category: "viewCycle")
    static let view = OSLog(subsystem: mainBundleId,
                            category: "view")
    static let interactor = OSLog(subsystem: mainBundleId,
                                  category: "interactor")
    static let presenter = OSLog(subsystem: mainBundleId,
                                 category: "presenter")
    static let entity = OSLog(subsystem: mainBundleId,
                              category: "entity")
    static let repo = OSLog(subsystem: mainBundleId,
                            category: "repo")

}
