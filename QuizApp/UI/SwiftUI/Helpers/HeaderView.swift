//
//  HeaderView.swift
//  QuizApp
//
//  Created by İbrahim Güler on 21.09.2021.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 16.0) {
                Text(title)
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color.blue)
                    .padding(.top)
                
                Text(subtitle)
                    .font(.largeTitle)
                    .fontWeight(.medium)
            }
            Spacer()
        }.padding()
    }
    
}

struct QuizHeader_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "A title", subtitle: "A subtitle")
            .previewLayout(.sizeThatFits)
    }
}
