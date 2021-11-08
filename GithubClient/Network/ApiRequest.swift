import Foundation

class ApiRequest<Resource: ApiResource>
{
    let resource: Resource
    
    init(resource: Resource)
    {
        self.resource = resource
    }
}
 
extension ApiRequest: NetworkRequest
{

    func decode(_ data: Data) -> [Resource.ModelType]?
    {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        //decoder.dateDecodingStrategy = .secondsSince1970
        return try? decoder.decode([Resource.ModelType].self, from: data)
    }
    
    func execute(withCompletion completion: @escaping ([Resource.ModelType]?) -> Void)
    {
        load(resource.url, withDecoder: decode, withCompletion: completion)
    }
}
