import UIKit

class RestaurantTableViewController: UITableViewController {
    var restaurants:[Restaurant] = [
        Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "Hong Kong", image: "cafedeadend", isFavorite: false),
        Restaurant(name: "Homei", type: "Cafe", location: "Hong Kong", image: "homei", isFavorite: false),
        Restaurant(name: "Teakha", type: "Tea House", location: "Hong Kong", image: "teakha", isFavorite: false),
        Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Hong Kong", image: "cafeloisl", isFavorite: false),
        Restaurant(name: "Petite Oyster", type: "French", location: "Hong Kong", image: "petiteoyster", isFavorite: false),
        Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Hong Kong", image: "forkee", isFavorite: false),
        Restaurant(name: "Po's Atelier", type: "Bakery", location: "Hong Kong", image: "posatelier", isFavorite: false),
        Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "Sydney", image: "bourkestreetbakery", isFavorite: false),
        Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "Sydney", image: "haigh", isFavorite: false),
        Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Sydney", image: "palomino", isFavorite: false),
        Restaurant(name: "Upstate", type: "American", location: "New York", image: "upstate", isFavorite: false),
        Restaurant(name: "Traif", type: "American", location: "New York", image: "traif", isFavorite: false),
        Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "New York", image: "graham", isFavorite: false),
        Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "New York", image: "waffleandwolf", isFavorite: false),
        Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "New York", image: "fiveleaves", isFavorite: false),
        Restaurant(name: "Cafe Lore", type: "Latin American", location: "New York", image: "cafelore", isFavorite: false),
        Restaurant(name: "Confessional", type: "Spanish", location: "New York", image: "confessional", isFavorite: false),
        Restaurant(name: "Barrafina", type: "Spanish", location: "London", image: "barrafina", isFavorite: false),
        Restaurant(name: "Donostia", type: "Spanish", location: "London", image: "donostia", isFavorite: false),
        Restaurant(name: "Royal Oak", type: "British", location: "London", image: "royaloak", isFavorite: false),
        Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "London", image: "cask", isFavorite: false)
    ]
    
    lazy var dataSource = configureDataSource()
    
    // MARK: - View controller life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
        tableView.separatorStyle = .none
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Restaurant>()
        snapshot.appendSections([.all])
        snapshot.appendItems(restaurants, toSection: .all)
        
        dataSource.apply(snapshot, animatingDifferences: false)
        
        tableView.cellLayoutMarginsFollowReadableWidth = true
    }

    // MARK: - UITableView Diffable Data Source
    
    func configureDataSource() -> UITableViewDiffableDataSource<Section, Restaurant> {
        let cellIdentier = "datacell"
        
        let dataSource = RestaurantDiffableDataSource(
            tableView: tableView,
            cellProvider: { tableView, indexPath, restaurant in
                let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentier, for: indexPath) as! RestaurantTableViewCell
                cell.nameLabel.text = restaurant.name
                cell.locationLabel.text = restaurant.location
                cell.typeLabel.text = restaurant.type
                cell.thumbnailImageView.image = UIImage(named: restaurant.image)
                cell.favoriteImageView.isHidden = restaurant.isFavorite ? false : true
                
                return cell
            }
        )
        
        return dataSource
    }
    
    // MARK: - UITableViewDelegate Protocol
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Create an option menu as an action sheet
        let optionMenu = UIAlertController(title: nil, message: "What do you want to do?", preferredStyle: .actionSheet)
        
        if let popoverController = optionMenu.popoverPresentationController {
            if let cell = tableView.cellForRow(at: indexPath) {
                popoverController.sourceView = cell
                popoverController.sourceRect = cell.bounds
            }
        }
        
        // Add actions to the menu
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        optionMenu.addAction(cancelAction)
        
        // Add "Reserve a table" action
        
        let reserveActionHandler = { (action:UIAlertAction!) -> Void in
            
            let alertMessage = UIAlertController(title: "Not available yet", message: "Sorry, this feature is not available yet. Please retry later.", preferredStyle: .alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertMessage, animated: true, completion: nil)
            
        }

        let reserveAction = UIAlertAction(title: "Reserve a table", style: .default, handler: reserveActionHandler)
        optionMenu.addAction(reserveAction)
        
        // Mark as favorite action
        
        let favoriteActionTitle = self.restaurants[indexPath.row].isFavorite ? "Remove from favorites" : "Mark as favorite"
        let favoriteAction = UIAlertAction(title: favoriteActionTitle, style: .default, handler: {
            (action:UIAlertAction!) -> Void in

            let cell = tableView.cellForRow(at: indexPath) as! RestaurantTableViewCell

            cell.favoriteImageView.isHidden = self.restaurants[indexPath.row].isFavorite
            
            self.restaurants[indexPath.row].isFavorite = self.restaurants[indexPath.row].isFavorite ? false : true

        })
        optionMenu.addAction(favoriteAction)
        
        // Display the menu
        present(optionMenu, animated: true, completion: nil)
        
        // Deselect the row
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        guard let restaurant = self.dataSource.itemIdentifier(for: indexPath) else {
            return UISwipeActionsConfiguration()
        }
        
        // MARK: - Delete Action
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { action, sourceView, completionHandler in
            var snapshot = self.dataSource.snapshot()
            snapshot.deleteItems([restaurant])
            self.dataSource.apply(snapshot, animatingDifferences: true)
            
            // completionHandler
            completionHandler(true)
        }
        
        // MARK: - Share Action
        let shareAction = UIContextualAction(style: .normal, title: "Share") { action, sourceView, completionHandler in
            let defaultText = "Just checking in at \(restaurant.name)"
            
            let activiyController: UIActivityViewController
            
            if let imageToShare = UIImage(named: restaurant.image) {
                activiyController = UIActivityViewController(activityItems: [defaultText, imageToShare], applicationActivities: nil)
            } else {
                activiyController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            }
            
            // show tooltip on iPad
            if let popoverController = activiyController.popoverPresentationController {
                if let cell = tableView.cellForRow(at: indexPath) {
                    popoverController.sourceView = cell
                    popoverController.sourceRect = cell.bounds
                }
            }
            
            self.present(activiyController, animated: true, completion: nil)
            completionHandler(true)
        }
        
        deleteAction.backgroundColor = UIColor.systemRed
        deleteAction.image = UIImage(systemName: "trash")
        
        shareAction.backgroundColor = UIColor(red: 254.0/255, green: 149.0/255, blue: 38.0/255, alpha: 1.0)
        shareAction.image = UIImage(systemName: "square.and.arrow.up")
        
        // Configure both actions as swipe action
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
     
        return swipeConfiguration
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        // MARK: - Favorite Action
        let favoriteAction = UIContextualAction(style: .destructive, title: "") { action, sourceView, completionHandler in
            let cell = tableView.cellForRow(at: indexPath) as! RestaurantTableViewCell
            cell.favoriteImageView.isHidden = self.restaurants[indexPath.row].isFavorite
            self.restaurants[indexPath.row].isFavorite = self.restaurants[indexPath.row].isFavorite ? false : true
            
            completionHandler(true)
        }
        
        // configure swipe
        favoriteAction.backgroundColor = UIColor.systemYellow
        favoriteAction.image = UIImage(systemName: self.restaurants[indexPath.row].isFavorite ? "heart.slash.fill" : "heart.fill")
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [favoriteAction])
        
        return swipeConfiguration
    }
}
