

import UIKit

class OrganizationsViewController: UIViewController
{
    //var organizationData: OrganizationData?
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder)
    {
        super.init(coder: coder)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        let resource = OrganizationResource()
        let request = ApiRequest(resource: resource)
        
        request.execute {
            [weak self] organizationData in
            print(organizationData)
            //self?.organizationData = organizationData


        }
    }


}

