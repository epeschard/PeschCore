//
//  UICollectionViewCell+Reusable.swift
//  PeschCore
//
//  Created by Eugène Peschard on 10/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

#if !os(macOS)
import UIKit

extension UICollectionViewCell: ReusableView {}

/**
 Example usage:

 func collectionView(_ collectionView: UICollectionView, cellForRowAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell: MyCollectionViewCell = collectionView.dequeueReusableCell(for: indexPath)
    cell.configure(viewModel: viewModel)
    return cell
}
 */
extension UICollectionView {
    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Developer Error: Unable to dequeue reusable UICollectionViewCell. Did you register the cell?")
        }
        return cell
    }
}
#endif
