//
//  DetailViewController.h
//  
//
//  Created by jonathan thornburg on 7/14/15.
//
//

#import <UIKit/UIKit.h>
#import "Trail.h"
#define IS_OS_8_OR_LATER ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
#import <MapKit/MapKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textView2;
@property (strong, nonatomic) Trail *trail;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
