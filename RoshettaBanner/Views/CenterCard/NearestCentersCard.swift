//
//  NearestCentersCard.swift
//  RoshettaBanner
//
//  Created by Sami Ahmed on 07/11/2023.
//

import SwiftUI

struct NearestCentersCard: View {
    var CentersCardData : CentersCardDetails
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .background(Color(red: 0.16, green: 0.16, blue: 0.16).opacity(0.03))
                .frame(width: 179, height: 140)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 0)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color("Stroke"), lineWidth: 1)
                )
            
            VStack (spacing:8) {
                HStack( spacing: 8){
                    CenterPhotoView(centerData: CentersCardData)
                    CenterInfoView(centerData: CentersCardData)
                }//:HStack
                .padding(.horizontal,-80)
                
                Location_PriceInfoView(locationData: CentersCardData)
                    .padding(.horizontal,-80 )
            }//:VStack
        }//:ZStack
    }
}

struct CenterPhotoView: View {
    var centerData: CentersCardDetails
    
    var body: some View {
        ZStack {
            Image(centerData.logo)
                .resizable()
                .scaledToFill()
                .frame(width: 56, height: 56)
                .clipShape(Ellipse())
                .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 4)
        }//:ZStack
    }
}

struct CenterInfoView: View {
    var centerData: CentersCardDetails
    
    var body: some View {
        VStack(spacing: 4) {
            Text(centerData.name)
                .font(.system(size: 14))
                .fontWeight(.semibold)
                .foregroundColor(Color("Color"))
            
            HStack(spacing: 2) {
                ForEach(0 ..< 5) { _ in
                    Image(centerData.rate_image)
                }
            }//:HStack
        }//:VStack
        .padding(.bottom, 4)
    }
}

struct Location_PriceInfoView: View {
    var locationData: CentersCardDetails
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack (spacing: 4) {
                Image(locationData.location_logo)
                Text(locationData.price_range)
                    .font(.system(size: 10))
                    .fontWeight(.medium)
                    .foregroundColor(Color("Color").opacity(0.65))
            }//:HStack
            
            HStack (spacing: 4){
                Image(locationData.location_logo)
                Text(locationData.location)
                    .font(.system(size: 10))
                    .fontWeight(.medium)
                    .foregroundColor(Color("Color").opacity(0.65))
            }//:HStack
        }//:VStack
    }
}

struct NearestCentersCard_Previews: PreviewProvider {
    static var previews: some View {
        NearestCentersCard(CentersCardData:CentersCardData[0])
    }
}
