import SwiftUI

struct Graphic: View {
    var body: some View {
            VStack (alignment : .leading) {
                Text("Week")
                    .offset(x : 20, y : 30)
                    .font(.system(size: 25, weight: .bold))

                ZStack (alignment : .leading) {
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 10, height: 540)
                        .cornerRadius(5)
                        .offset(x : 50, y : -30)
                    ScrollView {
                        VStack (alignment : .leading) {
                            HStack () {
                                //Text("Phase 1")
                                //.font(.system(size: 15, weight: .bold))
                                Nodes(text : "0")
                                Text("\u{2022} Surgery Recovery \n\u{2022} Non-Weight Bearing \n")
                                    .font(.system(size: 15))
                            }
                            HStack (){
                                //Text("Phase 2")
                                //.font(.system(size: 15, weight: .bold))
                                Nodes(text : "1")
                                Text("\u{2022} Partial Weight-Bearing \n\u{2022} Light Strength & Flexibility Exercise \n")
                                    .font(.system(size: 15))
                            }
                            HStack () {
                                //Text("Phase 3")
                                //.font(.system(size: 15, weight: .bold))
                                Nodes(text : "3")
                                Text("\u{2022} Light Cycling \n\u{2022} Moderate Strength & Flexibility Exercise \n\u{2022} Light Balancing Exercise \n \u{2022} Assisted Functional Activity \n")
                                    .font(.system(size: 15))
                            }
                            HStack () {
                                //Text("Phase 4")
                                //.font(.system(size: 15, weight: .bold))
                                Nodes(text : "6")
                                Text("\u{2022} Full weight bearing \n\u{2022} Unassisted Functional Activity \n\u{2022} Machine-Based Resistance Training \n\u{2022} Continued Mobility Exercises \n")
                                    .font(.system(size: 15))
                            }
                            HStack () {
                                //Text("Phase 5")
                                //.font(.system(size: 15, weight: .bold))
                                Nodes(text : "12")
                                Text("\u{2022} Return to Full Work Duties \n\u{2022} Return to Recreational Activity \n\u{2022} Continued Rehabilitation \n")
                                    .font(.system(size: 15))
                            }
                            
                            HStack () {
                                //Text("Phase 6")
                                //.font(.system(size: 15, weight: .bold))
                                Nodes(text : "26")
                                Text("\u{2022} Knee Strength Normalized \n\u{2022} Flexibility Exceeds Pre-surgical Levels \n\u{2022} Patient's Quality of Life Maximized \n")
                                    .font(.system(size: 15))
                            }
                        }
                        .padding()
                        .background(Color.clear)
                    }
            }
            
        }
            .padding()
    }
        
}
    
    struct Graphic_Previews: PreviewProvider {
        static var previews: some View {
            Graphic()
        }
    }


