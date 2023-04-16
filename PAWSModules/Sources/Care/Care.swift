import SwiftUI

struct care: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack (alignment : .leading) {
                    Text("Support")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding()
                    VStack {
                        //Image(systemName: "questiondiamond")
                            //.font(.system(size: 60))
                            //.foregroundColor(Color.black)
                        Text("Worried about your results?")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                        
                        Text("Confirm if you need a follow up visit by sharing data with your doctor")
                            .foregroundColor(Color.gray)
                            .offset( y : -30)
                            .padding(20)
                        
                        Button(action: {
                            // Add action to upload data here
                        }) {
                            HStack {
                                Image(systemName: "arrow.up.circle")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                              
                                Text("Send Documents")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                            //.padding(5)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(Color(hex: "73AF91"))
                            .cornerRadius(10)
                        }
                        .padding()
                        .offset(y : -60)
                        
                        Text("Post Surgery Timeline")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                            .offset( y : -40)
                        
                        Text("Experiencing unusal symptoms?")
                            .fontWeight(.bold)
                            .font(.system(size: 25))
                            .offset( y : 680)
                        Graphic()
                            .offset(y : -110)
                        Information()
                            .offset(y : -90)
                        //.padding(.leading, 20)
                    }
                }
            }
        }

    }
}

struct care_Previews: PreviewProvider {
    static var previews: some View {
        care()
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}



