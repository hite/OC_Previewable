//
//  SwiftView.swift
//  OC_Previewable
//  Created by liang on 2020/1/1.
//  Copyright © 2020 liang. All rights reserved.
//

import Foundation
import UIKit

final class SwiftView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        let name = NameFlag()
        name.frame = .init(x: 0, y: 50, width: 100, height: 40)
        name.text = "Show me the path2"
        name.sizeToFit()
        
        self.addSubview(name)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

