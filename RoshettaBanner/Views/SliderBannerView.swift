//
//  SliderBannerView.swift
//  RoshettaBanner
//
//  Created by Sami Ahmed on 05/11/2023.
//

import SwiftUI

struct SliderBannerView: View {
    // MARK: - POPERTYS
    @State private var currentIndex: Int = 0
    @Binding var slides: [String]
    
    // MARK: - VIEW
    var body: some View {
        TabView {
            ForEach(slides.indices, id: \.self) { slide in
                Image(slides[slide])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(15)
            }
        }
        .frame(width: UIScreen.main.bounds.size.width - 40 , height: 184)
        .cornerRadius(15)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct SliderBannerView_Previews: PreviewProvider {
    static var previews: some View {
        SliderBannerView(slides:.constant(["Image","Image","Image"]))
    }
}
