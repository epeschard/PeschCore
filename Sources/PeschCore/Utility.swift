//
//  Utility.swift
//  PeschCore
//
//  Created by Eugène Peschard on 07/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

import Foundation

protocol Emptiable {
    static var empty: Self { get }
}

func onMainQueue(block: @escaping () -> Void) {
    DispatchQueue.main.async(execute: block)
}
