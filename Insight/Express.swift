

import SwiftUI
import AVFoundation
struct Express: View {
    
    
    @State var ispickerShowing = false
    //    @State var isHome = false
    @State var selectedImage: UIImage?
    @State var text = ""
    
    
    var body: some View {
        
        NavigationView {
            ZStack (alignment: .top)
            {
                
                LinearGradient(gradient: Gradient(colors: [Color("B"),Color("B 1") ]),
                               startPoint: .topLeading, endPoint: .bottomLeading
                ).edgesIgnoringSafeArea(.all)
                
                
                VStack(alignment: .leading){
                    
                    HStack {
                        VStack(alignment: .leading)  {
                            Text("Express")
                                .font(.system(size: 45))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 200 , height: 50)
                                .padding(.horizontal, -16.0)
                            Text("Your posts will be anonyus")
                                .font(.title2)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, -3.0)
                        }
                        .padding(.leading)
                        .padding()
                        .padding(.top, 90)
                        Spacer()
                            .frame(width: 100)
                    }
                    VStack{
                        VStack {
                            if selectedImage != nil {
                                Image(uiImage: selectedImage! )
                                    .resizable()
                                    .frame(width: 350 ,height: 350)
                                    .cornerRadius(40)
                                    .padding(.trailing, 2.0)
                                
                                
                            }
                            else {
                                
                                
                                Image("Pic1")
                                    .resizable()
                                    .frame(width: 350 ,height: 350)
                                    .cornerRadius(40)
                                    .padding()
                            }
                        }
                        
                        
                        VStack{
                            Button {
                                ispickerShowing = true
                                
                                
                            } label: {
                                
                                HStack {
                                    
                                    Image(systemName: "camera.fill")
                                    
                                        .font(.system(size:20))
                                        .foregroundColor(.white)
                                        .padding([.vertical,.leading])
                                    Text("picture")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .frame(width: 100, height: 40)
                                    
                                    
                                }.frame(width: 170,height: 40).background(Color("B"))
                                
                                    .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                
                                
                                    .sheet(isPresented:$ispickerShowing, onDismiss: nil){
                                        //            image picker
                                        ImagePicker(selectedImage: $selectedImage , isPickerShowing: $ispickerShowing)
                                        
                                        
                                    }
                                
                                
                                
                                
                            }
                            
                            HStack{
                                Text("Exsprss")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .frame(width: 100 , height: 0)
                                TextField("comment", text :$text)
                                    .foregroundColor(.white)
                                    .frame(width: 240,height: 60)
                                
                            }
                            .padding(.vertical,12)
                            .padding(.horizontal)
                            .background(Color.gray.opacity(0.08 ))
                            .cornerRadius(13)
                            .padding()
                            
                            
                            
                            NavigationLink(destination: Home().navigationBarBackButtonHidden()) {
                             Text("SHARE")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .frame(width: 100, height: 40)
                                    .frame(width: 150,height: 60).background(Color("B"))
                                    .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                    .padding(.bottom, 120)
                            }
                            
                            
                           
                            
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                }
                
            }
            
        }
        
    }
    
}
    
    struct Express_Previews: PreviewProvider {
        static var previews: some View {
            Express()
        }
    }
    
    
//}
