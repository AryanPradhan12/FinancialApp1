//
//  FinancialApp1App.swift
//  FinancialApp1
//
//  Created by Aryan Pradhan on 16/10/2024.
//
import FirebaseCore //import the firebase framework
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
} //Configure the firebase setup with your app manager file

@main
struct FinancialApp1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
