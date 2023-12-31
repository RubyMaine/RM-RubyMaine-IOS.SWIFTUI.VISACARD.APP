//
//  CircularImageView.swift
//  VisaCard
//
//  Created by RubyMaine on 11/08/2023.
//

import SwiftUI

struct CircularImageView: View {
    let image: String
    let size: CGFloat
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: "1", size: 50)
            .previewLayout(.sizeThatFits)
    }
}
