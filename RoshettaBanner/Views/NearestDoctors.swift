    //
    //  NearestDoctors.swift
    //  RoshettaBanner
    //
    //  Created by Sami Ahmed on 08/11/2023.
    //

    import SwiftUI

    struct NearestDoctors: View {
        var DoctorCardData : NearestDoctorDetails
        var body: some View {
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .background(Color(red: 0.16, green: 0.16, blue: 0.16).opacity(0.03))
                    .frame(width: 144, height: 205)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color("Stroke"), lineWidth: 1)
                    )
                VStack(spacing: 4){
                    Image(DoctorCardData.presonal_photo)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 64, height: 64)
                        .clipShape(Ellipse())
                        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 4)
                    Text(DoctorCardData.name)
                        .font(.system(size: 13))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color"))
                    Text(DoctorCardData.specilization)
                        .font(.system(size: 12))
                        .fontWeight(.medium)
                        .foregroundColor(Color("Color").opacity(0.65))
                    
                    HStack (spacing: 2){
                        ForEach(0 ..< 5) { _ in
                            Image(DoctorCardData.rate_image)
                        }
                    } //Hstack
                    
                    VStack(alignment: .leading) {
                        HStack (spacing:0.5){
                            Image(DoctorCardData.location_logo)
                                .padding(.trailing,12)
                            Text(DoctorCardData.price)
                                .fontWeight(.medium)
                                .font(.system(size: 10))
                                .foregroundColor(Color("Color").opacity(0.65))
                                .multilineTextAlignment(.center)
                        }//HStack
                        .padding(.top, 2)
                        
                        
                        HStack(spacing: 0.5){
                            Image(DoctorCardData.location_logo)
                            Text(DoctorCardData.location)
                                .fontWeight(.medium)
                                .font(.system(size: 10))
                                .foregroundColor(Color("Color").opacity(0.65))
                        }//Hstack
                    }
                }
            }//:Zstack
        }
    }

    struct NearestDoctors_Previews: PreviewProvider {
        static var previews: some View {
            NearestDoctors(DoctorCardData:DoctorCardDetails[2])
        }
    }

