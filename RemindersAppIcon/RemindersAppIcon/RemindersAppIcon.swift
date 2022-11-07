//
//  RemindersAppIcon.swift
//  RemindersAppIcon
//
//  Created by Yashwant Das on 07/11/22.
//

import SwiftUI

struct RemindersAppIcon: View {
    var body: some View {
        GeometryReader{ geo in
            let iconHeight = geo.size.height
            ZStack {
                RoundedRectangle(cornerRadius: iconHeight * 0.2)
                    .foregroundColor(Color.white)
                
                VStack(spacing: iconHeight * 0.1) {
                    ReminderRow(color: .blue, iconHeight: iconHeight)
                    ReminderRow(color: .red, iconHeight: iconHeight)
                    ReminderRow(color: .orange, iconHeight: iconHeight)
                    
                }
            }
        }
    }
}

struct ReminderRow: View {
    
    let color: Color
    let iconHeight: CGFloat
    
    var body: some View {
        HStack(spacing: iconHeight * 0.115) {
            ZStack {
                Circle()
                    .frame(width: iconHeight * 0.1)
                Circle()
                    .stroke(lineWidth: iconHeight * 0.015)
                    .frame (width: iconHeight * 0.15)
            }
            .offset(x:iconHeight * -0.01, y:0)
            .foregroundColor(color)
            
            RoundedRectangle(cornerRadius: 1)
                .frame(width: iconHeight * 0.5, height: iconHeight * 0.015)
                .foregroundColor(.gray.opacity(0.6))
                .blur(radius: 0.3)
        }
    }
}

struct RemindersAppIcon_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            RemindersAppIcon()
                .frame(width: 100, height: 100)
        }
        .frame(width: 150, height: 150)
        .background(Color.gray)
        .previewLayout(.sizeThatFits)
    }
}
