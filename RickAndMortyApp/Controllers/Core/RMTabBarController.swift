import UIKit

final class RMTabBarController: UITabBarController {
		override func viewDidLoad() {
				super.viewDidLoad()
				setupTabs()
		}
		
		private func setupTabs() {
				let viewControllers: [(UIViewController, String, String)] = [
						(RMCharacterViewController(), "Characters", "person.fill"),
						(RMLocationViewController(), "Locations", "location.fill"),
						(RMEpisodeViewController(), "Episodes", "tv.fill"),
						(RMSettingsViewController(), "Settings", "gearshape.fill")
				]
				
				let navigationControllers = viewControllers.map { viewController, title, iconName in
						let navigationController = UINavigationController(rootViewController: viewController)
						navigationController.navigationBar.prefersLargeTitles = true
						viewController.navigationItem.largeTitleDisplayMode = .automatic
						navigationController.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: iconName), tag: 0)
						return navigationController
				}
				
				setViewControllers(navigationControllers, animated: false)
		}
}
