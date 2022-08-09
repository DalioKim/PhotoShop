//
//  ImageStyle.swift
//  PhotoShop
//
//  Created by 김동현 on 2022/08/09.
//

import SwiftUI

extension Image {
    func asIconStyle(withMaxWidth maxWidth: CGFloat = 20, withMaxHeight maxHeigh: CGFloat = 20) -> some View {
        
        self.resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: maxWidth, height: maxHeigh)
            .foregroundColor(.white)
    }
}
