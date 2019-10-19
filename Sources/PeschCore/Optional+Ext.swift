//
//  Optional+Ext.swift
//  PeschCore
//
//  Created by Eugène Peschard on 19/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

extension Optional where Wrapped == String {
    var orEmpty: String {
        return self ?? ""
    }
}
