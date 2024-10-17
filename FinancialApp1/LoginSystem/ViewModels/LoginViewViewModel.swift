//
//  LoginViewViewModel.swift
//  FinancialApp1
//
//  Created by Aryan Pradhan on 17/10/2024.
//

import FirebaseAuth
import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    init() {}
    
    func login() {
        guard validate() else {
            errorMessage = "Invalid email or password."
            return
        }
        //Try to login the User
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            if let error = error {
                strongSelf.errorMessage = error.localizedDescription
            } else {
                //Login was successfull
                strongSelf.errorMessage = ""
            }
            
        }
    }
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Invalid Email or Password"
            return false
        }
        
        //email@something.com
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email ID"
            return false
        }
        return true
    }
}
