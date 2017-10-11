//
//  UIView+StatusBarBackgroundViewSystem6.m
//
//

#import "UIView+StatusBarBackgroundViewSystem6.h"
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)


@implementation UIView (StatusBarBackgroundViewSystem6)

- (void)setIsStatusBarBackgroundView:(BOOL)value {
	if (!value) return;
	
	// Hide the status bar background view on iOS 6.

	if (SYSTEM_VERSION_LESS_THAN(@"7.0")) {
		self.hidden = YES;
		UIView * contentView = self.superview.subviews.firstObject;
		CGRect frame = contentView.frame;
		frame.size.height = contentView.superview.frame.size.height;
		frame.origin.y = 0;
		contentView.frame = frame;
	}

}

@end
