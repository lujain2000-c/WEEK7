import SwiftUI
// GET, POST, PUT, DELETE, etc.
func makePOSTRequest() {
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
        return
    }
    
    var request = URLRequest(url: url)
    // method, body, headers
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    let body: [String: AnyHashable] = [
        "userId": 1,
        "title": "Hello From 10. Academy",
        "body": "The quick brown fox jumped over the lazy dog. The quick bronn fox jumped over the lazy dog. The quick brown fox jumped over the lazy dog."
    ]
    request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
    // Make the request
    let task = URLSession.shared.dataTask(with: request) {data, response, error in
        
        guard let data = data else {
            return
        }
        do {
           
            //let response = try JSONDecoder().decode(Response.self, from: data)
            let response = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            print(" SUCCESS: \(response)")
            
        }catch {
            print (error)
        }
    }
        task.resume ()
    }

  makePOSTRequest()
//struct Response: Codable{
//    let userId: Int
//    let id: Int
//    let title: String
//    let body: String
//}
