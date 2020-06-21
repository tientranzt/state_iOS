import SwiftUI

struct ContentView: View {
    @State private var titleValue = ""
    @EnvironmentObject var todoListData : TodoListData
    var body: some View {
        VStack {
            HStack{
                TextField("Title todo list", text: $titleValue)
                    .padding()
                    .background(Color.init(red: 228/255, green: 230/255, blue: 236/255))
                    .cornerRadius(15)
                
                Button(action: {
                    self.todoListData.list.append((Todo(title: self.titleValue, image: Todo.randomImage())))
                    self.titleValue =  ""
                    
                }) {
                    Text("Add")
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(15)
            }.padding(.all,20)
            
            Spacer()
            TodoList()
        }
        
        
    }
    
}

struct TodoList : View {
    @EnvironmentObject var totoListData : TodoListData
    var body : some View {
        List(totoListData.list){todo in
            VStack(alignment:.leading){
                HStack{
                    Image(todo.image)
                        .resizable()
                    .scaledToFill()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    VStack(alignment:.leading){
                        Text(todo.title)
                            .font(.custom( "" ,size: 22))
                            .bold()
                        Text(todo.title)
                            .foregroundColor(.gray)
                    }
                }
            }
            
        }
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
