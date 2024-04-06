//
//  FrameworkGridViewModel.swift
//  Apple-FrameWorks
//
//  Created by Egor Mironov on 06.04.2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
