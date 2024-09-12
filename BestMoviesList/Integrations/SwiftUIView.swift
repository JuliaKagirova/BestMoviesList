//
//  SwiftUIView.swift
//  BestMoviesList
//
//  Created by Юлия Кагирова on 10.09.2024.
//

import SwiftUI

// интеграция суи в кит!

struct SwiftUIView: View {
    
    weak var nc: UINavigationController?
    
    var body: some View {
        //SwiftUI code
        Button(action: {
            nc?.popViewController(animated: true)
        }) {
            Text("Return to UIKit Screen")

        }

    }
}

#Preview {
    SwiftUIView()
}

//aButton.addTarget(self, action: #selector(openSwiftUIScreen), for: .touchUpInside)
//
//@objc private func openSwiftUIScreen() {
//    let swiftUIVC = UIHostingController(rootView: SwiftUIView(nc: self.navigationController))
//    self.navigationController?.pushViewController(swiftUIVC, animated: true)
//}
