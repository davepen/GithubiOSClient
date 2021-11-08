
import Foundation

struct OrganizationResource: ApiResource
{
    typealias ModelType = Organization
    
    var methodPath: String
    {
        return "/organizations"
    }
    
    var filter: String?
    {
        nil
    }
}

