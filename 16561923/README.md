16561923
======

The color of a minimal style search bar is changed upon focus when used with a search display controller and the color of the navigation bar has been set

<img src="https://raw.github.com/paulyoung/radars/master/16561923/screenshot.png" alt="Screenshot" width="320" height=="480" />

## Summary:
When using a UISearchBar in conjunction with a UISearchDisplayController, setting the `searchBarStyle` to `UISearchBarStyleMinimal` changes the color of the search bar to black if the `barTintColor` property of the navigation bar has been set to any color.

## Steps to Reproduce:
1. Create a UITableViewController subclass.
2. In an app delegate's `-application:didFinishLaunchingWithOptions:` method, create a UINavigationController instance via `-initWIthRootViewController:`, passing in an instance of the table view controller subclass as the root view controller.
3. Set the `barTintColor` property of the navigation controller's navigation bar to any color.
4. Set the `rootViewController` property of the window to the navigation controller instance.
5. Inside the table view controller subclass's init method, create a UISearchBar instance.
6. Set the `searchBarStyle` property of the search bar to `UISearchBarStyleMinimal`
7. Set the `barTintColor` of the search bar to any color other than black.
8. Send the `sizeToFit` message to the search bar.
9. Set the table view controller's `tableView.tableHeaderView` property to the search bar, or otherwise add the search bar to the view controller's view.
10. Create an UISearchDisplayController instance via `-initWithSearchBar:contentsController`, passing in the search bar and `self` respectively.
11. Build and run the project.
12. Tap the search bar.

## Expected Results:
The color of the search bar would be the color set in step 7.

## Actual Results:
The color of the search bar is black.

## Version:
iOS 7.1

## Notes:
A workaround for the problem is to implement the `-searchBarTextDidBeginEditing:` and `searchBarTextDidEndEditing` methods of UISearchBarDelegate and set the search bar style to `UISearchBarStyleDefault` when editing begins, and set it back to `UISearchBarStyleMinimal` when editing ends.


## Attachments:
'SearchBarStyleMinimal.zip' was successfully uploaded.
