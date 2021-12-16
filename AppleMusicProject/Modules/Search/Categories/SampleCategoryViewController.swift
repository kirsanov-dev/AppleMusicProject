//
//  SampleCategoryViewController.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 16.12.2021.
//

import Foundation
import SwiftUI
import UIKit

final class SampleCategoryViewController: UIHostingController<SampleCategoryView> {
    
    init() {
        super.init(rootView: SampleCategoryView())
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
