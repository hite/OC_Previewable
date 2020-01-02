//
//  View_Preview.swift
//  OC_Previewable
//
//  Created by liang on 2019/12/31.
//  Copyright © 2019 liang. All rights reserved.
//
import Foundation

import SwiftUI

#if canImport(SwiftUI)

import SwiftUI
struct UIViewPreview<View: UIView>: UIViewRepresentable {
    typealias UIViewType = UIView

    let view: View

    init(_ builder: @escaping () -> View) {
        view = builder()
    }
    // MARK: - UIViewRepresentable
    func makeUIView(context: Context) -> UIView {
        return view
    }

    func updateUIView(_ view: UIView, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}

@available(iOS 13.0, *)
struct View_Preview: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            let sv = SwiftView()
            return sv
        }
    }
}

#endif
