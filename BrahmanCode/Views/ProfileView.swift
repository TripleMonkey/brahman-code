//
//  ProfileView.swift
//  CarouselTingz
//
//  Created by Dashawn Morrow on 5/1/24.
//

import SwiftUI



struct ProfileView: View {
    
    @State private var isDarkMode: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Account Information")) {
                    HStack {
                        Text("Username:")
                        Spacer()
                        Text("JohnDoe123")
                            .foregroundColor(.gray)
                    }
                }
                
                Section(header: Text("Notification Settings")) {
                    Toggle("Receive Notifications", isOn: .constant(true))
                    Toggle("Email Notifications", isOn: .constant(false))
                    
                        
                }
                
                Section(header: Text("Display Settings")) {
                    Toggle("Dark Mode", isOn: $isDarkMode)
                        .preferredColorScheme(isDarkMode ? .dark : .light)
                }
                
                Section(header: Text("Privacy Settings")) {
                    Toggle("Private Account", isOn: .constant(false))
                }
                
                Section(header: Text("Sign Out")) {
                    Button(action: {
                        // Implement sign-out action (not implemented in this example)
                    }) {
                        Text("Sign Out")
                            .foregroundColor(.red)
                    }
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}



#Preview {
    ProfileView()
        
}
