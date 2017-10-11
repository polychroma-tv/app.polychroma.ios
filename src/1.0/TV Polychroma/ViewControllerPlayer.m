//
//  ViewControllerPlayer.m
//  TV Polychroma
//

#import "ViewControllerPlayer.h"

@implementation ViewControllerPlayer

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[self configureNavigationBarAnimated:animated];
}

- (void)configureNavigationBarAnimated:(BOOL)animated {
	[self.navigationController setNavigationBarHidden:YES animated:animated];
}

@end
