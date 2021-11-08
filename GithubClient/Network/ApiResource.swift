import Foundation

protocol ApiResource
{
    associatedtype ModelType: Decodable
    
    var url: URL { get }
    var methodPath: String { get }
    var filter: String? { get }
}
 
extension ApiResource
{
    var url: URL
    {
        var components = URLComponents(string: "https://api.github.com")!
        components.path = methodPath
        return components.url!
    }
}
