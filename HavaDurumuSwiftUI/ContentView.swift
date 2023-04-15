//
//  ContentView.swift
//  deneme
//
//  Created by sah on 15.04.2023.
//

import SwiftUI

struct ContentView: View {
    
 
    
    var body: some View {

        ZStack{
            arkaPlan(topColor: .blue, bottomColor: .yellow)
            VStack{
            sehir(sehirAdi: "Ankara")
            durum(temperature: 32, resimAdi: "cloud.sun.fill")
               .padding(.bottom,40)
                HStack(spacing:25){
                            havaDurumu(dayOfWeek:"P.tesi",
                                       imageName: "cloud.sun.fill",
                                       temperature: 16)
                        havaDurumu(dayOfWeek:"Salı",
                                   imageName: "sun.max.fill",
                                   temperature: 20)
                        havaDurumu(dayOfWeek:"Çar",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature: 17)
                        havaDurumu(dayOfWeek:"Per",
                                   imageName: "sun.max.fill",
                                   temperature: 22)
                        havaDurumu(dayOfWeek:"Cuma",
                                   imageName: "sun.dust.fill",
                                   temperature: 18)
          
                
                    
                     
            }
                Spacer()
                    Button {
                    print("Kaydet")
                    
                }
                label:{
        
                    durumButton(title: "Günü Değiştir", textColor: .black, backgroundColor: .yellow)
            }
                Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct havaDurumu: View{
    
    var dayOfWeek:String
    var imageName:String
    var temperature:Int
    
    var body: some View {
                    VStack{
                        Text(dayOfWeek).font(.system(size: 16,weight: .bold))
                        .foregroundColor(.white)
                        Image(systemName:  imageName)
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("\(temperature)°")
                            .font(.system(size: 28,weight: .medium ))
                            .foregroundColor(.white)

                    }
                }
                
            }
    
    struct arkaPlan:View{
        var topColor: Color
        var bottomColor : Color
        var body: some View{
            LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]),
                           startPoint: .topLeading,
                           endPoint:.bottomLeading)
            .edgesIgnoringSafeArea(.all)
            
        }
    }
    
    struct sehir:View{
        var sehirAdi:String
        var body: some View{
            Text(sehirAdi).font(.system(size: 32,weight:.medium,design:.default))
                .padding()
                .foregroundColor(.white)
        }
    }
    
    struct durum:View{
    
        var temperature:Int
        var resimAdi:String
        var body: some View{
            VStack{
                Image(systemName: resimAdi)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
            }
            Text("\(temperature)°")
                .font(.system(size: 55,weight: .medium ))
                .foregroundColor(.white)
            
        }
    }
    
}
