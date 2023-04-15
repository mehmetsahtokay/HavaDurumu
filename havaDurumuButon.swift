import SwiftUI

struct durumButton:View{
    var title:String
    var textColor:Color
    var backgroundColor:Color
    
    var body: some View{
        Text(title)
                .frame(width: 280, height:40)
                .background(backgroundColor)
                .font(.system(size: 20,weight: .bold,design: .default))
                .foregroundColor(textColor)
                .cornerRadius(10)
    }
}
