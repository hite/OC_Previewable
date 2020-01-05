//
//  ViewController_Preview.swift
//  OC_Previewable
//
//  Created by liang on 2020/1/2.
//  Copyright © 2020 liang. All rights reserved.
//

import Foundation
import SwiftUI

#if canImport(SwiftUI)
import SwiftUI


@available(iOS 13.0, *)
struct UIViewController_Preview: PreviewProvider, UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIViewController

    static var previews: some View {
        UIViewController_Preview()
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<UIViewController_Preview>) -> UIViewController {
        let vc = MyViewController()
        vc.title = "下面是小鸡或者小鸭子的图形"
        let nav = UINavigationController(rootViewController: vc)
        return nav
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<UIViewController_Preview>) {
        
    }
}

#endif
