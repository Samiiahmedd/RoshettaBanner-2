//
//  DoctorDetails.swift
//  RoshettaBanner
//
//  Created by Sami Ahmed on 21/11/2023.
//

import SwiftUI

struct DoctorDetails: View {
    var body: some View {
        var Centers : [CentersCardDetails] = CentersCardData
        VStack{
            ZStack{
                Image("male")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 160, height: 160)
                    .clipShape(Ellipse())
                    .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 4)
                
                Circle()
                    .foregroundColor(Color.green)
                    .frame(width: 15,height: 15)
                    .offset(x: 55, y: 60)
            }//ZStack
            
            Text("Dr. Sami Ahmed")
                .foregroundColor(Color("Color"))
                .fontWeight(.semibold)
                .font(.system(size: 20))
            
            HStack (spacing: 15){
                ForEach(0 ..< 5) { _ in
                    Image("Star")
                        .scaleEffect(2.0)
                    
                }
            } //HStack
            
            Text("About Doctor")                .fontWeight(.semibold)
                .foregroundColor(Color("Color"))
                .font(.system(size: 18))
                .padding(EdgeInsets(top:20, leading: 0 ,bottom: 10, trailing: 240))
            
            Text("Dr. Sami Ahmed is a highly skilled and compassionate dentist dedicated to providing comprehensive oral care to his patients. With a wealth of knowledge and experience in dentistry, he excels in diagnosing and treating various dental conditions, ranging from routine cleanings to complex procedures. ")
                .foregroundColor(Color("Color").opacity(0.65))
                .font(.system(size: 14))
                .padding(10)

            
            //                .frame(width: 350, height: 170)
                .padding(.horizontal, 15)
                .shadow(color: .black.opacity(0.1), radius: 2, x: 2, y: 4)
                .background(Color.gray.opacity(0.05))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("Stroke"), lineWidth: 1))

            
            Text("Specialization")
                .fontWeight(.semibold)
                .foregroundColor(Color("Color"))
                .font(.system(size: 18))
                .padding(EdgeInsets(top:20, leading: 0 ,bottom: 10, trailing: 240))
            
            
            HStack{
                Image("Tooth")
                Text("Dentist")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .foregroundColor(Color("c"))
                
                
            }//HStack
            .padding(10)
            .padding(.horizontal, 100)
//            .frame(width:120,height: 40 )
            .background(Color.gray.opacity(0.05))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("c"), lineWidth: 1))
//            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 250))
            //            .padding(.horizontal,-180)
            Text("Clinic")
                .fontWeight(.semibold)
                .foregroundColor(Color("Color"))
                .font(.system(size: 18))
                .padding(EdgeInsets(top:20, leading: 0 ,bottom: 0, trailing: 310))
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(Centers) { item in
                        NearestCentersCard(CentersCardData: item)
                    }
                }
                .padding(1)

            }
        }//VStack
        .padding(.horizontal, 15)

        
        
    }
}


struct DoctorDetails_Previews: PreviewProvider {
    static var previews: some View {
        DoctorDetails()
    }
}
