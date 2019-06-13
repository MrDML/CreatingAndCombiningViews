//
//  ContentView.swift
//  CreatingAndCombiningViews
//
//  Created by mac on 2019/6/13.
//  Copyright © 2019 mac. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        
        VStack {
            // 地图视图
            mapView()
            
            // 头像视图
            circleView()
            
            // 文字视图
            TextView()
        }

        
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct TextView : View {
    var body: some View {
        return VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct circleView : View {
    var body: some View {
        return CircleImage()
            .offset( y:-130)
            .padding(.bottom,-130)
    }
}

struct mapView : View {
    var body: some View {
        return MapView()
            .edgesIgnoringSafeArea(.top) // 允许地图扩展到顶部的边缘
            .frame( height: 300.0)
    }
}
