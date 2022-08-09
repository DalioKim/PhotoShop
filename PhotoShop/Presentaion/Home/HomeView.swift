//
//  HomeView.swift
//  PhotoShop
//
//  Created by 김동현 on 2022/08/09.
//

import SwiftUI

struct HomeView: View {
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
            VStack {
                bannerView.frame(width: geo.size.width, height: geo.size.height / 3)
                menuView.frame(width: geo.size.width, height: geo.size.height / 3)
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
        Text("menuView!")
    }
    
    var albumListView: some View {
        Text("Hello, world!")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
