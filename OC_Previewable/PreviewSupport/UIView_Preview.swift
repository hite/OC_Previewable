//
//  View_Preview.swift
//  OC_Previewable
//
//  Created by liang on 2020/1/2.
//  Copyright © 2020 liang. All rights reserved.
//

import Foundation

#if canImport(SwiftUI)

import SwiftUI
@available(iOS 13.0, *)
struct UIView_Preview: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            let name = NameFlag()
            name.configure(withImageName: "duck", name: "小鸭子和绿色边框")
            return name
        }.padding()
    }
}

#endif
