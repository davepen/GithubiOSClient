import Foundation
import UIKit

class ImageRequest
{
    let url: URL
    
    init(url: URL)
    {
        self.url = url
    }
}

extension ImageRequest: NetworkRequest
{
    func decode(_ data: Data) -> UIImage?
    {
        return UIImage(data: data)
    }
    
    func execute(withCompletion completion: @escaping (UIImage?) -> Void)
    {
        load(url, withDecoder: decode, withCompletion: completion)
    }
}
