//
//  HomeView.swift
//  PhotoShop
//
//  Created by 김동현 on 2022/08/09.
//

import SwiftUI

struct HomeView: View {
    let menu = [["편집", "edit"], ["collage", "collage"], ["capture", "capture"],]
    
    var body: some View {
        ScrollView() {
            stackView
        }
    }
}

// MARK: - Subviews

extension HomeView {
    var stackView: some View {
        GeometryReader { geo in
            VStack(spacing: 20) {
                bannerView.frame(width: geo.size.width, height: geo.size.height / 4)
                menuView.frame(width: geo.size.width, height: geo.size.height / 12)
                albumListView.frame(width: geo.size.width, height: geo.size.height / 3)
            }
        }
        .frame(width: 320, height: 1000, alignment: .center)
    }
    
    var bannerView: some View {
        ZStack{
            Color(red: 52 / 255, green: 152 / 255, blue: 219 / 255).ignoresSafeArea()
            Text("Banner")
        }
    }
    
    var menuView: some View {
        GeometryReader { geo in
            HStack(spacing: 10) {
                ForEach(menu, id: \.self) {
                    IconButton(title: $0[0], image: Image($0[1]), size: geo.size)
                }
            }
        }
    }
    
    var albumListView: some View {
        Text("albumList")
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
