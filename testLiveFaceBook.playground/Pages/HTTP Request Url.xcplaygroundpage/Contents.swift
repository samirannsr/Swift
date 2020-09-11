
//1
import Foundation
struct ToDoResponseModel: Codable {
    var userId: Int
    var id: Int?
    var title: String
    var completed: Bool
}
//2
let url = URL(string: "https://jsonplaceholder.typicode.com/todos")
guard let requestUrl = url else { fatalError() }
//3
var request = URLRequest(url: requestUrl)
request.httpMethod = "POST"

//3.5 Set HTTP Request Header
request.setValue("application/json", forHTTPHeaderField: "Accept")
request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//4
let newTodoItem = ToDoResponseModel(userId: 300, title: "Urgent task 2", completed: true)
let jsonData = try JSONEncoder().encode(newTodoItem)
//5
request.httpBody = jsonData
//6
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        
        if let error = error {
            print("Error took place \(error)")
            return
        }
        guard let data = data else {return}

        do{//7
            let todoItemModel = try JSONDecoder().decode(ToDoResponseModel.self, from: data)
            print("Response data:\n \(todoItemModel)")
            print("todoItemModel Title: \(todoItemModel.title)")
            print("todoItemModel id: \(todoItemModel.id ?? 0)")
        }catch let jsonErr{
            print(jsonErr)
       }

 
}
//8
task.resume()
