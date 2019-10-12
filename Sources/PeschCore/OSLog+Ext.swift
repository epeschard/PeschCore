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

    static let helper = OSLog(subsystem: mainBundleId,
                              category: "helper")
    static let library = OSLog(subsystem: mainBundleId,
                               category: "library")
    static let common = OSLog(subsystem: mainBundleId,
                              category: "common")
    static let delegate = OSLog(subsystem: mainBundleId,
                                category: "delegate")
    static let repo = OSLog(subsystem: mainBundleId,
                            category: "repo")
    static let scene = OSLog(subsystem: mainBundleId,
                              category: "scene")
}
