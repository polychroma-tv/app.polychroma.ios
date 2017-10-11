//
//  ViewControllerPlayer.h
//  TV Polychroma
//

#import <UIKit/UIKit.h>
#import "LayoutResolver.h"
#import "NSStringPunycodeAdditions.h"
#import "WebViewDataProvider.h"

@interface ViewControllerPlayer : UIViewController <ViewControllerWithLayoutConstraints>

@property (nonatomic) BOOL prefersStatusBarHidden;
@property (nonatomic, strong) NSArray * layoutConstraints;
@property (nonatomic, strong) NSString * originalSceneID;
@property (weak, nonatomic) IBOutlet UIWebView * webView;
@property (weak, nonatomic) IBOutlet UIScrollView * contentView;
@property (weak, nonatomic) IBOutlet WebViewDataProvider * webViewDataProvider;

@end
