//
//  TrailController.h
//  TrailFinder
//
//  Created by jonathan thornburg on 7/14/15.
//  Copyright (c) 2015 jonathan thornburg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Trail.h"

@interface TrailController : NSObject

- (void)trailByCity:(NSString *)city completion:(void (^)(NSArray * trails))completion; 


@end
