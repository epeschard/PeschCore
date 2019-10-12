//
//  MKAnnotationView+Reusable.swift
//  PeschCore
//
//  Created by Eugène Peschard on 10/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

import MapKit

extension MKAnnotationView: ReusableView {}

extension MKMapView {
    /// Returns a reusable annotation view located by its identifier.
    ///
    /// - Parameter makeAnnotation: A closure called if to create a new annotation when there
    /// are no reusable annotations or this is the first annotation view it is being created.
    /// - Returns: An annotation view
    func dequeueReusableAnnotationView<T: MKAnnotationView>(makeAnnotation: () -> T) -> T {
        guard let annotationView = dequeueReusableAnnotationView(withIdentifier: T.reuseIdentifier) as? T else {
            return makeAnnotation()
        }
        return annotationView
    }
}
