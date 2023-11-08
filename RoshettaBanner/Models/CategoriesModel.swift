//
//  CategoriesModel.swift
//  RoshettaBanner
//
//  Created by Sami Ahmed on 06/11/2023.
//

import SwiftUI
struct CategoriesModel : Identifiable {
    var id = UUID()
    var title : String
    var image : String
    var categoryId : String
}

let CategoriesData : [CategoriesModel] = [
   CategoriesModel(title:"Doctor",
                   image:"doctor",
                   categoryId: "1"),
   CategoriesModel(title: "Clinic",
                   image: "clinic",
                   categoryId: "2"),
   CategoriesModel(title: "center",
                   image: "center",
                   categoryId: "3"),
   CategoriesModel(title: "Specialist",
                   image: "Squared",
                   categoryId: "4"),
]



