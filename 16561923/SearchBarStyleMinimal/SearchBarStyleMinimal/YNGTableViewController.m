//
//  YNGTableViewController.m
//  SearchBarStyleMinimal
//
//  Created by Paul Young on 4/8/14.
//  Copyright (c) 2014 Paul Young. All rights reserved.
//

#import "YNGTableViewController.h"


/* Uncomment all lines to enable the workaround. */


@interface YNGTableViewController ()

@property (nonatomic, strong) UISearchBar *searchBar;
@property (nonatomic, strong) UISearchDisplayController *searchController;

@end


//@interface YNGTableViewController () <UISearchBarDelegate>
//
//@end


@implementation YNGTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    
    if (self) {
        _searchBar = [[UISearchBar alloc] init];
        _searchBar.barTintColor = [UIColor greenColor];
        _searchBar.searchBarStyle = UISearchBarStyleMinimal;
//        _searchBar.delegate = self;
        [_searchBar sizeToFit];
        
        self.tableView.tableHeaderView = _searchBar;
        
        _searchController = [[UISearchDisplayController alloc] initWithSearchBar:_searchBar contentsController:self];
    }
    
    return self;
}


//#pragma mark - UISearchBarDelegate
//
//- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar
//{
//    self.searchBar.searchBarStyle = UISearchBarStyleDefault;
//}
//
//- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar
//{
//    self.searchBar.searchBarStyle = UISearchBarStyleMinimal;
//}

@end
