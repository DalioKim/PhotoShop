//
//  IconButton.swift
//  PhotoShop
//
//  Created by 김동현 on 2022/08/09.
//

import SwiftUI

struct IconButton: View {
    let title: String
    let image: Image
    let size: CGSize
    let action: (()-> Void)? = nil
    let count = 3
    
    var body: some View {
        Button(action: action ?? {}) {
            VStack {
                image.asIconStyle(withMaxWidth: size.width / 3, withMaxHeight: size.height)
                Text(title)
            }
        }
        .frame(width: size.width / 3, height: size.height)
    }
    
}
