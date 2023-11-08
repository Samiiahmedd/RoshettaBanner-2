//
//  CategoryCard.swift
//  RoshettaBanner
//
//  Created by Sami Ahmed on 06/11/2023.
//

import SwiftUI

struct CategoryCard: View {
    var CategoryCardDetails : CategoriesModel
    var body: some View {
        NavigationLink(destination: DetailView(category: CategoryCardDetails)) {
        
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 80, height: 80)
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .inset(by: 0.5)
                            .stroke(Color("Stroke"))
                    )
                VStack{
                    Image(CategoryCardDetails.image)
                        .frame(width: 24,height: 32)
                    Text(CategoryCardDetails.title)
                        .font(.system(size: 14))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color"))
                }//Vstack
                
            }//Zstack
        }
        }
    }
struct DetailView: View {
    var category: CategoriesModel
    var body: some View {
        Text("Detail view for \(category.title)")
    }
}


struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(CategoryCardDetails: CategoriesData[0])
    }
}
