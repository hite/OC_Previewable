//
//  View_Preview.swift
//  AppHostExample
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
            name.configure(withImageName: "chick", name: "小米之家")
            return name
        }.padding()
    }
}

#endif
