import UIKit

class RestaurantDetailViewController: UIViewController {

    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeLocation: UILabel!
    
    var restaurantImageName = ""
    var restaurantName = ""
    var restaurantType = ""
    var restaurantLocation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        restaurantImageView.image = UIImage(named: restaurantImageName)
        
        nameLabel.text = restaurantName
        locationLabel.text = restaurantLocation
        typeLocation.text = restaurantType
    }
    
}
