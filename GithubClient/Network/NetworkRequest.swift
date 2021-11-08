import Foundation

protocol NetworkRequest: AnyObject
{
    associatedtype ModelType
    func decode(_ data: Data) -> ModelType?
    func execute(withCompletion completion: @escaping (ModelType?) -> Void)
}

extension NetworkRequest
{
    func load(_ url: URL,
              withDecoder decoder: @escaping (Data) -> ModelType?,
              withCompletion completion: @escaping (ModelType?) -> Void)
    {
        let task = URLSession.shared.dataTask(with: url)
        {
            (data, _ , _) -> Void in

            guard let data = data,
                let value = decoder(data)
                else
            {
                DispatchQueue.main.async { completion(nil) }
                return
            }
            
            DispatchQueue.main.async { completion(value) }
        }
        task.resume()
    }
}

       /*
       let path = Bundle.main.path(forResource: "Contents", ofType: "json")!
       let url = URL(fileURLWithPath: path)
       let data = try! Data(contentsOf: url)
       
       if let value = decode(data)
       {
           DispatchQueue.main.async { completion(value) }
       }
       else
       {
           DispatchQueue.main.async { completion(nil) }
       }*/
