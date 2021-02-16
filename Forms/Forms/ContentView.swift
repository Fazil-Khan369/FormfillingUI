//
//  ContentView.swift
//  Forms
//
//  Created by Fazil P on 15/01/21.
//

import SwiftUI

class AddressData: ObservableObject {
    @State var Street  = ""
    @State var City = ""
    @State var State = ""
    @State var Postalcode = ""
    @State var Country = ""
    
}

struct ContentView: View {
    
    @StateObject var mailingView = AddressData()    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var password = ""
    @State private var confirmpass = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("First Name", text: $firstName)
                        TextField("Last name", text: $lastName)
                    }
                    
                    Section(footer: Text("Your password must be at least 8 characters long")) {
                        SecureField("Create Password", text: $password)
                        SecureField("Confirm Password", text: $confirmpass)
                    }
                    
                    Section(header: Text("Mailing Address")) {
                        
                        TextField("Street Address", text: $mailingView.Street)
                        TextField("City", text: $mailingView.City)
                        TextField("State", text: $mailingView.State)
                        TextField("Postal Code", text: $mailingView.Postalcode)
                        TextField("Country", text: $mailingView.Country)
                    }
                }
                
                Divider()
                
                Button(action: {}, label: {
                    Text("Continue")
                        .frame(width: 250, height: 50, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                .padding()
                
            }
            .navigationBarTitle("Create Account")
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
