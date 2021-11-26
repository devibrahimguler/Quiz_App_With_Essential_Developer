//
//  MutipleTextSelectionCell.swift
//  QuizApp
//
//  Created by İbrahim Güler on 21.09.2021.
//

import SwiftUI

struct MutipleTextSelectionCell: View {
    @Binding var option: MultipleSelectionOption
    
    var body: some View {
        Button(action: { option.toggleSelection() }, label: {
            HStack {
                Rectangle()
                    .strokeBorder(option.isSelected ? Color.blue : Color.secondary, lineWidth: 2.5)
                    .overlay(
                        Rectangle()
                            .fill(option.isSelected ? Color.blue : .clear)
                            .frame(width: 26, height: 26)
                    )
                    .frame(width: 40.0, height: 40.0)
                
                Text(option.text)
                    .font(.title)
                    .foregroundColor(option.isSelected ? Color.blue : Color.secondary)
                
                Spacer()
            }.padding()
        })
    }
}

struct MutipleTextSelectionCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MutipleTextSelectionCell(
                option: .constant(.init(text: "A text", isSelected: false))
            ).previewLayout(.sizeThatFits)
            
            MutipleTextSelectionCell(
                option: .constant(.init(text: "A text", isSelected: true))
            ).previewLayout(.sizeThatFits)
        }
    }
}
