//
//  UITableViewCell+Reusable.swift
//  PeschCore
//
//  Created by Eugène Peschard on 10/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

#if !os(macOS)
import UIKit

extension UITableViewCell: ReusableView {}

/**
 Example usage:

 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell: MyTableViewCell = tableView.dequeueReusableCell(for: indexPath)
    cell.configure(viewModel: viewModel)
    return cell
}
 */
extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Developer Error: Unable to dequeue reusable UITableViewCell. Did you register the cell?")
        }
        return cell
    }
}
#endif
