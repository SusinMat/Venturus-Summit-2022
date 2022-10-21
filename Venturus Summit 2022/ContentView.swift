//
//  ContentView.swift
//  Venturus Summit 2022
//
//  Created by Matheus Martins Susin on 2022-10-21.
//

import SwiftUI

// MARK: - Main View
struct ContentView: View {
    let susin = UserViewModel(name: "Matheus M. Susin",
                              location: "Campinas - SP")

    var body: some View {
        List {
            UserCell(user: susin)
        }
    }
}

// MARK: - View Model
struct UserViewModel {
    let name: String
    let location: String
}

// MARK: - Cell View
struct UserCell: View {
    @State var user: UserViewModel

    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .frame(height: 60.0)
                .foregroundColor(.accentColor)
            Spacer()
            VStack {
                Text(user.name)
                    .bold()
                Text(user.location)
            }
            Spacer()
        }
    }
}

// MARK: Preview
struct ContentView_Previews: PreviewProvider {

    static let iPhoneSE3 = PreviewDevice(rawValue: "iPhone SE (3rd generation)")
    static let iPhone14 = PreviewDevice(rawValue: "iPhone 14")

    static var previews: some View {
        contentView.previewDevice(iPhoneSE3).preferredColorScheme(.light)
        contentView.previewDevice(iPhone14).preferredColorScheme(.dark)
    }

    static var contentView: some View {
        ContentView()
    }
}
