//
//  NearestDoctorsModel.swift
//  RoshettaBanner
//
//  Created by Sami Ahmed on 08/11/2023.
//

import SwiftUI
struct NearestDoctorDetails : Identifiable {
    var id = UUID()
    var presonal_photo : String
    var location_logo : String
    var price_logo: String
    var name : String
    var location : String
    var rate : String
    var price : String
    var rate_image : String
    var specilization : String
}

let DoctorCardDetails : [NearestDoctorDetails] = [
NearestDoctorDetails(presonal_photo: "male", location_logo: "Location", price_logo: "Location", name: "Dr. Sami Ahmed", location: "Damietta,Egypt", rate: "", price: "400 L.E", rate_image: "Star", specilization: "Dentist"),
NearestDoctorDetails(presonal_photo: "female", location_logo: "Location", price_logo: "Location", name: "Dr. Shrouk Ahmed", location: "Elmansoura,Egypt", rate: "", price: "500 L.E", rate_image: "Star", specilization: "Dentist"),
NearestDoctorDetails(presonal_photo: "male", location_logo: "Location", price_logo: "Location", name: "Dr. Abdalazem Saleh", location: "Zamalek,Cairo", rate: "", price: "500 L.E", rate_image: "Star", specilization: "Surgery"),
NearestDoctorDetails(presonal_photo: "male", location_logo: "Location", price_logo: "Location", name: "Dr. Ahmed Kamal", location: "Tanta,Egypt", rate: "", price: "400 L.E", rate_image: "Star", specilization: "Dentist")

]
















