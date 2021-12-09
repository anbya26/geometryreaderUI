//
//  ContentView.swift
//  geometryreaderUI
//
//  Created by Mufti Ramdhani on 15/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      NavigationView{
        VStack{
          kolom(gambar1: "potrait1", gambar2: "potrait2", gambar3: "potrait3")
          kolom(gambar1: "potrait3", gambar2: "potrait4", gambar3: "potrait5")
          Text("Galeri Saya").background(Color.orange)
        }
      .navigationBarTitle("Galeri")
      }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct kolom : View {
  var gambar1, gambar2, gambar3 : String
  var body: some View {
    GeometryReader {
      geo in
      HStack {
        Image(self.gambar1)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: geo.size.width/3, height: geo.size.height)
          .clipped()
        Image(self.gambar2)
          .resizable()
          .aspectRatio(contentMode: .fill )
          .frame(width: geo.size.width/3, height: geo.size.height)
          .clipped()
        Image(self.gambar3)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: geo.size.width/3, height: geo.size.height)
          .clipped()
        
      }
    }
  }
}
