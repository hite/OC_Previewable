//
//  VCPreviewer.swift
//  OC_Previewable
//
//  Created by liang on 2019/12/31.
//  Copyright © 2019 liang. All rights reserved.
//

import Foundation

import SwiftUI

#if canImport(SwiftUI)

@available(iOS 13.0, *)
struct ViewControllr_Preview: PreviewProvider, UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController
    

    static var previews: some View {
        ViewControllr_Preview()
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllr_Preview>) -> ViewController {
        return ViewController()
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: UIViewControllerRepresentableContext<ViewControllr_Preview>) {
        
    }
}

#endif

