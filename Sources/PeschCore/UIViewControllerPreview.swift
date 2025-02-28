//
//  UIViewControllerPreview.swift
//  PeschCore
//
//  Created by Eugène Peschard on 29/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

#if !os(macOS) && canImport(SwiftUI) && DEBUG
import UIKit
import SwiftUI

public struct UIViewControllerPreview<ViewController: UIViewController>: UIViewControllerRepresentable {
    let viewController: ViewController

    public init(_ builder: @escaping () -> ViewController) {
        viewController = builder()
    }

    // MARK: - UIViewControllerRepresentable
    public func makeUIViewController(context: Context) -> ViewController {
        viewController
    }

    @available(iOS 13.0, *)
    public func updateUIViewController(_ uiViewController: ViewController, context: UIViewControllerRepresentableContext<UIViewControllerPreview<ViewController>>) {
        return
    }
}
#endif
