//
//  CentersCardDetails.swift
//  RoshettaBanner
//
//  Created by Sami Ahmed on 07/11/2023.
//

import SwiftUI
struct CentersCardDetails : Identifiable {
    var id = UUID()
    var logo : String
    var location_logo : String
    var price_logo: String
    var name : String
    var location : String
    var rate : String
    var price_range : String
    var rate_image : String
}

let CentersCardData : [CentersCardDetails] = [
    CentersCardDetails(logo: "centephoto", location_logo: "Location", price_logo: "Location", name: "Family Care", location: "New Damietta,Damietta", rate: "10", price_range: "200 L.E ~ 300 L.E", rate_image: "Star"),
    CentersCardDetails(logo: "centephotoo", location_logo: "Location", price_logo: "Location", name: "EliteCare", location: "Mansoura, Dakahlia", rate: "10", price_range: "400 L.E ~ 600 L.E", rate_image: "Star"),
    CentersCardDetails(logo: "centephoto", location_logo: "Location", price_logo: "Location", name: "Eye Care", location: "Farskour,Damietta", rate: "10", price_range: "1000 L.E ~ 9000 L.E", rate_image: "Star"),
    CentersCardDetails(logo: "centephotoo", location_logo: "Location", price_logo: "Location", name: "AllCare", location: "Elroda, Damietta", rate: "10", price_range: "300 L.E ~ 500 L.E", rate_image: "Star")

]
