//
//  DetailViewController.m
//  
//
//  Created by jonathan thornburg on 7/14/15.
//
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWithTrail];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateWithTrail
{
    if (self.trail.directions == (id)[NSNull null]) {
        self.textView2.text = @"Sorry, no directions available for this ride.";
    }else{
        self.textView2.text = self.trail.directions;
    }
    
}
//- (IBAction)mapItButtonTapped:(id)sender {
//    
//    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://maps.apple.com/?ssl=%f,%f", self.trail.latitude, self.trail.longitude]];
//    [[UIApplication sharedApplication] openURL:url];
//    
//    double latitude = self.trail.latitude;
//    double longitude = self.trail.longitude;
//    
//    MKPlacemark *placeMark = [[MKPlacemark alloc] initWithCoordinate:<#(CLLocationCoordinate2D)#> addressDictionary:<#(NSDictionary *)#>]
//}

@end
