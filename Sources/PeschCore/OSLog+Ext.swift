//
//  OSLog+Ext.swift
//  PeschCore
//
//  Created by Eugène Peschard on 10/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

import os
import Foundation

@available(OSX 10.12, iOS 10, *)
public extension OSLog {

    static var mainBundleId = Bundle.main.bundleIdentifier!

    public static let viewCycle = OSLog(subsystem: mainBundleId,
                                        category: "viewCycle")
    public static let view = OSLog(subsystem: mainBundleId,
                                   category: "view")
    public static let interactor = OSLog(subsystem: mainBundleId,
                                         category: "interactor")
    public static let presenter = OSLog(subsystem: mainBundleId,
                                        category: "presenter")
    public static let entity = OSLog(subsystem: mainBundleId,
                                     category: "entity")
    public static let repo = OSLog(subsystem: mainBundleId,
                                   category: "repo")

}
