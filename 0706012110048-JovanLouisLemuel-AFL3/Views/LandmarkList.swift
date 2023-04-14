//
//  LandmarkList.swift
//  0706012110048-JovanLouisLemuel-AFL3
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List {
            List(landmarks) { landmark in
                LandmarkRow(landmark: landmark)
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
